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
       16 DUPTABLE                         R8 K15 [{["userId"], ["username"] = "", ["displayName"] = "", ["mutualFriendCount"] = 0, ["friendshipAgeTranslation"], ["isFriend"] = False, ["userAgeVerified"] = True, ["accountCreationTranslation"] = ""}]
       17 GETTABLEKS                       R9 R7 K16 ["targetUser"]
       19 SETTABLEKS                       R9 R8 K3 ["userId"]
       21 GETUPVAL                         R9 1
       22 LOADK                            R11 K17 ["ProfileInsights"]
       23 LOADK                            R12 K18 ["NotConnected"]
       24 NAMECALL                         R9 R9 K19 ["getText"]
       26 CALL                             R9 3 1
       27 SETTABLEKS                       R9 R8 K9 ["friendshipAgeTranslation"]
       29 GETTABLEKS                       R9 R7 K20 ["profileInsights"]
       31 GETTABLEKS                       R10 R9 K21 ["mutualFriendInsight"]
       33 JUMPIFNOT                        R10 ; [+14]
       34 GETTABLEKS                       R10 R9 K21 ["mutualFriendInsight"]
       36 GETTABLEKS                       R10 R10 K22 ["mutualFriends"]
       38 LOADNIL                          R11
       39 LOADNIL                          R12
       40 FORGPREP                         R10
       41 GETTABLEKS                       R16 R8 K7 ["mutualFriendCount"]
       43 ADDK                             R15 R16 K23 [1]
       44 SETTABLEKS                       R15 R8 K7 ["mutualFriendCount"]
       46 FORGLOOP                         R10 1 ; [-6]
       48 GETTABLEKS                       R10 R9 K24 ["friendshipAgeInsight"]
       50 JUMPIFNOT                        R10 ; [+113]
       51 LOADB                            R10 1
       52 SETTABLEKS                       R10 R8 K10 ["isFriend"]
       54 GETIMPORT                        R11 K27 [DateTime.now]
       56 CALL                             R11 0 1
       57 GETTABLEKS                       R11 R11 K28 ["UnixTimestamp"]
       59 GETTABLEKS                       R13 R9 K24 ["friendshipAgeInsight"]
       61 GETTABLEKS                       R13 R13 K29 ["friendsSinceDateTime"]
       63 GETTABLEKS                       R13 R13 K30 ["seconds"]
       65 ORK                              R12 R13 K8 [0]
       66 SUB                              R10 R11 R12
       67 DIVK                             R12 R10 K31 [31536000]
       68 FASTCALL1                        MATH_FLOOR R12 ; [+2]
       69 GETIMPORT                        R11 K34 [math.floor]
       71 CALL                             R11 1 1
       72 DIVK                             R13 R10 K35 [2592000]
       73 FASTCALL1                        MATH_FLOOR R13 ; [+2]
       74 GETIMPORT                        R12 K34 [math.floor]
       76 CALL                             R12 1 1
       77 DIVK                             R14 R10 K36 [86400]
       78 FASTCALL1                        MATH_FLOOR R14 ; [+2]
       79 GETIMPORT                        R13 K34 [math.floor]
       81 CALL                             R13 1 1
       82 LOADNIL                          R14
       83 LOADN                            R15 1
       84 JUMPIFNOTLT                      R15 R11 ; [+12]
       86 GETUPVAL                         R15 1
       87 LOADK                            R17 K17 ["ProfileInsights"]
       88 LOADK                            R18 K37 ["ConnectedForYears"]
       89 DUPTABLE                         R19 K39 [{"age"}]
       90 SETTABLEKS                       R11 R19 K38 ["age"]
       92 NAMECALL                         R15 R15 K19 ["getText"]
       94 CALL                             R15 4 1
       95 MOVE                             R14 R15
       96 JUMP                             ; [+65]
       97 JUMPIFNOTEQKN                    R11 K23 [1] ; [+9]
       99 GETUPVAL                         R15 1
      100 LOADK                            R17 K17 ["ProfileInsights"]
      101 LOADK                            R18 K40 ["ConnectedForOneYear"]
      102 NAMECALL                         R15 R15 K19 ["getText"]
      104 CALL                             R15 3 1
      105 MOVE                             R14 R15
      106 JUMP                             ; [+55]
      107 LOADN                            R15 1
      108 JUMPIFNOTLT                      R15 R12 ; [+12]
      110 GETUPVAL                         R15 1
      111 LOADK                            R17 K17 ["ProfileInsights"]
      112 LOADK                            R18 K41 ["ConnectedForMonths"]
      113 DUPTABLE                         R19 K39 [{"age"}]
      114 SETTABLEKS                       R12 R19 K38 ["age"]
      116 NAMECALL                         R15 R15 K19 ["getText"]
      118 CALL                             R15 4 1
      119 MOVE                             R14 R15
      120 JUMP                             ; [+41]
      121 JUMPIFNOTEQKN                    R12 K23 [1] ; [+9]
      123 GETUPVAL                         R15 1
      124 LOADK                            R17 K17 ["ProfileInsights"]
      125 LOADK                            R18 K42 ["ConnectedForOneMonth"]
      126 NAMECALL                         R15 R15 K19 ["getText"]
      128 CALL                             R15 3 1
      129 MOVE                             R14 R15
      130 JUMP                             ; [+31]
      131 LOADN                            R15 1
      132 JUMPIFNOTLT                      R15 R13 ; [+12]
      134 GETUPVAL                         R15 1
      135 LOADK                            R17 K17 ["ProfileInsights"]
      136 LOADK                            R18 K43 ["ConnectedForDays"]
      137 DUPTABLE                         R19 K39 [{"age"}]
      138 SETTABLEKS                       R13 R19 K38 ["age"]
      140 NAMECALL                         R15 R15 K19 ["getText"]
      142 CALL                             R15 4 1
      143 MOVE                             R14 R15
      144 JUMP                             ; [+17]
      145 JUMPIFNOTEQKN                    R13 K23 [1] ; [+9]
      147 GETUPVAL                         R15 1
      148 LOADK                            R17 K17 ["ProfileInsights"]
      149 LOADK                            R18 K44 ["ConnectedForOneDay"]
      150 NAMECALL                         R15 R15 K19 ["getText"]
      152 CALL                             R15 3 1
      153 MOVE                             R14 R15
      154 JUMP                             ; [+7]
      155 GETUPVAL                         R15 1
      156 LOADK                            R17 K17 ["ProfileInsights"]
      157 LOADK                            R18 K18 ["NotConnected"]
      158 NAMECALL                         R15 R15 K19 ["getText"]
      160 CALL                             R15 3 1
      161 MOVE                             R14 R15
      162 SETTABLEKS                       R14 R8 K9 ["friendshipAgeTranslation"]
      164 GETTABLEKS                       R10 R9 K45 ["accountCreationDateInsight"]
      166 JUMPIFNOT                        R10 ; [+30]
      167 GETUPVAL                         R10 1
      168 NAMECALL                         R10 R10 K46 ["getLocale"]
      170 CALL                             R10 1 1
      171 GETIMPORT                        R11 K48 [DateTime.fromUnixTimestamp]
      173 GETTABLEKS                       R13 R9 K45 ["accountCreationDateInsight"]
      175 GETTABLEKS                       R13 R13 K49 ["accountCreatedDateTime"]
      177 GETTABLEKS                       R13 R13 K30 ["seconds"]
      179 ORK                              R12 R13 K8 [0]
      180 CALL                             R11 1 1
      181 LOADK                            R13 K50 ["YYYY"]
      182 MOVE                             R14 R10
      183 NAMECALL                         R11 R11 K51 ["FormatLocalTime"]
      185 CALL                             R11 3 1
      186 GETUPVAL                         R12 1
      187 LOADK                            R14 K17 ["ProfileInsights"]
      188 LOADK                            R15 K52 ["JoinedInYear"]
      189 DUPTABLE                         R16 K54 [{"year"}]
      190 SETTABLEKS                       R11 R16 K53 ["year"]
      192 NAMECALL                         R12 R12 K19 ["getText"]
      194 CALL                             R12 4 1
      195 SETTABLEKS                       R12 R8 K14 ["accountCreationTranslation"]
      197 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
      199 MOVE                             R11 R2
      200 MOVE                             R12 R8
      201 GETIMPORT                        R10 K57 [table.insert]
      203 CALL                             R10 2 0
      204 FORGLOOP                         R3 2 [inext] ; [-193]
      206 GETUPVAL                         R3 2
      207 MOVE                             R4 R2
      208 CALL                             R3 1 0
      209 RETURN                           R0 0

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
