PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["profileInsights"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 1
        4 NEWTABLE                         R2 0 0
        6 GETIMPORT                        R3 K2 [ipairs]
        8 MOVE                             R4 R1
        9 CALL                             R3 1 3
       10 FORGPREP_INEXT                   R3
       11 GETIMPORT                        R8 K4 [pairs]
       13 MOVE                             R9 R7
       14 CALL                             R8 1 3
       15 FORGPREP_NEXT                    R8
       16 JUMPIFEQKS                       R11 K5 ["insightCase"] ; [+2]
       18 SETTABLE                         R12 R2 R11
       19 FORGLOOP                         R8 2 ; [-4]
       21 FORGLOOP                         R3 2 [inext] ; [-11]
       23 SETTABLEKS                       R2 R0 K0 ["profileInsights"]
       25 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["userInsights"]
        2 JUMPIF                           R1 ; [+2]
        3 NEWTABLE                         R1 0 0
        5 NEWTABLE                         R2 0 0
        7 GETIMPORT                        R3 K2 [ipairs]
        9 MOVE                             R4 R1
       10 CALL                             R3 1 3
       11 FORGPREP_INEXT                   R3
       12 GETUPVAL                         R8 0
       13 MOVE                             R9 R7
       14 CALL                             R8 1 1
       15 MOVE                             R7 R8
       16 DUPTABLE                         R8 K10 [{"userId", "username", "displayName", "mutualFriendCount", "friendshipAgeTranslation", "userAgeVerified", "accountCreationTranslation"}]
       17 GETTABLEKS                       R9 R7 K11 ["targetUser"]
       19 SETTABLEKS                       R9 R8 K3 ["userId"]
       21 LOADK                            R9 K12 [""]
       22 SETTABLEKS                       R9 R8 K4 ["username"]
       24 LOADK                            R9 K12 [""]
       25 SETTABLEKS                       R9 R8 K5 ["displayName"]
       27 LOADN                            R9 0
       28 SETTABLEKS                       R9 R8 K6 ["mutualFriendCount"]
       30 GETUPVAL                         R9 1
       31 LOADK                            R11 K13 ["ProfileInsights"]
       32 LOADK                            R12 K14 ["NotConnected"]
       33 NAMECALL                         R9 R9 K15 ["getText"]
       35 CALL                             R9 3 1
       36 SETTABLEKS                       R9 R8 K7 ["friendshipAgeTranslation"]
       38 LOADB                            R9 1
       39 SETTABLEKS                       R9 R8 K8 ["userAgeVerified"]
       41 LOADK                            R9 K12 [""]
       42 SETTABLEKS                       R9 R8 K9 ["accountCreationTranslation"]
       44 GETTABLEKS                       R9 R7 K16 ["profileInsights"]
       46 GETTABLEKS                       R10 R9 K17 ["mutualFriendInsight"]
       48 JUMPIFNOT                        R10 ; [+14]
       49 GETTABLEKS                       R10 R9 K17 ["mutualFriendInsight"]
       51 GETTABLEKS                       R10 R10 K18 ["mutualFriends"]
       53 LOADNIL                          R11
       54 LOADNIL                          R12
       55 FORGPREP                         R10
       56 GETTABLEKS                       R16 R8 K6 ["mutualFriendCount"]
       58 ADDK                             R15 R16 K19 [1]
       59 SETTABLEKS                       R15 R8 K6 ["mutualFriendCount"]
       61 FORGLOOP                         R10 1 ; [-6]
       63 GETTABLEKS                       R10 R9 K20 ["friendshipAgeInsight"]
       65 JUMPIFNOT                        R10 ; [+110]
       66 GETIMPORT                        R11 K23 [DateTime.now]
       68 CALL                             R11 0 1
       69 GETTABLEKS                       R11 R11 K24 ["UnixTimestamp"]
       71 GETTABLEKS                       R13 R9 K20 ["friendshipAgeInsight"]
       73 GETTABLEKS                       R13 R13 K26 ["friendsSinceDateTime"]
       75 GETTABLEKS                       R13 R13 K27 ["seconds"]
       77 ORK                              R12 R13 K25 [0]
       78 SUB                              R10 R11 R12
       79 DIVK                             R12 R10 K28 [31536000]
       80 FASTCALL1                        MATH_FLOOR R12 ; [+2]
       81 GETIMPORT                        R11 K31 [math.floor]
       83 CALL                             R11 1 1
       84 DIVK                             R13 R10 K32 [2592000]
       85 FASTCALL1                        MATH_FLOOR R13 ; [+2]
       86 GETIMPORT                        R12 K31 [math.floor]
       88 CALL                             R12 1 1
       89 DIVK                             R14 R10 K33 [86400]
       90 FASTCALL1                        MATH_FLOOR R14 ; [+2]
       91 GETIMPORT                        R13 K31 [math.floor]
       93 CALL                             R13 1 1
       94 LOADNIL                          R14
       95 LOADN                            R15 1
       96 JUMPIFNOTLT                      R15 R11 ; [+12]
       98 GETUPVAL                         R15 1
       99 LOADK                            R17 K13 ["ProfileInsights"]
      100 LOADK                            R18 K34 ["ConnectedForYears"]
      101 DUPTABLE                         R19 K36 [{"age"}]
      102 SETTABLEKS                       R11 R19 K35 ["age"]
      104 NAMECALL                         R15 R15 K15 ["getText"]
      106 CALL                             R15 4 1
      107 MOVE                             R14 R15
      108 JUMP                             ; [+65]
      109 JUMPIFNOTEQKN                    R11 K19 [1] ; [+9]
      111 GETUPVAL                         R15 1
      112 LOADK                            R17 K13 ["ProfileInsights"]
      113 LOADK                            R18 K37 ["ConnectedForOneYear"]
      114 NAMECALL                         R15 R15 K15 ["getText"]
      116 CALL                             R15 3 1
      117 MOVE                             R14 R15
      118 JUMP                             ; [+55]
      119 LOADN                            R15 1
      120 JUMPIFNOTLT                      R15 R12 ; [+12]
      122 GETUPVAL                         R15 1
      123 LOADK                            R17 K13 ["ProfileInsights"]
      124 LOADK                            R18 K38 ["ConnectedForMonths"]
      125 DUPTABLE                         R19 K36 [{"age"}]
      126 SETTABLEKS                       R12 R19 K35 ["age"]
      128 NAMECALL                         R15 R15 K15 ["getText"]
      130 CALL                             R15 4 1
      131 MOVE                             R14 R15
      132 JUMP                             ; [+41]
      133 JUMPIFNOTEQKN                    R12 K19 [1] ; [+9]
      135 GETUPVAL                         R15 1
      136 LOADK                            R17 K13 ["ProfileInsights"]
      137 LOADK                            R18 K39 ["ConnectedForOneMonth"]
      138 NAMECALL                         R15 R15 K15 ["getText"]
      140 CALL                             R15 3 1
      141 MOVE                             R14 R15
      142 JUMP                             ; [+31]
      143 LOADN                            R15 1
      144 JUMPIFNOTLT                      R15 R13 ; [+12]
      146 GETUPVAL                         R15 1
      147 LOADK                            R17 K13 ["ProfileInsights"]
      148 LOADK                            R18 K40 ["ConnectedForDays"]
      149 DUPTABLE                         R19 K36 [{"age"}]
      150 SETTABLEKS                       R13 R19 K35 ["age"]
      152 NAMECALL                         R15 R15 K15 ["getText"]
      154 CALL                             R15 4 1
      155 MOVE                             R14 R15
      156 JUMP                             ; [+17]
      157 JUMPIFNOTEQKN                    R13 K19 [1] ; [+9]
      159 GETUPVAL                         R15 1
      160 LOADK                            R17 K13 ["ProfileInsights"]
      161 LOADK                            R18 K41 ["ConnectedForOneDay"]
      162 NAMECALL                         R15 R15 K15 ["getText"]
      164 CALL                             R15 3 1
      165 MOVE                             R14 R15
      166 JUMP                             ; [+7]
      167 GETUPVAL                         R15 1
      168 LOADK                            R17 K13 ["ProfileInsights"]
      169 LOADK                            R18 K14 ["NotConnected"]
      170 NAMECALL                         R15 R15 K15 ["getText"]
      172 CALL                             R15 3 1
      173 MOVE                             R14 R15
      174 SETTABLEKS                       R14 R8 K7 ["friendshipAgeTranslation"]
      176 GETTABLEKS                       R10 R9 K42 ["accountCreationDateInsight"]
      178 JUMPIFNOT                        R10 ; [+30]
      179 GETUPVAL                         R10 1
      180 NAMECALL                         R10 R10 K43 ["getLocale"]
      182 CALL                             R10 1 1
      183 GETIMPORT                        R11 K45 [DateTime.fromUnixTimestamp]
      185 GETTABLEKS                       R13 R9 K42 ["accountCreationDateInsight"]
      187 GETTABLEKS                       R13 R13 K46 ["accountCreatedDateTime"]
      189 GETTABLEKS                       R13 R13 K27 ["seconds"]
      191 ORK                              R12 R13 K25 [0]
      192 CALL                             R11 1 1
      193 LOADK                            R13 K47 ["YYYY"]
      194 MOVE                             R14 R10
      195 NAMECALL                         R11 R11 K48 ["FormatLocalTime"]
      197 CALL                             R11 3 1
      198 GETUPVAL                         R12 1
      199 LOADK                            R14 K13 ["ProfileInsights"]
      200 LOADK                            R15 K49 ["JoinedInYear"]
      201 DUPTABLE                         R16 K51 [{"year"}]
      202 SETTABLEKS                       R11 R16 K50 ["year"]
      204 NAMECALL                         R12 R12 K15 ["getText"]
      206 CALL                             R12 4 1
      207 SETTABLEKS                       R12 R8 K9 ["accountCreationTranslation"]
      209 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
      211 MOVE                             R11 R2
      212 MOVE                             R12 R8
      213 GETIMPORT                        R10 K54 [table.insert]
      215 CALL                             R10 2 0
      216 FORGLOOP                         R3 2 [inext] ; [-205]
      218 GETUPVAL                         R3 2
      219 MOVE                             R4 R2
      220 CALL                             R3 1 0
      221 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["Failed to fetch profile insights: "]
        3 FASTCALL1                        TOSTRING R0 ; [+3]
        4 MOVE                             R5 R0
        5 GETIMPORT                        R4 K4 [tostring]
        7 CALL                             R4 1 1
        8 CONCAT                           R2 R3 R4
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K5 ["sendErrorFromCatch"]
       13 LOADK                            R2 K6 ["postProfileInsights"]
       14 MOVE                             R3 R0
       15 CALL                             R1 2 0
       16 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 NAMECALL                         R0 R0 K1 ["cancel"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 0
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K0 ["current"]
       14 GETUPVAL                         R0 1
       15 GETTABLEKS                       R0 R0 K2 ["userIds"]
       17 JUMPIFNOT                        R0 ; [+6]
       18 GETUPVAL                         R1 1
       19 GETTABLEKS                       R1 R1 K2 ["userIds"]
       21 LENGTH                           R0 R1
       22 JUMPIFNOTEQKN                    R0 K3 [0] ; [+6]
       24 GETUPVAL                         R0 2
       25 NEWTABLE                         R1 0 0
       27 CALL                             R0 1 0
       28 RETURN                           R0 0
       29 DUPTABLE                         R0 K4 [{"userIds"}]
       30 GETUPVAL                         R1 1
       31 GETTABLEKS                       R1 R1 K2 ["userIds"]
       33 SETTABLEKS                       R1 R0 K2 ["userIds"]
       35 GETUPVAL                         R1 3
       36 GETTABLEKS                       R1 R1 K5 ["postProfileInsights"]
       38 MOVE                             R2 R0
       39 CALL                             R1 1 1
       40 GETUPVAL                         R2 0
       41 SETTABLEKS                       R1 R2 K0 ["current"]
       43 NEWCLOSURE                       R4 P0
       44 CAPTURE                          UPVAL U4
       45 CAPTURE                          UPVAL U5
       46 CAPTURE                          UPVAL U2
       47 NAMECALL                         R2 R1 K6 ["andThen"]
       49 CALL                             R2 2 1
       50 DUPCLOSURE                       R4 K7 [PROTO_2]
       51 CAPTURE                          UPVAL U6
       52 NAMECALL                         R2 R2 K8 ["catch"]
       54 CALL                             R2 2 0
       55 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["useState"]
        7 NEWTABLE                         R3 0 0
        9 CALL                             R2 1 2
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K2 ["useContext"]
       13 GETUPVAL                         R5 2
       14 CALL                             R4 1 1
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R5 R5 K3 ["useRef"]
       18 LOADNIL                          R6
       19 CALL                             R5 1 1
       20 GETUPVAL                         R6 1
       21 GETTABLEKS                       R6 R6 K4 ["useEffect"]
       23 NEWCLOSURE                       R7 P0
       24 CAPTURE                          VAL R5
       25 CAPTURE                          VAL R0
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R4
       28 CAPTURE                          UPVAL U3
       29 CAPTURE                          VAL R1
       30 CAPTURE                          UPVAL U4
       31 NEWTABLE                         R8 0 1
       33 GETTABLEKS                       R9 R0 K5 ["userIds"]
       35 SETLIST                          R8 R9 1 [1]
       37 CALL                             R6 2 0
       38 DUPTABLE                         R6 K7 [{"profileInsights"}]
       39 SETTABLEKS                       R2 R6 K6 ["profileInsights"]
       41 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TeamCreateCollaborators"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R0 K8 ["Src"]
       16 GETTABLEKS                       R2 R2 K9 ["Contexts"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R2 K10 ["NetworkContext"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R0 K6 ["Packages"]
       27 GETTABLEKS                       R5 R5 K11 ["Framework"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R5 R4 K12 ["ContextServices"]
       32 GETTABLEKS                       R6 R5 K13 ["Localization"]
       34 GETIMPORT                        R7 K5 [require]
       36 GETTABLEKS                       R8 R0 K8 ["Src"]
       38 GETTABLEKS                       R8 R8 K14 ["Util"]
       40 GETTABLEKS                       R8 R8 K15 ["Telemetry"]
       42 GETTABLEKS                       R8 R8 K15 ["Telemetry"]
       44 CALL                             R7 1 1
       45 DUPCLOSURE                       R8 K16 [PROTO_0]
       46 DUPCLOSURE                       R9 K17 [PROTO_4]
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R8
       51 CAPTURE                          VAL R7
       52 RETURN                           R9 1
