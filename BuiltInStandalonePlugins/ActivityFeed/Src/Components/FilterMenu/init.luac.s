PROTO_0:
        0 NEWTABLE                         R1 0 5
        2 LOADK                            R4 K0 ["FilterMenu"]
        3 LOADK                            R5 K1 ["FilterForNone"]
        4 NAMECALL                         R2 R0 K2 ["getText"]
        6 CALL                             R2 3 1
        7 LOADK                            R5 K0 ["FilterMenu"]
        8 LOADK                            R6 K3 ["FilterFor7days"]
        9 NAMECALL                         R3 R0 K2 ["getText"]
       11 CALL                             R3 3 1
       12 LOADK                            R6 K0 ["FilterMenu"]
       13 LOADK                            R7 K4 ["FilterFor30days"]
       14 NAMECALL                         R4 R0 K2 ["getText"]
       16 CALL                             R4 3 1
       17 LOADK                            R7 K0 ["FilterMenu"]
       18 LOADK                            R8 K5 ["FilterFor90days"]
       19 NAMECALL                         R5 R0 K2 ["getText"]
       21 CALL                             R5 3 1
       22 LOADK                            R8 K0 ["FilterMenu"]
       23 LOADK                            R9 K6 ["FilterFor365days"]
       24 NAMECALL                         R6 R0 K2 ["getText"]
       26 CALL                             R6 3 -1
       27 SETLIST                          R1 R2 -1 [1]
       29 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R2 K3 [{"JumpToDateIndex", "EventCategories", "Collaborators"}]
        1 LOADN                            R3 1
        2 SETTABLEKS                       R3 R2 K0 ["JumpToDateIndex"]
        4 NEWTABLE                         R3 0 0
        6 SETTABLEKS                       R3 R2 K1 ["EventCategories"]
        8 NEWTABLE                         R3 0 0
       10 SETTABLEKS                       R3 R2 K2 ["Collaborators"]
       12 GETIMPORT                        R3 K5 [pairs]
       14 GETUPVAL                         R4 0
       15 CALL                             R3 1 3
       16 FORGPREP_NEXT                    R3
       17 GETTABLEKS                       R8 R2 K1 ["EventCategories"]
       19 LOADB                            R9 1
       20 SETTABLE                         R9 R8 R7
       21 FORGLOOP                         R3 2 ; [-5]
       23 GETIMPORT                        R3 K5 [pairs]
       25 MOVE                             R4 R0
       26 CALL                             R3 1 3
       27 FORGPREP_NEXT                    R3
       28 GETTABLEKS                       R8 R2 K2 ["Collaborators"]
       30 LOADB                            R9 1
       31 SETTABLE                         R9 R8 R6
       32 FORGLOOP                         R3 2 ; [-5]
       34 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["JumpToDateIndex"]
        2 GETTABLEKS                       R3 R1 K0 ["JumpToDateIndex"]
        4 JUMPIFEQ                         R2 R3 ; [+3]
        6 LOADB                            R2 0
        7 RETURN                           R2 1
        8 GETIMPORT                        R2 K2 [pairs]
       10 GETTABLEKS                       R3 R0 K3 ["EventCategories"]
       12 CALL                             R2 1 3
       13 FORGPREP_NEXT                    R2
       14 GETTABLEKS                       R8 R1 K3 ["EventCategories"]
       16 GETTABLE                         R7 R8 R5
       17 JUMPIFEQ                         R7 R6 ; [+3]
       19 LOADB                            R7 0
       20 RETURN                           R7 1
       21 FORGLOOP                         R2 2 ; [-8]
       23 GETIMPORT                        R2 K2 [pairs]
       25 GETTABLEKS                       R3 R1 K3 ["EventCategories"]
       27 CALL                             R2 1 3
       28 FORGPREP_NEXT                    R2
       29 GETTABLEKS                       R8 R0 K3 ["EventCategories"]
       31 GETTABLE                         R7 R8 R5
       32 JUMPIFEQ                         R7 R6 ; [+3]
       34 LOADB                            R7 0
       35 RETURN                           R7 1
       36 FORGLOOP                         R2 2 ; [-8]
       38 GETIMPORT                        R2 K2 [pairs]
       40 GETTABLEKS                       R3 R0 K4 ["Collaborators"]
       42 CALL                             R2 1 3
       43 FORGPREP_NEXT                    R2
       44 GETTABLEKS                       R8 R1 K4 ["Collaborators"]
       46 GETTABLE                         R7 R8 R5
       47 JUMPIFEQ                         R7 R6 ; [+3]
       49 LOADB                            R7 0
       50 RETURN                           R7 1
       51 FORGLOOP                         R2 2 ; [-8]
       53 GETIMPORT                        R2 K2 [pairs]
       55 GETTABLEKS                       R3 R1 K4 ["Collaborators"]
       57 CALL                             R2 1 3
       58 FORGPREP_NEXT                    R2
       59 GETTABLEKS                       R8 R0 K4 ["Collaborators"]
       61 GETTABLE                         R7 R8 R5
       62 JUMPIFEQ                         R7 R6 ; [+3]
       64 LOADB                            R7 0
       65 RETURN                           R7 1
       66 FORGLOOP                         R2 2 ; [-8]
       68 LOADB                            R2 1
       69 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 MULK                             R2 R1 K0 [86400000]
        3 GETIMPORT                        R5 K3 [DateTime.now]
        5 CALL                             R5 0 1
        6 GETTABLEKS                       R4 R5 K4 ["UnixTimestampMillis"]
        8 SUB                              R3 R4 R2
        9 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_5:
        0 GETIMPORT                        R1 K1 [next]
        2 GETTABLEKS                       R2 R0 K2 ["placeId"]
        4 JUMPIFEQKNIL                     R2 ; [+8]
        6 GETTABLEKS                       R2 R0 K2 ["placeId"]
        8 GETUPVAL                         R3 0
        9 JUMPIFEQ                         R2 R3 ; [+3]
       11 LOADB                            R2 0
       12 RETURN                           R2 1
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R2 R3 K3 ["eventTypeToCategory"]
       16 GETTABLEKS                       R3 R0 K4 ["eventType"]
       18 CALL                             R2 1 1
       19 JUMPIFNOTEQKS                    R2 K5 ["Unknown"] ; [+3]
       21 LOADB                            R3 0
       22 RETURN                           R3 1
       23 LOADB                            R3 1
       24 MOVE                             R4 R1
       25 GETUPVAL                         R6 2
       26 GETTABLEKS                       R5 R6 K6 ["EventCategories"]
       28 CALL                             R4 1 1
       29 JUMPIFEQKNIL                     R4 ; [+5]
       31 GETUPVAL                         R5 2
       32 GETTABLEKS                       R4 R5 K6 ["EventCategories"]
       34 GETTABLE                         R3 R4 R2
       35 JUMPIFEQKNIL                     R3 ; [+4]
       37 JUMPIF                           R3 ; [+2]
       38 LOADB                            R4 0
       39 RETURN                           R4 1
       40 LOADB                            R4 1
       41 MOVE                             R5 R1
       42 GETUPVAL                         R7 2
       43 GETTABLEKS                       R6 R7 K7 ["Collaborators"]
       45 CALL                             R5 1 1
       46 JUMPIFEQKNIL                     R5 ; [+7]
       48 GETUPVAL                         R6 2
       49 GETTABLEKS                       R5 R6 K7 ["Collaborators"]
       51 GETTABLEKS                       R6 R0 K8 ["userId"]
       53 GETTABLE                         R4 R5 R6
       54 JUMPIFEQKNIL                     R4 ; [+2]
       56 RETURN                           R4 1
       57 LOADB                            R5 1
       58 RETURN                           R5 1

PROTO_6:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 NEWTABLE                         R2 0 0
        6 LOADNIL                          R3
        7 GETUPVAL                         R6 2
        8 GETTABLEKS                       R5 R6 K0 ["JumpToDateIndex"]
       10 GETUPVAL                         R6 3
       11 GETTABLE                         R4 R6 R5
       12 LOADB                            R5 0
       13 LOADB                            R6 0
       14 GETIMPORT                        R7 K2 [pairs]
       16 MOVE                             R8 R0
       17 CALL                             R7 1 3
       18 FORGPREP_NEXT                    R7
       19 GETTABLEKS                       R13 R11 K3 ["headerType"]
       21 GETUPVAL                         R15 4
       22 GETTABLEKS                       R14 R15 K4 ["Top"]
       24 JUMPIFNOTEQ                      R13 R14 ; [+24]
       26 GETUPVAL                         R16 5
       27 LOADK                            R18 K5 ["ActivityHistoryMain"]
       28 LOADK                            R19 K6 ["WithinNumDays"]
       29 NEWTABLE                         R20 1 0
       31 FASTCALL1                        TOSTRING R4 ; [+3]
       32 MOVE                             R22 R4
       33 GETIMPORT                        R21 K8 [tostring]
       35 CALL                             R21 1 1
       36 SETTABLEKS                       R21 R20 K9 ["numDays"]
       38 NAMECALL                         R16 R16 K10 ["getText"]
       40 CALL                             R16 4 -1
       41 FASTCALL                         TOSTRING ; [+2]
       42 GETIMPORT                        R15 K8 [tostring]
       44 CALL                             R15 -1 1
       45 MOVE                             R13 R15
       46 LOADK                            R14 K11 [" ↓"]
       47 CONCAT                           R12 R13 R14
       48 JUMP                             ; [+28]
       49 GETUPVAL                         R14 4
       50 GETTABLEKS                       R13 R14 K12 ["Middle"]
       52 JUMPIFNOT                        R13 ; [+23]
       53 GETUPVAL                         R16 5
       54 LOADK                            R18 K5 ["ActivityHistoryMain"]
       55 LOADK                            R19 K13 ["BeforeNumDays"]
       56 NEWTABLE                         R20 1 0
       58 FASTCALL1                        TOSTRING R4 ; [+3]
       59 MOVE                             R22 R4
       60 GETIMPORT                        R21 K8 [tostring]
       62 CALL                             R21 1 1
       63 SETTABLEKS                       R21 R20 K9 ["numDays"]
       65 NAMECALL                         R16 R16 K10 ["getText"]
       67 CALL                             R16 4 -1
       68 FASTCALL                         TOSTRING ; [+2]
       69 GETIMPORT                        R15 K8 [tostring]
       71 CALL                             R15 -1 1
       72 MOVE                             R13 R15
       73 LOADK                            R14 K11 [" ↓"]
       74 CONCAT                           R12 R13 R14
       75 JUMP                             ; [+1]
       76 LOADNIL                          R12
       77 MOVE                             R13 R1
       78 MOVE                             R14 R11
       79 CALL                             R13 1 1
       80 JUMPIFNOT                        R13 ; [+116]
       81 MOVE                             R14 R11
       82 GETTABLEKS                       R15 R11 K3 ["headerType"]
       84 JUMPIFNOT                        R15 ; [+64]
       85 GETTABLEKS                       R15 R11 K3 ["headerType"]
       87 GETUPVAL                         R17 4
       88 GETTABLEKS                       R16 R17 K12 ["Middle"]
       90 JUMPIFNOTEQ                      R15 R16 ; [+2]
       92 LOADB                            R5 1
       93 DUPTABLE                         R15 K23 [{"id", "eventType", "userId", "universeId", "placeId", "resourceId", "metaData", "createdUnixTimeMs", "headerText"}]
       94 GETTABLEKS                       R16 R11 K14 ["id"]
       96 SETTABLEKS                       R16 R15 K14 ["id"]
       98 GETTABLEKS                       R16 R11 K15 ["eventType"]
      100 SETTABLEKS                       R16 R15 K15 ["eventType"]
      102 GETTABLEKS                       R16 R11 K16 ["userId"]
      104 SETTABLEKS                       R16 R15 K16 ["userId"]
      106 GETTABLEKS                       R16 R11 K17 ["universeId"]
      108 SETTABLEKS                       R16 R15 K17 ["universeId"]
      110 GETTABLEKS                       R16 R11 K18 ["placeId"]
      112 SETTABLEKS                       R16 R15 K18 ["placeId"]
      114 GETTABLEKS                       R16 R11 K19 ["resourceId"]
      116 SETTABLEKS                       R16 R15 K19 ["resourceId"]
      118 GETTABLEKS                       R16 R11 K20 ["metaData"]
      120 SETTABLEKS                       R16 R15 K20 ["metaData"]
      122 GETTABLEKS                       R16 R11 K21 ["createdUnixTimeMs"]
      124 SETTABLEKS                       R16 R15 K21 ["createdUnixTimeMs"]
      126 SETTABLEKS                       R12 R15 K22 ["headerText"]
      128 MOVE                             R14 R15
      129 GETTABLEKS                       R15 R11 K3 ["headerType"]
      131 GETUPVAL                         R17 4
      132 GETTABLEKS                       R16 R17 K4 ["Top"]
      134 JUMPIFNOTEQ                      R15 R16 ; [+53]
      136 LENGTH                           R15 R2
      137 LOADN                            R16 0
      138 JUMPIFNOTLT                      R16 R15 ; [+49]
      140 GETTABLEN                        R15 R2 1
      141 GETTABLEKS                       R16 R14 K22 ["headerText"]
      143 SETTABLEKS                       R16 R15 K22 ["headerText"]
      145 LOADNIL                          R15
      146 SETTABLEKS                       R15 R14 K22 ["headerText"]
      148 JUMP                             ; [+39]
      149 JUMPIFNOT                        R3 ; [+38]
      150 JUMPIFNOT                        R6 ; [+1]
      151 LOADB                            R5 1
      152 DUPTABLE                         R15 K23 [{"id", "eventType", "userId", "universeId", "placeId", "resourceId", "metaData", "createdUnixTimeMs", "headerText"}]
      153 GETTABLEKS                       R16 R11 K14 ["id"]
      155 SETTABLEKS                       R16 R15 K14 ["id"]
      157 GETTABLEKS                       R16 R11 K15 ["eventType"]
      159 SETTABLEKS                       R16 R15 K15 ["eventType"]
      161 GETTABLEKS                       R16 R11 K16 ["userId"]
      163 SETTABLEKS                       R16 R15 K16 ["userId"]
      165 GETTABLEKS                       R16 R11 K17 ["universeId"]
      167 SETTABLEKS                       R16 R15 K17 ["universeId"]
      169 GETTABLEKS                       R16 R11 K18 ["placeId"]
      171 SETTABLEKS                       R16 R15 K18 ["placeId"]
      173 GETTABLEKS                       R16 R11 K19 ["resourceId"]
      175 SETTABLEKS                       R16 R15 K19 ["resourceId"]
      177 GETTABLEKS                       R16 R11 K20 ["metaData"]
      179 SETTABLEKS                       R16 R15 K20 ["metaData"]
      181 GETTABLEKS                       R16 R11 K21 ["createdUnixTimeMs"]
      183 SETTABLEKS                       R16 R15 K21 ["createdUnixTimeMs"]
      185 SETTABLEKS                       R3 R15 K22 ["headerText"]
      187 MOVE                             R14 R15
      188 LOADNIL                          R3
      189 FASTCALL2                        TABLE_INSERT R2 R14 ; [+5]
      191 MOVE                             R16 R2
      192 MOVE                             R17 R14
      193 GETIMPORT                        R15 K26 [table.insert]
      195 CALL                             R15 2 0
      196 JUMP                             ; [+12]
      197 GETTABLEKS                       R14 R11 K3 ["headerType"]
      199 JUMPIFNOT                        R14 ; [+9]
      200 GETTABLEKS                       R14 R11 K3 ["headerType"]
      202 GETUPVAL                         R16 4
      203 GETTABLEKS                       R15 R16 K12 ["Middle"]
      205 JUMPIFNOTEQ                      R14 R15 ; [+2]
      207 LOADB                            R6 1
      208 MOVE                             R3 R12
      209 FORGLOOP                         R7 2 ; [-191]
      211 MOVE                             R7 R4
      212 JUMPIFNOT                        R7 ; [+5]
      213 LOADB                            R7 0
      214 LOADN                            R8 0
      215 JUMPIFNOTLT                      R8 R4 ; [+2]
      217 NOT                              R7 R5
      218 JUMPIFNOT                        R7 ; [+62]
      219 LENGTH                           R8 R2
      220 LOADN                            R9 0
      221 JUMPIFNOTLT                      R9 R8 ; [+59]
      223 LENGTH                           R9 R2
      224 GETTABLE                         R8 R2 R9
      225 DUPTABLE                         R9 K28 [{"id", "eventType", "userId", "universeId", "placeId", "resourceId", "metaData", "createdUnixTimeMs", "headerText", "footerText"}]
      226 GETTABLEKS                       R10 R8 K14 ["id"]
      228 SETTABLEKS                       R10 R9 K14 ["id"]
      230 GETTABLEKS                       R10 R8 K15 ["eventType"]
      232 SETTABLEKS                       R10 R9 K15 ["eventType"]
      234 GETTABLEKS                       R10 R8 K16 ["userId"]
      236 SETTABLEKS                       R10 R9 K16 ["userId"]
      238 GETTABLEKS                       R10 R8 K17 ["universeId"]
      240 SETTABLEKS                       R10 R9 K17 ["universeId"]
      242 GETTABLEKS                       R10 R8 K18 ["placeId"]
      244 SETTABLEKS                       R10 R9 K18 ["placeId"]
      246 GETTABLEKS                       R10 R8 K19 ["resourceId"]
      248 SETTABLEKS                       R10 R9 K19 ["resourceId"]
      250 GETTABLEKS                       R10 R8 K20 ["metaData"]
      252 SETTABLEKS                       R10 R9 K20 ["metaData"]
      254 GETTABLEKS                       R10 R8 K21 ["createdUnixTimeMs"]
      256 SETTABLEKS                       R10 R9 K21 ["createdUnixTimeMs"]
      258 GETTABLEKS                       R10 R8 K22 ["headerText"]
      260 SETTABLEKS                       R10 R9 K22 ["headerText"]
      262 GETUPVAL                         R10 5
      263 LOADK                            R12 K5 ["ActivityHistoryMain"]
      264 LOADK                            R13 K29 ["NoEventsBeforeNumDays"]
      265 NEWTABLE                         R14 1 0
      267 FASTCALL1                        TOSTRING R4 ; [+3]
      268 MOVE                             R16 R4
      269 GETIMPORT                        R15 K8 [tostring]
      271 CALL                             R15 1 1
      272 SETTABLEKS                       R15 R14 K9 ["numDays"]
      274 NAMECALL                         R10 R10 K10 ["getText"]
      276 CALL                             R10 4 1
      277 SETTABLEKS                       R10 R9 K27 ["footerText"]
      279 LENGTH                           R10 R2
      280 SETTABLE                         R9 R2 R10
      281 RETURN                           R2 1

PROTO_7:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R2
        7 RETURN                           R3 1

PROTO_8:
        0 DUPTABLE                         R2 K3 [{"JumpToDateIndex", "Collaborators", "EventCategories"}]
        1 GETTABLEKS                       R4 R1 K0 ["JumpToDateIndex"]
        3 JUMPIFNOTEQKN                    R4 K4 [-1] ; [+4]
        5 GETTABLEKS                       R3 R0 K0 ["JumpToDateIndex"]
        7 JUMP                             ; [+2]
        8 GETTABLEKS                       R3 R1 K0 ["JumpToDateIndex"]
       10 SETTABLEKS                       R3 R2 K0 ["JumpToDateIndex"]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R4 R5 K5 ["Dictionary"]
       15 GETTABLEKS                       R3 R4 K6 ["join"]
       17 GETTABLEKS                       R4 R0 K1 ["Collaborators"]
       19 GETTABLEKS                       R5 R1 K1 ["Collaborators"]
       21 CALL                             R3 2 1
       22 SETTABLEKS                       R3 R2 K1 ["Collaborators"]
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R4 R5 K5 ["Dictionary"]
       27 GETTABLEKS                       R3 R4 K6 ["join"]
       29 GETTABLEKS                       R4 R0 K2 ["EventCategories"]
       31 GETTABLEKS                       R5 R1 K2 ["EventCategories"]
       33 CALL                             R3 2 1
       34 SETTABLEKS                       R3 R2 K2 ["EventCategories"]
       36 RETURN                           R2 1

PROTO_9:
        0 LOADK                            R3 K0 [""]
        1 NEWTABLE                         R4 0 0
        3 GETTABLEKS                       R5 R0 K1 ["JumpToDateIndex"]
        5 LOADN                            R6 1
        6 JUMPIFNOTLT                      R6 R5 ; [+38]
        8 MOVE                             R5 R3
        9 LOADK                            R12 K2 ["FilterMenu"]
       10 LOADK                            R13 K3 ["JumpToDate"]
       11 NAMECALL                         R10 R1 K4 ["getText"]
       13 CALL                             R10 3 1
       14 MOVE                             R6 R10
       15 LOADK                            R7 K5 [" <b>("]
       16 GETUPVAL                         R10 0
       17 MOVE                             R11 R1
       18 CALL                             R10 1 1
       19 GETTABLEKS                       R11 R0 K1 ["JumpToDateIndex"]
       21 GETTABLE                         R8 R10 R11
       22 LOADK                            R9 K6 [")</b>"]
       23 CONCAT                           R3 R5 R9
       24 LOADK                            R8 K7 ["<b>"]
       25 LOADK                            R14 K2 ["FilterMenu"]
       26 LOADK                            R15 K3 ["JumpToDate"]
       27 NAMECALL                         R12 R1 K4 ["getText"]
       29 CALL                             R12 3 1
       30 MOVE                             R9 R12
       31 LOADK                            R10 K8 ["</b>:<br/>"]
       32 GETUPVAL                         R12 0
       33 MOVE                             R13 R1
       34 CALL                             R12 1 1
       35 GETTABLEKS                       R13 R0 K1 ["JumpToDateIndex"]
       37 GETTABLE                         R11 R12 R13
       38 CONCAT                           R7 R8 R11
       39 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
       41 MOVE                             R6 R4
       42 GETIMPORT                        R5 K11 [table.insert]
       44 CALL                             R5 2 0
       45 LOADN                            R5 0
       46 LOADK                            R6 K0 [""]
       47 GETUPVAL                         R7 1
       48 MOVE                             R8 R1
       49 CALL                             R7 1 1
       50 LOADN                            R8 0
       51 GETIMPORT                        R9 K13 [pairs]
       53 GETTABLEKS                       R10 R0 K14 ["EventCategories"]
       55 CALL                             R9 1 3
       56 FORGPREP_NEXT                    R9
       57 GETTABLEKS                       R15 R0 K14 ["EventCategories"]
       59 GETTABLE                         R14 R15 R12
       60 JUMPIFNOT                        R14 ; [+11]
       61 LENGTH                           R14 R6
       62 LOADN                            R15 0
       63 JUMPIFNOTLT                      R15 R14 ; [+4]
       65 MOVE                             R14 R6
       66 LOADK                            R15 K15 [", "]
       67 CONCAT                           R6 R14 R15
       68 MOVE                             R14 R6
       69 GETTABLE                         R15 R7 R12
       70 CONCAT                           R6 R14 R15
       71 ADDK                             R5 R5 K16 [1]
       72 ADDK                             R8 R8 K16 [1]
       73 FORGLOOP                         R9 2 ; [-17]
       75 LOADN                            R9 0
       76 JUMPIFNOTLT                      R9 R8 ; [+37]
       78 JUMPIFNOTLT                      R5 R8 ; [+35]
       80 LENGTH                           R9 R3
       81 LOADN                            R10 0
       82 JUMPIFNOTLT                      R10 R9 ; [+4]
       84 MOVE                             R9 R3
       85 LOADK                            R10 K17 ["; "]
       86 CONCAT                           R3 R9 R10
       87 LOADK                            R16 K2 ["FilterMenu"]
       88 LOADK                            R17 K18 ["ByType"]
       89 NAMECALL                         R14 R1 K4 ["getText"]
       91 CALL                             R14 3 1
       92 MOVE                             R10 R14
       93 LOADK                            R11 K5 [" <b>("]
       94 MOVE                             R12 R5
       95 LOADK                            R13 K6 [")</b>"]
       96 CONCAT                           R9 R10 R13
       97 MOVE                             R10 R3
       98 MOVE                             R11 R9
       99 CONCAT                           R3 R10 R11
      100 LOADN                            R10 0
      101 JUMPIFNOTLT                      R10 R5 ; [+12]
      103 LOADK                            R13 K7 ["<b>"]
      104 MOVE                             R14 R9
      105 LOADK                            R15 K8 ["</b>:<br/>"]
      106 MOVE                             R16 R6
      107 CONCAT                           R12 R13 R16
      108 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
      110 MOVE                             R11 R4
      111 GETIMPORT                        R10 K11 [table.insert]
      113 CALL                             R10 2 0
      114 LOADN                            R9 0
      115 LOADN                            R10 0
      116 LOADK                            R11 K0 [""]
      117 GETIMPORT                        R12 K13 [pairs]
      119 GETTABLEKS                       R13 R0 K19 ["Collaborators"]
      121 CALL                             R12 1 3
      122 FORGPREP_NEXT                    R12
      123 GETTABLEKS                       R18 R0 K19 ["Collaborators"]
      125 GETTABLE                         R17 R18 R15
      126 JUMPIFNOT                        R17 ; [+11]
      127 LENGTH                           R17 R11
      128 LOADN                            R18 0
      129 JUMPIFNOTLT                      R18 R17 ; [+4]
      131 MOVE                             R17 R11
      132 LOADK                            R18 K15 [", "]
      133 CONCAT                           R11 R17 R18
      134 MOVE                             R17 R11
      135 GETTABLE                         R18 R2 R15
      136 CONCAT                           R11 R17 R18
      137 ADDK                             R9 R9 K16 [1]
      138 ADDK                             R10 R10 K16 [1]
      139 FORGLOOP                         R12 2 ; [-17]
      141 LOADN                            R12 0
      142 JUMPIFNOTLT                      R12 R10 ; [+37]
      144 JUMPIFNOTLT                      R9 R10 ; [+35]
      146 LENGTH                           R12 R3
      147 LOADN                            R13 0
      148 JUMPIFNOTLT                      R13 R12 ; [+4]
      150 MOVE                             R12 R3
      151 LOADK                            R13 K17 ["; "]
      152 CONCAT                           R3 R12 R13
      153 LOADK                            R19 K2 ["FilterMenu"]
      154 LOADK                            R20 K20 ["ByCollaborator"]
      155 NAMECALL                         R17 R1 K4 ["getText"]
      157 CALL                             R17 3 1
      158 MOVE                             R13 R17
      159 LOADK                            R14 K5 [" <b>("]
      160 MOVE                             R15 R9
      161 LOADK                            R16 K6 [")</b>"]
      162 CONCAT                           R12 R13 R16
      163 MOVE                             R13 R3
      164 MOVE                             R14 R12
      165 CONCAT                           R3 R13 R14
      166 LOADN                            R13 0
      167 JUMPIFNOTLT                      R13 R9 ; [+12]
      169 LOADK                            R16 K7 ["<b>"]
      170 MOVE                             R17 R12
      171 LOADK                            R18 K8 ["</b>:<br/>"]
      172 MOVE                             R19 R11
      173 CONCAT                           R15 R16 R19
      174 FASTCALL2                        TABLE_INSERT R4 R15 ; [+4]
      176 MOVE                             R14 R4
      177 GETIMPORT                        R13 K11 [table.insert]
      179 CALL                             R13 2 0
      180 DUPTABLE                         R12 K23 [{"shortString", "descriptiveStrings"}]
      181 SETTABLEKS                       R3 R12 K21 ["shortString"]
      183 SETTABLEKS                       R4 R12 K22 ["descriptiveStrings"]
      185 RETURN                           R12 1

PROTO_10:
        0 GETIMPORT                        R0 K1 [pairs]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R1 R3 K2 ["checkboxes"]
        5 CALL                             R0 1 3
        6 FORGPREP_NEXT                    R0
        7 JUMPIF                           R4 ; [+2]
        8 LOADB                            R5 0
        9 RETURN                           R5 1
       10 FORGLOOP                         R0 2 ; [-4]
       12 LOADB                            R0 1
       13 RETURN                           R0 1

PROTO_11:
        0 NEWTABLE                         R0 0 0
        2 GETIMPORT                        R1 K1 [pairs]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R2 R4 K2 ["rows"]
        7 CALL                             R1 1 3
        8 FORGPREP_NEXT                    R1
        9 GETUPVAL                         R7 1
       10 NOT                              R6 R7
       11 SETTABLE                         R6 R0 R4
       12 FORGLOOP                         R1 2 ; [-4]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R1 R2 K3 ["onChange"]
       17 MOVE                             R2 R0
       18 CALL                             R1 1 0
       19 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["ordering"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+11]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K1 ["Dictionary"]
        8 GETTABLEKS                       R0 R1 K2 ["keys"]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R1 R2 K3 ["rows"]
       13 CALL                             R0 1 -1
       14 RETURN                           R0 -1
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R0 R1 K0 ["ordering"]
       18 RETURN                           R0 1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R0 R1 K1 ["join"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K2 ["checkboxes"]
        8 NEWTABLE                         R2 1 0
       10 GETUPVAL                         R3 2
       11 LOADB                            R5 1
       12 GETUPVAL                         R8 1
       13 GETTABLEKS                       R7 R8 K2 ["checkboxes"]
       15 GETUPVAL                         R8 2
       16 GETTABLE                         R6 R7 R8
       17 JUMPIFEQKNIL                     R6 ; [+6]
       19 GETUPVAL                         R7 1
       20 GETTABLEKS                       R6 R7 K2 ["checkboxes"]
       22 GETUPVAL                         R7 2
       23 GETTABLE                         R5 R6 R7
       24 NOT                              R4 R5
       25 SETTABLE                         R4 R2 R3
       26 CALL                             R0 2 1
       27 GETUPVAL                         R2 1
       28 GETTABLEKS                       R1 R2 K3 ["onChange"]
       30 MOVE                             R2 R0
       31 CALL                             R1 1 0
       32 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["useMemo"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R0
        9 NEWTABLE                         R4 0 1
       11 GETTABLEKS                       R5 R0 K2 ["checkboxes"]
       13 SETLIST                          R4 R5 1 [1]
       15 CALL                             R2 2 1
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R3 R4 K3 ["useCallback"]
       19 NEWCLOSURE                       R4 P1
       20 CAPTURE                          VAL R0
       21 CAPTURE                          VAL R2
       22 NEWTABLE                         R5 0 1
       24 MOVE                             R6 R2
       25 SETLIST                          R5 R6 1 [1]
       27 CALL                             R3 2 1
       28 GETUPVAL                         R5 1
       29 GETTABLEKS                       R4 R5 K1 ["useMemo"]
       31 NEWCLOSURE                       R5 P2
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U2
       34 NEWTABLE                         R6 0 2
       36 GETTABLEKS                       R7 R0 K4 ["ordering"]
       38 GETTABLEKS                       R8 R0 K5 ["rows"]
       40 SETLIST                          R6 R7 2 [1]
       42 CALL                             R4 2 1
       43 GETUPVAL                         R6 1
       44 GETTABLEKS                       R5 R6 K6 ["createElement"]
       46 LOADK                            R6 K7 ["Frame"]
       47 NEWTABLE                         R7 2 0
       49 GETUPVAL                         R9 1
       50 GETTABLEKS                       R8 R9 K8 ["Tag"]
       52 GETUPVAL                         R9 3
       53 LOADK                            R10 K9 ["X-Row"]
       54 LOADK                            R11 K10 ["Component-FilterMenu-By"]
       55 CALL                             R9 2 1
       56 SETTABLE                         R9 R7 R8
       57 GETUPVAL                         R8 4
       58 NAMECALL                         R8 R8 K11 ["getNextOrder"]
       60 CALL                             R8 1 1
       61 SETTABLEKS                       R8 R7 K12 ["LayoutOrder"]
       63 DUPTABLE                         R8 K15 [{"Label", "SelectAll"}]
       64 GETUPVAL                         R10 1
       65 GETTABLEKS                       R9 R10 K6 ["createElement"]
       67 LOADK                            R10 K16 ["TextLabel"]
       68 DUPTABLE                         R11 K18 [{"Text", "LayoutOrder"}]
       69 GETTABLEKS                       R12 R0 K19 ["title"]
       71 SETTABLEKS                       R12 R11 K17 ["Text"]
       73 GETUPVAL                         R12 4
       74 NAMECALL                         R12 R12 K11 ["getNextOrder"]
       76 CALL                             R12 1 1
       77 SETTABLEKS                       R12 R11 K12 ["LayoutOrder"]
       79 CALL                             R9 2 1
       80 SETTABLEKS                       R9 R8 K13 ["Label"]
       82 GETUPVAL                         R10 1
       83 GETTABLEKS                       R9 R10 K6 ["createElement"]
       85 LOADK                            R10 K20 ["TextButton"]
       86 NEWTABLE                         R11 4 0
       88 GETUPVAL                         R13 1
       89 GETTABLEKS                       R12 R13 K8 ["Tag"]
       91 GETUPVAL                         R13 3
       92 LOADK                            R14 K21 ["Component-OptionButton"]
       93 CALL                             R13 1 1
       94 SETTABLE                         R13 R11 R12
       95 JUMPIFNOT                        R2 ; [+6]
       96 LOADK                            R14 K22 ["FilterMenu"]
       97 LOADK                            R15 K23 ["UnselectAll"]
       98 NAMECALL                         R12 R1 K24 ["getText"]
      100 CALL                             R12 3 1
      101 JUMPIF                           R12 ; [+5]
      102 LOADK                            R14 K22 ["FilterMenu"]
      103 LOADK                            R15 K14 ["SelectAll"]
      104 NAMECALL                         R12 R1 K24 ["getText"]
      106 CALL                             R12 3 1
      107 SETTABLEKS                       R12 R11 K17 ["Text"]
      109 GETUPVAL                         R12 4
      110 NAMECALL                         R12 R12 K11 ["getNextOrder"]
      112 CALL                             R12 1 1
      113 SETTABLEKS                       R12 R11 K12 ["LayoutOrder"]
      115 GETUPVAL                         R14 1
      116 GETTABLEKS                       R13 R14 K25 ["Event"]
      118 GETTABLEKS                       R12 R13 K26 ["Activated"]
      120 SETTABLE                         R3 R11 R12
      121 CALL                             R9 2 1
      122 SETTABLEKS                       R9 R8 K14 ["SelectAll"]
      124 CALL                             R5 3 1
      125 NEWTABLE                         R6 0 0
      127 LOADN                            R7 1
      128 GETIMPORT                        R8 K28 [ipairs]
      130 MOVE                             R9 R4
      131 CALL                             R8 1 3
      132 FORGPREP_INEXT                   R8
      133 GETTABLEKS                       R14 R0 K5 ["rows"]
      135 GETTABLE                         R13 R14 R12
      136 JUMPIFEQKNIL                     R13 ; [+104]
      138 ADDK                             R7 R7 K29 [1]
      139 NEWCLOSURE                       R14 P3
      140 CAPTURE                          UPVAL U2
      141 CAPTURE                          VAL R0
      142 CAPTURE                          VAL R12
      143 GETUPVAL                         R16 1
      144 GETTABLEKS                       R15 R16 K6 ["createElement"]
      146 LOADK                            R16 K7 ["Frame"]
      147 NEWTABLE                         R17 2 0
      149 GETUPVAL                         R19 1
      150 GETTABLEKS                       R18 R19 K8 ["Tag"]
      152 GETUPVAL                         R19 3
      153 LOADK                            R20 K9 ["X-Row"]
      154 LOADK                            R21 K30 ["Component-FilterMenu-CheckBoxes"]
      155 LOADK                            R22 K31 ["CX-Invisible"]
      156 CALL                             R19 3 1
      157 SETTABLE                         R19 R17 R18
      158 GETUPVAL                         R18 4
      159 NAMECALL                         R18 R18 K11 ["getNextOrder"]
      161 CALL                             R18 1 1
      162 SETTABLEKS                       R18 R17 K12 ["LayoutOrder"]
      164 DUPTABLE                         R18 K33 [{"CheckboxContainer", "Text"}]
      165 GETUPVAL                         R20 1
      166 GETTABLEKS                       R19 R20 K6 ["createElement"]
      168 LOADK                            R20 K7 ["Frame"]
      169 NEWTABLE                         R21 1 0
      171 GETUPVAL                         R23 1
      172 GETTABLEKS                       R22 R23 K8 ["Tag"]
      174 GETUPVAL                         R23 3
      175 LOADK                            R24 K31 ["CX-Invisible"]
      176 CALL                             R23 1 1
      177 SETTABLE                         R23 R21 R22
      178 DUPTABLE                         R22 K35 [{"Checkbox"}]
      179 GETUPVAL                         R24 1
      180 GETTABLEKS                       R23 R24 K6 ["createElement"]
      182 GETUPVAL                         R24 5
      183 DUPTABLE                         R25 K38 [{"LayoutOrder", "Checked", "OnClick"}]
      184 GETUPVAL                         R26 4
      185 NAMECALL                         R26 R26 K11 ["getNextOrder"]
      187 CALL                             R26 1 1
      188 SETTABLEKS                       R26 R25 K12 ["LayoutOrder"]
      190 LOADB                            R26 1
      191 GETTABLEKS                       R28 R0 K2 ["checkboxes"]
      193 GETTABLE                         R27 R28 R12
      194 JUMPIFEQKNIL                     R27 ; [+4]
      196 GETTABLEKS                       R27 R0 K2 ["checkboxes"]
      198 GETTABLE                         R26 R27 R12
      199 SETTABLEKS                       R26 R25 K36 ["Checked"]
      201 SETTABLEKS                       R14 R25 K37 ["OnClick"]
      203 CALL                             R23 2 1
      204 SETTABLEKS                       R23 R22 K34 ["Checkbox"]
      206 CALL                             R19 3 1
      207 SETTABLEKS                       R19 R18 K32 ["CheckboxContainer"]
      209 GETUPVAL                         R20 1
      210 GETTABLEKS                       R19 R20 K6 ["createElement"]
      212 LOADK                            R20 K20 ["TextButton"]
      213 NEWTABLE                         R21 4 0
      215 GETUPVAL                         R23 1
      216 GETTABLEKS                       R22 R23 K8 ["Tag"]
      218 GETUPVAL                         R23 3
      219 LOADK                            R24 K39 ["Component-CheckboxButton"]
      220 CALL                             R23 1 1
      221 SETTABLE                         R23 R21 R22
      222 SETTABLEKS                       R13 R21 K17 ["Text"]
      224 GETUPVAL                         R22 4
      225 NAMECALL                         R22 R22 K11 ["getNextOrder"]
      227 CALL                             R22 1 1
      228 SETTABLEKS                       R22 R21 K12 ["LayoutOrder"]
      230 GETUPVAL                         R24 1
      231 GETTABLEKS                       R23 R24 K25 ["Event"]
      233 GETTABLEKS                       R22 R23 K26 ["Activated"]
      235 SETTABLE                         R14 R21 R22
      236 CALL                             R19 2 1
      237 SETTABLEKS                       R19 R18 K17 ["Text"]
      239 CALL                             R15 3 1
      240 SETTABLE                         R15 R6 R7
      241 FORGLOOP                         R8 2 [inext] ; [-109]
      243 GETUPVAL                         R9 1
      244 GETTABLEKS                       R8 R9 K6 ["createElement"]
      246 LOADK                            R9 K7 ["Frame"]
      247 NEWTABLE                         R10 4 0
      249 GETUPVAL                         R12 1
      250 GETTABLEKS                       R11 R12 K8 ["Tag"]
      252 GETUPVAL                         R12 3
      253 LOADK                            R13 K40 ["X-Column"]
      254 LOADK                            R14 K31 ["CX-Invisible"]
      255 CALL                             R12 2 1
      256 SETTABLE                         R12 R10 R11
      257 GETIMPORT                        R11 K43 [UDim2.new]
      259 LOADN                            R12 1
      260 LOADN                            R13 0
      261 LOADN                            R14 0
      262 GETUPVAL                         R18 6
      263 GETTABLEKS                       R17 R18 K44 ["checkBoxRowHeight"]
      265 SUBK                             R18 R7 K29 [1]
      266 MUL                              R16 R17 R18
      267 GETUPVAL                         R18 6
      268 GETTABLEKS                       R17 R18 K45 ["byHeight"]
      270 ADD                              R15 R16 R17
      271 CALL                             R11 4 1
      272 SETTABLEKS                       R11 R10 K46 ["Size"]
      274 GETTABLEKS                       R11 R0 K12 ["LayoutOrder"]
      276 SETTABLEKS                       R11 R10 K12 ["LayoutOrder"]
      278 GETUPVAL                         R13 2
      279 GETTABLEKS                       R12 R13 K47 ["Dictionary"]
      281 GETTABLEKS                       R11 R12 K48 ["join"]
      283 NEWTABLE                         R12 0 1
      285 MOVE                             R13 R5
      286 SETLIST                          R12 R13 1 [1]
      288 MOVE                             R13 R6
      289 CALL                             R11 2 -1
      290 CALL                             R8 -1 -1
      291 RETURN                           R8 -1

PROTO_15:
        0 LOADN                            R0 0
        1 GETIMPORT                        R1 K1 [pairs]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R2 R4 K2 ["collaborators"]
        6 CALL                             R1 1 3
        7 FORGPREP_NEXT                    R1
        8 ADDK                             R0 R0 K3 [1]
        9 FORGLOOP                         R1 2 ; [-2]
       11 RETURN                           R0 1

PROTO_16:
        0 NEWTABLE                         R0 0 0
        2 GETIMPORT                        R1 K1 [pairs]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R2 R4 K2 ["collaborators"]
        7 CALL                             R1 1 3
        8 FORGPREP_NEXT                    R1
        9 SETTABLE                         R5 R0 R4
       10 FORGLOOP                         R1 2 ; [-2]
       12 RETURN                           R0 1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onClear"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["onClear"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onApply"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["onApply"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["onChange"]
        3 JUMPIFNOT                        R1 ; [+15]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["onChange"]
        7 DUPTABLE                         R2 K4 [{"JumpToDateIndex", "EventCategories", "Collaborators"}]
        8 SETTABLEKS                       R0 R2 K1 ["JumpToDateIndex"]
       10 NEWTABLE                         R3 0 0
       12 SETTABLEKS                       R3 R2 K2 ["EventCategories"]
       14 NEWTABLE                         R3 0 0
       16 SETTABLEKS                       R3 R2 K3 ["Collaborators"]
       18 CALL                             R1 1 0
       19 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["onChange"]
        3 JUMPIFNOT                        R1 ; [+15]
        4 DUPTABLE                         R1 K4 [{"JumpToDateIndex", "EventCategories", "Collaborators"}]
        5 LOADN                            R2 255
        6 SETTABLEKS                       R2 R1 K1 ["JumpToDateIndex"]
        8 SETTABLEKS                       R0 R1 K2 ["EventCategories"]
       10 NEWTABLE                         R2 0 0
       12 SETTABLEKS                       R2 R1 K3 ["Collaborators"]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K0 ["onChange"]
       17 MOVE                             R3 R1
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["onChange"]
        3 JUMPIFNOT                        R1 ; [+14]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["onChange"]
        7 DUPTABLE                         R2 K4 [{"JumpToDateIndex", "EventCategories", "Collaborators"}]
        8 LOADN                            R3 255
        9 SETTABLEKS                       R3 R2 K1 ["JumpToDateIndex"]
       11 NEWTABLE                         R3 0 0
       13 SETTABLEKS                       R3 R2 K2 ["EventCategories"]
       15 SETTABLEKS                       R0 R2 K3 ["Collaborators"]
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["useMemo"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R0
        9 NEWTABLE                         R4 0 1
       11 GETTABLEKS                       R5 R0 K2 ["collaborators"]
       13 SETLIST                          R4 R5 1 [1]
       15 CALL                             R2 2 1
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R3 R4 K1 ["useMemo"]
       19 NEWCLOSURE                       R4 P1
       20 CAPTURE                          VAL R0
       21 NEWTABLE                         R5 0 1
       23 GETTABLEKS                       R6 R0 K2 ["collaborators"]
       25 SETLIST                          R5 R6 1 [1]
       27 CALL                             R3 2 1
       28 GETUPVAL                         R5 1
       29 GETTABLEKS                       R4 R5 K3 ["createElement"]
       31 LOADK                            R5 K4 ["Frame"]
       32 NEWTABLE                         R6 1 0
       34 GETUPVAL                         R8 1
       35 GETTABLEKS                       R7 R8 K5 ["Tag"]
       37 GETUPVAL                         R8 2
       38 LOADK                            R9 K6 ["Component-FilterMenu"]
       39 LOADK                            R10 K7 ["X-Column"]
       40 LOADK                            R11 K8 ["X-Fill"]
       41 CALL                             R8 3 1
       42 SETTABLE                         R8 R6 R7
       43 DUPTABLE                         R7 K12 [{"Header", "Divider", "Contents"}]
       44 GETUPVAL                         R9 1
       45 GETTABLEKS                       R8 R9 K3 ["createElement"]
       47 LOADK                            R9 K4 ["Frame"]
       48 NEWTABLE                         R10 2 0
       50 GETUPVAL                         R12 1
       51 GETTABLEKS                       R11 R12 K5 ["Tag"]
       53 GETUPVAL                         R12 2
       54 LOADK                            R13 K13 ["X-Row"]
       55 LOADK                            R14 K14 ["CX-Invisible"]
       56 CALL                             R12 2 1
       57 SETTABLE                         R12 R10 R11
       58 GETUPVAL                         R11 3
       59 NAMECALL                         R11 R11 K15 ["getNextOrder"]
       61 CALL                             R11 1 1
       62 SETTABLEKS                       R11 R10 K16 ["LayoutOrder"]
       64 DUPTABLE                         R11 K19 [{"Text", "Buttons"}]
       65 GETUPVAL                         R13 1
       66 GETTABLEKS                       R12 R13 K3 ["createElement"]
       68 LOADK                            R13 K20 ["TextLabel"]
       69 DUPTABLE                         R14 K21 [{"Text", "LayoutOrder"}]
       70 LOADK                            R17 K22 ["FilterMenu"]
       71 LOADK                            R18 K23 ["FilterEvents"]
       72 NAMECALL                         R15 R1 K24 ["getText"]
       74 CALL                             R15 3 1
       75 SETTABLEKS                       R15 R14 K17 ["Text"]
       77 GETUPVAL                         R15 3
       78 NAMECALL                         R15 R15 K15 ["getNextOrder"]
       80 CALL                             R15 1 1
       81 SETTABLEKS                       R15 R14 K16 ["LayoutOrder"]
       83 CALL                             R12 2 1
       84 SETTABLEKS                       R12 R11 K17 ["Text"]
       86 GETUPVAL                         R13 1
       87 GETTABLEKS                       R12 R13 K3 ["createElement"]
       89 LOADK                            R13 K4 ["Frame"]
       90 NEWTABLE                         R14 2 0
       92 GETUPVAL                         R16 1
       93 GETTABLEKS                       R15 R16 K5 ["Tag"]
       95 GETUPVAL                         R16 2
       96 LOADK                            R17 K13 ["X-Row"]
       97 LOADK                            R18 K25 ["X-Fit"]
       98 LOADK                            R19 K14 ["CX-Invisible"]
       99 CALL                             R16 3 1
      100 SETTABLE                         R16 R14 R15
      101 GETUPVAL                         R15 3
      102 NAMECALL                         R15 R15 K15 ["getNextOrder"]
      104 CALL                             R15 1 1
      105 SETTABLEKS                       R15 R14 K16 ["LayoutOrder"]
      107 DUPTABLE                         R15 K28 [{"Clear", "Apply"}]
      108 GETUPVAL                         R17 1
      109 GETTABLEKS                       R16 R17 K3 ["createElement"]
      111 LOADK                            R17 K29 ["TextButton"]
      112 NEWTABLE                         R18 4 0
      114 GETUPVAL                         R20 1
      115 GETTABLEKS                       R19 R20 K5 ["Tag"]
      117 GETUPVAL                         R20 2
      118 LOADK                            R21 K30 ["Component-OptionButton"]
      119 LOADK                            R22 K25 ["X-Fit"]
      120 CALL                             R20 2 1
      121 SETTABLE                         R20 R18 R19
      122 LOADK                            R21 K22 ["FilterMenu"]
      123 LOADK                            R22 K26 ["Clear"]
      124 NAMECALL                         R19 R1 K24 ["getText"]
      126 CALL                             R19 3 1
      127 SETTABLEKS                       R19 R18 K17 ["Text"]
      129 GETUPVAL                         R19 3
      130 NAMECALL                         R19 R19 K15 ["getNextOrder"]
      132 CALL                             R19 1 1
      133 SETTABLEKS                       R19 R18 K16 ["LayoutOrder"]
      135 GETUPVAL                         R21 1
      136 GETTABLEKS                       R20 R21 K31 ["Event"]
      138 GETTABLEKS                       R19 R20 K32 ["Activated"]
      140 NEWCLOSURE                       R20 P2
      141 CAPTURE                          VAL R0
      142 SETTABLE                         R20 R18 R19
      143 CALL                             R16 2 1
      144 SETTABLEKS                       R16 R15 K26 ["Clear"]
      146 GETUPVAL                         R17 1
      147 GETTABLEKS                       R16 R17 K3 ["createElement"]
      149 LOADK                            R17 K29 ["TextButton"]
      150 NEWTABLE                         R18 4 0
      152 GETUPVAL                         R20 1
      153 GETTABLEKS                       R19 R20 K5 ["Tag"]
      155 GETUPVAL                         R20 2
      156 LOADK                            R21 K30 ["Component-OptionButton"]
      157 LOADK                            R22 K25 ["X-Fit"]
      158 CALL                             R20 2 1
      159 SETTABLE                         R20 R18 R19
      160 LOADK                            R21 K22 ["FilterMenu"]
      161 LOADK                            R22 K33 ["Done"]
      162 NAMECALL                         R19 R1 K24 ["getText"]
      164 CALL                             R19 3 1
      165 SETTABLEKS                       R19 R18 K17 ["Text"]
      167 GETUPVAL                         R19 3
      168 NAMECALL                         R19 R19 K15 ["getNextOrder"]
      170 CALL                             R19 1 1
      171 SETTABLEKS                       R19 R18 K16 ["LayoutOrder"]
      173 GETUPVAL                         R21 1
      174 GETTABLEKS                       R20 R21 K31 ["Event"]
      176 GETTABLEKS                       R19 R20 K32 ["Activated"]
      178 NEWCLOSURE                       R20 P3
      179 CAPTURE                          VAL R0
      180 SETTABLE                         R20 R18 R19
      181 CALL                             R16 2 1
      182 SETTABLEKS                       R16 R15 K27 ["Apply"]
      184 CALL                             R12 3 1
      185 SETTABLEKS                       R12 R11 K18 ["Buttons"]
      187 CALL                             R8 3 1
      188 SETTABLEKS                       R8 R7 K9 ["Header"]
      190 GETUPVAL                         R9 1
      191 GETTABLEKS                       R8 R9 K3 ["createElement"]
      193 LOADK                            R9 K4 ["Frame"]
      194 NEWTABLE                         R10 2 0
      196 GETUPVAL                         R12 1
      197 GETTABLEKS                       R11 R12 K5 ["Tag"]
      199 GETUPVAL                         R12 2
      200 LOADK                            R13 K34 ["CX-Divider"]
      201 CALL                             R12 1 1
      202 SETTABLE                         R12 R10 R11
      203 GETUPVAL                         R11 3
      204 NAMECALL                         R11 R11 K15 ["getNextOrder"]
      206 CALL                             R11 1 1
      207 SETTABLEKS                       R11 R10 K16 ["LayoutOrder"]
      209 CALL                             R8 2 1
      210 SETTABLEKS                       R8 R7 K10 ["Divider"]
      212 GETUPVAL                         R9 1
      213 GETTABLEKS                       R8 R9 K3 ["createElement"]
      215 LOADK                            R9 K35 ["ScrollingFrame"]
      216 NEWTABLE                         R10 4 0
      218 GETUPVAL                         R12 1
      219 GETTABLEKS                       R11 R12 K5 ["Tag"]
      221 GETUPVAL                         R12 2
      222 LOADK                            R13 K14 ["CX-Invisible"]
      223 CALL                             R12 1 1
      224 SETTABLE                         R12 R10 R11
      225 GETUPVAL                         R11 3
      226 NAMECALL                         R11 R11 K15 ["getNextOrder"]
      228 CALL                             R11 1 1
      229 SETTABLEKS                       R11 R10 K16 ["LayoutOrder"]
      231 GETIMPORT                        R11 K39 [Enum.AutomaticSize.Y]
      233 SETTABLEKS                       R11 R10 K40 ["AutomaticCanvasSize"]
      235 GETIMPORT                        R11 K43 [UDim2.new]
      237 LOADN                            R12 0
      238 LOADN                            R13 0
      239 LOADN                            R14 0
      240 LOADN                            R15 0
      241 CALL                             R11 4 1
      242 SETTABLEKS                       R11 R10 K44 ["CanvasSize"]
      244 DUPTABLE                         R11 K49 [{"Layout", "ByDateRange", "ByTypeCheckBoxes", "ByCollaboratorCheckBoxes"}]
      245 GETUPVAL                         R13 1
      246 GETTABLEKS                       R12 R13 K3 ["createElement"]
      248 LOADK                            R13 K50 ["UIListLayout"]
      249 DUPTABLE                         R14 K53 [{"FillDirection", "SortOrder"}]
      250 GETIMPORT                        R15 K55 [Enum.FillDirection.Vertical]
      252 SETTABLEKS                       R15 R14 K51 ["FillDirection"]
      254 GETIMPORT                        R15 K56 [Enum.SortOrder.LayoutOrder]
      256 SETTABLEKS                       R15 R14 K52 ["SortOrder"]
      258 CALL                             R12 2 1
      259 SETTABLEKS                       R12 R11 K45 ["Layout"]
      261 GETUPVAL                         R13 1
      262 GETTABLEKS                       R12 R13 K3 ["createElement"]
      264 LOADK                            R13 K4 ["Frame"]
      265 NEWTABLE                         R14 2 0
      267 GETUPVAL                         R16 1
      268 GETTABLEKS                       R15 R16 K5 ["Tag"]
      270 GETUPVAL                         R16 2
      271 LOADK                            R17 K7 ["X-Column"]
      272 LOADK                            R18 K25 ["X-Fit"]
      273 LOADK                            R19 K14 ["CX-Invisible"]
      274 CALL                             R16 3 1
      275 SETTABLE                         R16 R14 R15
      276 GETUPVAL                         R15 3
      277 NAMECALL                         R15 R15 K15 ["getNextOrder"]
      279 CALL                             R15 1 1
      280 SETTABLEKS                       R15 R14 K16 ["LayoutOrder"]
      282 DUPTABLE                         R15 K59 [{"Label", "ByDateRangeFilter"}]
      283 GETUPVAL                         R17 1
      284 GETTABLEKS                       R16 R17 K3 ["createElement"]
      286 LOADK                            R17 K20 ["TextLabel"]
      287 NEWTABLE                         R18 4 0
      289 GETUPVAL                         R20 1
      290 GETTABLEKS                       R19 R20 K5 ["Tag"]
      292 GETUPVAL                         R20 2
      293 LOADK                            R21 K25 ["X-Fit"]
      294 CALL                             R20 1 1
      295 SETTABLE                         R20 R18 R19
      296 LOADK                            R21 K22 ["FilterMenu"]
      297 LOADK                            R22 K60 ["JumpToDate"]
      298 NAMECALL                         R19 R1 K24 ["getText"]
      300 CALL                             R19 3 1
      301 SETTABLEKS                       R19 R18 K17 ["Text"]
      303 GETUPVAL                         R19 3
      304 NAMECALL                         R19 R19 K15 ["getNextOrder"]
      306 CALL                             R19 1 1
      307 SETTABLEKS                       R19 R18 K16 ["LayoutOrder"]
      309 CALL                             R16 2 1
      310 SETTABLEKS                       R16 R15 K57 ["Label"]
      312 GETUPVAL                         R17 1
      313 GETTABLEKS                       R16 R17 K3 ["createElement"]
      315 GETUPVAL                         R17 4
      316 DUPTABLE                         R18 K65 [{"onChanged", "layoutOrder", "items", "selectedItemIndex"}]
      317 NEWCLOSURE                       R19 P4
      318 CAPTURE                          VAL R0
      319 SETTABLEKS                       R19 R18 K61 ["onChanged"]
      321 GETUPVAL                         R19 3
      322 NAMECALL                         R19 R19 K15 ["getNextOrder"]
      324 CALL                             R19 1 1
      325 SETTABLEKS                       R19 R18 K62 ["layoutOrder"]
      327 GETUPVAL                         R19 5
      328 MOVE                             R20 R1
      329 CALL                             R19 1 1
      330 SETTABLEKS                       R19 R18 K63 ["items"]
      332 GETTABLEKS                       R20 R0 K66 ["selectedFilters"]
      334 GETTABLEKS                       R19 R20 K67 ["JumpToDateIndex"]
      336 SETTABLEKS                       R19 R18 K64 ["selectedItemIndex"]
      338 CALL                             R16 2 1
      339 SETTABLEKS                       R16 R15 K58 ["ByDateRangeFilter"]
      341 CALL                             R12 3 1
      342 SETTABLEKS                       R12 R11 K46 ["ByDateRange"]
      344 GETUPVAL                         R13 1
      345 GETTABLEKS                       R12 R13 K3 ["createElement"]
      347 GETUPVAL                         R13 6
      348 DUPTABLE                         R14 K72 [{"rows", "title", "checkboxes", "LayoutOrder", "onChange"}]
      349 GETUPVAL                         R15 7
      350 MOVE                             R16 R1
      351 CALL                             R15 1 1
      352 SETTABLEKS                       R15 R14 K68 ["rows"]
      354 LOADK                            R17 K22 ["FilterMenu"]
      355 LOADK                            R18 K73 ["ByType"]
      356 NAMECALL                         R15 R1 K24 ["getText"]
      358 CALL                             R15 3 1
      359 SETTABLEKS                       R15 R14 K69 ["title"]
      361 GETTABLEKS                       R16 R0 K66 ["selectedFilters"]
      363 GETTABLEKS                       R15 R16 K74 ["EventCategories"]
      365 SETTABLEKS                       R15 R14 K70 ["checkboxes"]
      367 GETUPVAL                         R15 3
      368 NAMECALL                         R15 R15 K15 ["getNextOrder"]
      370 CALL                             R15 1 1
      371 SETTABLEKS                       R15 R14 K16 ["LayoutOrder"]
      373 NEWCLOSURE                       R15 P5
      374 CAPTURE                          VAL R0
      375 SETTABLEKS                       R15 R14 K71 ["onChange"]
      377 CALL                             R12 2 1
      378 SETTABLEKS                       R12 R11 K47 ["ByTypeCheckBoxes"]
      380 LOADB                            R12 0
      381 LOADN                            R13 0
      382 JUMPIFNOTLT                      R13 R2 ; [+32]
      384 GETUPVAL                         R13 1
      385 GETTABLEKS                       R12 R13 K3 ["createElement"]
      387 GETUPVAL                         R13 6
      388 DUPTABLE                         R14 K72 [{"rows", "title", "checkboxes", "LayoutOrder", "onChange"}]
      389 SETTABLEKS                       R3 R14 K68 ["rows"]
      391 LOADK                            R17 K22 ["FilterMenu"]
      392 LOADK                            R18 K75 ["ByCollaborator"]
      393 NAMECALL                         R15 R1 K24 ["getText"]
      395 CALL                             R15 3 1
      396 SETTABLEKS                       R15 R14 K69 ["title"]
      398 GETTABLEKS                       R16 R0 K66 ["selectedFilters"]
      400 GETTABLEKS                       R15 R16 K76 ["Collaborators"]
      402 SETTABLEKS                       R15 R14 K70 ["checkboxes"]
      404 GETUPVAL                         R15 3
      405 NAMECALL                         R15 R15 K15 ["getNextOrder"]
      407 CALL                             R15 1 1
      408 SETTABLEKS                       R15 R14 K16 ["LayoutOrder"]
      410 NEWCLOSURE                       R15 P6
      411 CAPTURE                          VAL R0
      412 SETTABLEKS                       R15 R14 K71 ["onChange"]
      414 CALL                             R12 2 1
      415 SETTABLEKS                       R12 R11 K48 ["ByCollaboratorCheckBoxes"]
      417 CALL                             R8 3 1
      418 SETTABLEKS                       R8 R7 K11 ["Contents"]
      420 CALL                             R4 3 -1
      421 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R5 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R5 K8 ["Cryo"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R7 R0 K9 ["Src"]
       34 GETTABLEKS                       R6 R7 K10 ["Components"]
       36 GETTABLEKS                       R5 R6 K11 ["FilterDropdown"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K4 [require]
       41 GETTABLEKS                       R8 R0 K9 ["Src"]
       43 GETTABLEKS                       R7 R8 K12 ["Resources"]
       45 GETTABLEKS                       R6 R7 K13 ["StyleTips"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K4 [require]
       50 GETTABLEKS                       R9 R0 K9 ["Src"]
       52 GETTABLEKS                       R8 R9 K14 ["Util"]
       54 GETTABLEKS                       R7 R8 K15 ["ActivityHistoryEventTranslated"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K4 [require]
       59 GETTABLEKS                       R10 R0 K9 ["Src"]
       61 GETTABLEKS                       R9 R10 K14 ["Util"]
       63 GETTABLEKS                       R8 R9 K16 ["SharedTypes"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K4 [require]
       68 GETTABLEKS                       R11 R0 K9 ["Src"]
       70 GETTABLEKS                       R10 R11 K14 ["Util"]
       72 GETTABLEKS                       R9 R10 K17 ["getEventTypesLocalized"]
       74 CALL                             R8 1 1
       75 GETTABLEKS                       R10 R2 K18 ["ContextServices"]
       77 GETTABLEKS                       R9 R10 K19 ["Localization"]
       79 GETTABLEKS                       R10 R7 K20 ["SectionHeaderType"]
       81 GETTABLEKS                       R11 R2 K21 ["UI"]
       83 GETTABLEKS                       R12 R11 K22 ["Checkbox"]
       85 GETTABLEKS                       R14 R2 K14 ["Util"]
       87 GETTABLEKS                       R13 R14 K23 ["LayoutOrderIterator"]
       89 GETTABLEKS                       R14 R13 K24 ["new"]
       91 CALL                             R14 0 1
       92 GETTABLEKS                       R16 R2 K25 ["Styling"]
       94 GETTABLEKS                       R15 R16 K26 ["joinTags"]
       96 GETTABLEKS                       R16 R7 K27 ["EventFilterTypes"]
       98 DUPCLOSURE                       R17 K28 [PROTO_0]
       99 NEWTABLE                         R18 0 5
      101 LOADN                            R19 0
      102 LOADN                            R20 7
      103 LOADN                            R21 30
      104 LOADN                            R22 90
      105 LOADN                            R23 109
      106 SETLIST                          R18 R19 5 [1]
      108 DUPCLOSURE                       R19 K29 [PROTO_1]
      109 CAPTURE                          VAL R16
      110 DUPCLOSURE                       R20 K30 [PROTO_2]
      111 DUPCLOSURE                       R21 K31 [PROTO_3]
      112 CAPTURE                          VAL R18
      113 DUPCLOSURE                       R22 K32 [PROTO_4]
      114 CAPTURE                          VAL R18
      115 DUPCLOSURE                       R23 K33 [PROTO_7]
      116 CAPTURE                          VAL R6
      117 CAPTURE                          VAL R18
      118 CAPTURE                          VAL R10
      119 DUPCLOSURE                       R24 K34 [PROTO_8]
      120 CAPTURE                          VAL R3
      121 DUPCLOSURE                       R25 K35 [PROTO_9]
      122 CAPTURE                          VAL R17
      123 CAPTURE                          VAL R8
      124 DUPCLOSURE                       R26 K36 [PROTO_14]
      125 CAPTURE                          VAL R9
      126 CAPTURE                          VAL R1
      127 CAPTURE                          VAL R3
      128 CAPTURE                          VAL R15
      129 CAPTURE                          VAL R14
      130 CAPTURE                          VAL R12
      131 CAPTURE                          VAL R5
      132 DUPCLOSURE                       R27 K37 [PROTO_22]
      133 CAPTURE                          VAL R9
      134 CAPTURE                          VAL R1
      135 CAPTURE                          VAL R15
      136 CAPTURE                          VAL R14
      137 CAPTURE                          VAL R4
      138 CAPTURE                          VAL R17
      139 CAPTURE                          VAL R26
      140 CAPTURE                          VAL R8
      141 DUPTABLE                         R28 K46 [{"FilterMenu", "compareFilterOptions", "getUnixMsFromDateIndex", "getNumDaysFromDateIndex", "filterOptionsToFilterFn", "filterOptionsToStrings", "getFilterEmptyState", "mergeFilterOptions"}]
      142 SETTABLEKS                       R27 R28 K38 ["FilterMenu"]
      144 SETTABLEKS                       R20 R28 K39 ["compareFilterOptions"]
      146 SETTABLEKS                       R21 R28 K40 ["getUnixMsFromDateIndex"]
      148 SETTABLEKS                       R22 R28 K41 ["getNumDaysFromDateIndex"]
      150 SETTABLEKS                       R23 R28 K42 ["filterOptionsToFilterFn"]
      152 SETTABLEKS                       R25 R28 K43 ["filterOptionsToStrings"]
      154 SETTABLEKS                       R19 R28 K44 ["getFilterEmptyState"]
      156 SETTABLEKS                       R24 R28 K45 ["mergeFilterOptions"]
      158 RETURN                           R28 1
