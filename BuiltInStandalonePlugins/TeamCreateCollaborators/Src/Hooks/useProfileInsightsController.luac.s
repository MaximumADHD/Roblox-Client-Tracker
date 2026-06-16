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
       16 DUPTABLE                         R8 K11 [{"userId", "username", "displayName", "mutualFriendCount", "friendshipAgeTranslation", "isFriend", "userAgeVerified", "accountCreationTranslation"}]
       17 GETTABLEKS                       R9 R7 K12 ["targetUser"]
       19 SETTABLEKS                       R9 R8 K3 ["userId"]
       21 LOADK                            R9 K13 [""]
       22 SETTABLEKS                       R9 R8 K4 ["username"]
       24 LOADK                            R9 K13 [""]
       25 SETTABLEKS                       R9 R8 K5 ["displayName"]
       27 LOADN                            R9 0
       28 SETTABLEKS                       R9 R8 K6 ["mutualFriendCount"]
       30 GETUPVAL                         R9 1
       31 LOADK                            R11 K14 ["ProfileInsights"]
       32 LOADK                            R12 K15 ["NotConnected"]
       33 NAMECALL                         R9 R9 K16 ["getText"]
       35 CALL                             R9 3 1
       36 SETTABLEKS                       R9 R8 K7 ["friendshipAgeTranslation"]
       38 LOADB                            R9 0
       39 SETTABLEKS                       R9 R8 K8 ["isFriend"]
       41 LOADB                            R9 1
       42 SETTABLEKS                       R9 R8 K9 ["userAgeVerified"]
       44 LOADK                            R9 K13 [""]
       45 SETTABLEKS                       R9 R8 K10 ["accountCreationTranslation"]
       47 GETTABLEKS                       R9 R7 K17 ["profileInsights"]
       49 GETTABLEKS                       R10 R9 K18 ["mutualFriendInsight"]
       51 JUMPIFNOT                        R10 ; [+14]
       52 GETTABLEKS                       R10 R9 K18 ["mutualFriendInsight"]
       54 GETTABLEKS                       R10 R10 K19 ["mutualFriends"]
       56 LOADNIL                          R11
       57 LOADNIL                          R12
       58 FORGPREP                         R10
       59 GETTABLEKS                       R16 R8 K6 ["mutualFriendCount"]
       61 ADDK                             R15 R16 K20 [1]
       62 SETTABLEKS                       R15 R8 K6 ["mutualFriendCount"]
       64 FORGLOOP                         R10 1 ; [-6]
       66 GETTABLEKS                       R10 R9 K21 ["friendshipAgeInsight"]
       68 JUMPIFNOT                        R10 ; [+113]
       69 LOADB                            R10 1
       70 SETTABLEKS                       R10 R8 K8 ["isFriend"]
       72 GETIMPORT                        R11 K24 [DateTime.now]
       74 CALL                             R11 0 1
       75 GETTABLEKS                       R11 R11 K25 ["UnixTimestamp"]
       77 GETTABLEKS                       R13 R9 K21 ["friendshipAgeInsight"]
       79 GETTABLEKS                       R13 R13 K27 ["friendsSinceDateTime"]
       81 GETTABLEKS                       R13 R13 K28 ["seconds"]
       83 ORK                              R12 R13 K26 [0]
       84 SUB                              R10 R11 R12
       85 DIVK                             R12 R10 K29 [31536000]
       86 FASTCALL1                        MATH_FLOOR R12 ; [+2]
       87 GETIMPORT                        R11 K32 [math.floor]
       89 CALL                             R11 1 1
       90 DIVK                             R13 R10 K33 [2592000]
       91 FASTCALL1                        MATH_FLOOR R13 ; [+2]
       92 GETIMPORT                        R12 K32 [math.floor]
       94 CALL                             R12 1 1
       95 DIVK                             R14 R10 K34 [86400]
       96 FASTCALL1                        MATH_FLOOR R14 ; [+2]
       97 GETIMPORT                        R13 K32 [math.floor]
       99 CALL                             R13 1 1
      100 LOADNIL                          R14
      101 LOADN                            R15 1
      102 JUMPIFNOTLT                      R15 R11 ; [+12]
      104 GETUPVAL                         R15 1
      105 LOADK                            R17 K14 ["ProfileInsights"]
      106 LOADK                            R18 K35 ["ConnectedForYears"]
      107 DUPTABLE                         R19 K37 [{"age"}]
      108 SETTABLEKS                       R11 R19 K36 ["age"]
      110 NAMECALL                         R15 R15 K16 ["getText"]
      112 CALL                             R15 4 1
      113 MOVE                             R14 R15
      114 JUMP                             ; [+65]
      115 JUMPIFNOTEQKN                    R11 K20 [1] ; [+9]
      117 GETUPVAL                         R15 1
      118 LOADK                            R17 K14 ["ProfileInsights"]
      119 LOADK                            R18 K38 ["ConnectedForOneYear"]
      120 NAMECALL                         R15 R15 K16 ["getText"]
      122 CALL                             R15 3 1
      123 MOVE                             R14 R15
      124 JUMP                             ; [+55]
      125 LOADN                            R15 1
      126 JUMPIFNOTLT                      R15 R12 ; [+12]
      128 GETUPVAL                         R15 1
      129 LOADK                            R17 K14 ["ProfileInsights"]
      130 LOADK                            R18 K39 ["ConnectedForMonths"]
      131 DUPTABLE                         R19 K37 [{"age"}]
      132 SETTABLEKS                       R12 R19 K36 ["age"]
      134 NAMECALL                         R15 R15 K16 ["getText"]
      136 CALL                             R15 4 1
      137 MOVE                             R14 R15
      138 JUMP                             ; [+41]
      139 JUMPIFNOTEQKN                    R12 K20 [1] ; [+9]
      141 GETUPVAL                         R15 1
      142 LOADK                            R17 K14 ["ProfileInsights"]
      143 LOADK                            R18 K40 ["ConnectedForOneMonth"]
      144 NAMECALL                         R15 R15 K16 ["getText"]
      146 CALL                             R15 3 1
      147 MOVE                             R14 R15
      148 JUMP                             ; [+31]
      149 LOADN                            R15 1
      150 JUMPIFNOTLT                      R15 R13 ; [+12]
      152 GETUPVAL                         R15 1
      153 LOADK                            R17 K14 ["ProfileInsights"]
      154 LOADK                            R18 K41 ["ConnectedForDays"]
      155 DUPTABLE                         R19 K37 [{"age"}]
      156 SETTABLEKS                       R13 R19 K36 ["age"]
      158 NAMECALL                         R15 R15 K16 ["getText"]
      160 CALL                             R15 4 1
      161 MOVE                             R14 R15
      162 JUMP                             ; [+17]
      163 JUMPIFNOTEQKN                    R13 K20 [1] ; [+9]
      165 GETUPVAL                         R15 1
      166 LOADK                            R17 K14 ["ProfileInsights"]
      167 LOADK                            R18 K42 ["ConnectedForOneDay"]
      168 NAMECALL                         R15 R15 K16 ["getText"]
      170 CALL                             R15 3 1
      171 MOVE                             R14 R15
      172 JUMP                             ; [+7]
      173 GETUPVAL                         R15 1
      174 LOADK                            R17 K14 ["ProfileInsights"]
      175 LOADK                            R18 K15 ["NotConnected"]
      176 NAMECALL                         R15 R15 K16 ["getText"]
      178 CALL                             R15 3 1
      179 MOVE                             R14 R15
      180 SETTABLEKS                       R14 R8 K7 ["friendshipAgeTranslation"]
      182 GETTABLEKS                       R10 R9 K43 ["accountCreationDateInsight"]
      184 JUMPIFNOT                        R10 ; [+30]
      185 GETUPVAL                         R10 1
      186 NAMECALL                         R10 R10 K44 ["getLocale"]
      188 CALL                             R10 1 1
      189 GETIMPORT                        R11 K46 [DateTime.fromUnixTimestamp]
      191 GETTABLEKS                       R13 R9 K43 ["accountCreationDateInsight"]
      193 GETTABLEKS                       R13 R13 K47 ["accountCreatedDateTime"]
      195 GETTABLEKS                       R13 R13 K28 ["seconds"]
      197 ORK                              R12 R13 K26 [0]
      198 CALL                             R11 1 1
      199 LOADK                            R13 K48 ["YYYY"]
      200 MOVE                             R14 R10
      201 NAMECALL                         R11 R11 K49 ["FormatLocalTime"]
      203 CALL                             R11 3 1
      204 GETUPVAL                         R12 1
      205 LOADK                            R14 K14 ["ProfileInsights"]
      206 LOADK                            R15 K50 ["JoinedInYear"]
      207 DUPTABLE                         R16 K52 [{"year"}]
      208 SETTABLEKS                       R11 R16 K51 ["year"]
      210 NAMECALL                         R12 R12 K16 ["getText"]
      212 CALL                             R12 4 1
      213 SETTABLEKS                       R12 R8 K10 ["accountCreationTranslation"]
      215 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
      217 MOVE                             R11 R2
      218 MOVE                             R12 R8
      219 GETIMPORT                        R10 K55 [table.insert]
      221 CALL                             R10 2 0
      222 FORGLOOP                         R3 2 [inext] ; [-211]
      224 GETUPVAL                         R3 2
      225 MOVE                             R4 R2
      226 CALL                             R3 1 0
      227 RETURN                           R0 0

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
