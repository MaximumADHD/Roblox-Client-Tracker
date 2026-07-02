PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["id"]
        2 GETTABLEKS                       R3 R1 K1 ["activeUsers"]
        4 RETURN                           R2 2

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["targetId"]
        2 GETTABLEKS                       R3 R1 K1 ["imageUrl"]
        4 RETURN                           R2 2

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R4 R1 K0 ["id"]
        3 GETTABLE                         R2 R3 R4
        4 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          UPVAL U1
        4 CALL                             R2 2 1
        5 DUPTABLE                         R3 K2 [{"Id", "TeamCreateCDNUrls"}]
        6 SETTABLEKS                       R0 R3 K0 ["Id"]
        8 SETTABLEKS                       R2 R3 K1 ["TeamCreateCDNUrls"]
       10 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R3 R1 K0 ["data"]
        6 DUPCLOSURE                       R4 K1 [PROTO_1]
        7 CALL                             R2 2 1
        8 GETUPVAL                         R3 2
        9 GETUPVAL                         R4 3
       10 NEWCLOSURE                       R5 P1
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          VAL R2
       13 CALL                             R3 2 1
       14 GETUPVAL                         R4 4
       15 MOVE                             R6 R3
       16 NAMECALL                         R4 R4 K2 ["upsertItems"]
       18 CALL                             R4 2 0
       19 MOVE                             R4 R2
       20 LOADNIL                          R5
       21 LOADNIL                          R6
       22 FORGPREP                         R4
       23 GETUPVAL                         R9 5
       24 MOVE                             R11 R8
       25 NAMECALL                         R9 R9 K3 ["generateTempUrlInContentProvider"]
       27 CALL                             R9 2 0
       28 FORGLOOP                         R4 2 ; [-6]
       30 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["DiscoverTeamCreatePresence::Icons experienced an error: %*"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R3 R3 K3 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R3 R1 K0 ["data"]
        6 DUPCLOSURE                       R4 K1 [PROTO_0]
        7 CALL                             R2 2 1
        8 NEWTABLE                         R3 0 0
       10 MOVE                             R4 R2
       11 LOADNIL                          R5
       12 LOADNIL                          R6
       13 FORGPREP                         R4
       14 MOVE                             R9 R8
       15 LOADNIL                          R10
       16 LOADNIL                          R11
       17 FORGPREP                         R9
       18 GETTABLEKS                       R14 R13 K2 ["id"]
       20 JUMPIFNOT                        R14 ; [+8]
       21 GETTABLEKS                       R16 R13 K2 ["id"]
       23 FASTCALL2                        TABLE_INSERT R3 R16 ; [+4]
       25 MOVE                             R15 R3
       26 GETIMPORT                        R14 K5 [table.insert]
       28 CALL                             R14 2 0
       29 FORGLOOP                         R9 2 ; [-12]
       31 FORGLOOP                         R4 2 ; [-18]
       33 LENGTH                           R4 R3
       34 LOADN                            R5 0
       35 JUMPIFNOTLE                      R4 R5 ; [+2]
       37 RETURN                           R0 0
       38 DUPTABLE                         R4 K13 [{["userIds"], ["size"] = "48x48", ["format"] = "png", ["isCircular"] = True}]
       39 SETTABLEKS                       R3 R4 K6 ["userIds"]
       41 GETUPVAL                         R5 2
       42 GETTABLEKS                       R5 R5 K14 ["new"]
       44 CALL                             R5 0 1
       45 GETTABLEKS                       R6 R5 K15 ["composeUrl"]
       47 GETUPVAL                         R7 3
       48 GETTABLEKS                       R7 R7 K16 ["AVATAR_ICON_URL"]
       50 GETTABLEKS                       R7 R7 K17 ["Prefix"]
       52 GETUPVAL                         R8 3
       53 GETTABLEKS                       R8 R8 K16 ["AVATAR_ICON_URL"]
       55 GETTABLEKS                       R8 R8 K18 ["Url"]
       57 CALL                             R8 0 1
       58 MOVE                             R9 R4
       59 CALL                             R6 3 1
       60 GETUPVAL                         R7 4
       61 MOVE                             R9 R6
       62 NAMECALL                         R7 R7 K19 ["get"]
       64 CALL                             R7 2 1
       65 GETUPVAL                         R8 4
       66 MOVE                             R10 R7
       67 NAMECALL                         R8 R8 K20 ["parseJson"]
       69 CALL                             R8 2 1
       70 NEWCLOSURE                       R10 P1
       71 CAPTURE                          UPVAL U5
       72 CAPTURE                          UPVAL U1
       73 CAPTURE                          UPVAL U6
       74 CAPTURE                          VAL R2
       75 CAPTURE                          UPVAL U7
       76 CAPTURE                          UPVAL U8
       77 NAMECALL                         R8 R8 K21 ["andThen"]
       79 CALL                             R8 2 1
       80 DUPCLOSURE                       R10 K22 [PROTO_5]
       81 NAMECALL                         R8 R8 K23 ["catch"]
       83 CALL                             R8 2 0
       84 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["DiscoverTeamCreatePresence experienced an error: %*"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R3 R3 K3 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_8:
        0 LENGTH                           R1 R0
        1 JUMPIFNOTEQKN                    R1 K0 [0] ; [+2]
        3 RETURN                           R0 0
        4 DUPTABLE                         R1 K4 [{["ids"], ["maxUsers"] = 10}]
        5 SETTABLEKS                       R0 R1 K1 ["ids"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K5 ["TEAM_CREATE_ACTIVE_SESSION_MEMBERS_URL"]
       10 GETTABLEKS                       R3 R3 K6 ["Prefix"]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K5 ["TEAM_CREATE_ACTIVE_SESSION_MEMBERS_URL"]
       15 GETTABLEKS                       R4 R4 K7 ["Url"]
       17 CALL                             R4 0 1
       18 CONCAT                           R2 R3 R4
       19 MOVE                             R3 R2
       20 LOADK                            R4 K8 ["?maxUsers="]
       21 GETTABLEKS                       R5 R1 K2 ["maxUsers"]
       23 CONCAT                           R2 R3 R5
       24 GETTABLEKS                       R3 R1 K1 ["ids"]
       26 LOADNIL                          R4
       27 LOADNIL                          R5
       28 FORGPREP                         R3
       29 MOVE                             R8 R2
       30 LOADK                            R9 K9 ["&ids="]
       31 MOVE                             R10 R7
       32 CONCAT                           R2 R8 R10
       33 FORGLOOP                         R3 2 ; [-5]
       35 GETUPVAL                         R3 1
       36 MOVE                             R5 R2
       37 NAMECALL                         R3 R3 K10 ["get"]
       39 CALL                             R3 2 1
       40 GETUPVAL                         R4 1
       41 MOVE                             R6 R3
       42 NAMECALL                         R4 R4 K11 ["parseJson"]
       44 CALL                             R4 2 1
       45 DUPCLOSURE                       R6 K12 [PROTO_6]
       46 CAPTURE                          UPVAL U2
       47 CAPTURE                          UPVAL U3
       48 CAPTURE                          UPVAL U4
       49 CAPTURE                          UPVAL U0
       50 CAPTURE                          UPVAL U1
       51 CAPTURE                          UPVAL U5
       52 CAPTURE                          UPVAL U6
       53 CAPTURE                          UPVAL U7
       54 CAPTURE                          UPVAL U8
       55 NAMECALL                         R4 R4 K13 ["andThen"]
       57 CALL                             R4 2 1
       58 DUPCLOSURE                       R6 K14 [PROTO_7]
       59 NAMECALL                         R4 R4 K15 ["catch"]
       61 CALL                             R4 2 0
       62 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["SharedFlags"]
       13 GETTABLEKS                       R2 R2 K8 ["getFIntDebugLuaStartPageLogging"]
       15 CALL                             R1 1 1
       16 CALL                             R1 0 1
       17 GETIMPORT                        R2 K5 [require]
       19 GETTABLEKS                       R3 R0 K6 ["Src"]
       21 GETTABLEKS                       R3 R3 K9 ["Types"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K5 [require]
       26 GETTABLEKS                       R4 R0 K6 ["Src"]
       28 GETTABLEKS                       R4 R4 K10 ["Models"]
       30 GETTABLEKS                       R4 R4 K11 ["ApiArrayResponseThumbnailResponse"]
       32 CALL                             R3 1 1
       33 GETIMPORT                        R4 K5 [require]
       35 GETTABLEKS                       R5 R0 K6 ["Src"]
       37 GETTABLEKS                       R5 R5 K10 ["Models"]
       39 GETTABLEKS                       R5 R5 K12 ["MultiGetUniversesActiveSessionMembersResponse"]
       41 CALL                             R4 1 1
       42 GETIMPORT                        R5 K5 [require]
       44 GETTABLEKS                       R6 R0 K13 ["Packages"]
       46 GETTABLEKS                       R6 R6 K14 ["Framework"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K5 [require]
       51 GETTABLEKS                       R7 R0 K6 ["Src"]
       53 GETTABLEKS                       R7 R7 K15 ["Network"]
       55 GETTABLEKS                       R7 R7 K16 ["Urls"]
       57 CALL                             R6 1 1
       58 GETIMPORT                        R7 K5 [require]
       60 GETTABLEKS                       R8 R0 K6 ["Src"]
       62 GETTABLEKS                       R8 R8 K17 ["Util"]
       64 GETTABLEKS                       R8 R8 K18 ["Services"]
       66 CALL                             R7 1 1
       67 GETTABLEKS                       R7 R7 K19 ["Networking"]
       69 GETIMPORT                        R8 K5 [require]
       71 GETTABLEKS                       R9 R0 K6 ["Src"]
       73 GETTABLEKS                       R9 R9 K17 ["Util"]
       75 GETTABLEKS                       R9 R9 K20 ["createResponseValidator"]
       77 CALL                             R8 1 1
       78 GETTABLEKS                       R9 R5 K21 ["RobloxAPI"]
       80 GETTABLEKS                       R9 R9 K22 ["Url"]
       82 GETTABLEKS                       R10 R7 K23 ["new"]
       84 DUPTABLE                         R11 K27 [{["isInternal"] = True, ["loggingLevel"]}]
       85 SETTABLEKS                       R1 R11 K26 ["loggingLevel"]
       87 CALL                             R10 1 1
       88 GETIMPORT                        R11 K5 [require]
       90 GETTABLEKS                       R12 R0 K6 ["Src"]
       92 GETTABLEKS                       R12 R12 K17 ["Util"]
       94 GETTABLEKS                       R12 R12 K18 ["Services"]
       96 CALL                             R11 1 1
       97 GETTABLEKS                       R12 R11 K28 ["StartPageManager"]
       99 GETIMPORT                        R13 K5 [require]
      101 GETTABLEKS                       R14 R0 K13 ["Packages"]
      103 GETTABLEKS                       R14 R14 K29 ["Dash"]
      105 CALL                             R13 1 1
      106 GETTABLEKS                       R14 R13 K30 ["collect"]
      108 GETTABLEKS                       R15 R13 K31 ["collectArray"]
      110 GETIMPORT                        R16 K5 [require]
      112 GETTABLEKS                       R17 R0 K6 ["Src"]
      114 GETTABLEKS                       R17 R17 K15 ["Network"]
      116 GETTABLEKS                       R17 R17 K32 ["GameCache"]
      118 CALL                             R16 1 1
      119 MOVE                             R17 R8
      120 GETTABLEKS                       R18 R4 K33 ["validate"]
      122 CALL                             R17 1 1
      123 MOVE                             R18 R8
      124 GETTABLEKS                       R19 R3 K33 ["validate"]
      126 CALL                             R18 1 1
      127 DUPCLOSURE                       R19 K34 [PROTO_8]
      128 CAPTURE                          VAL R6
      129 CAPTURE                          VAL R10
      130 CAPTURE                          VAL R17
      131 CAPTURE                          VAL R14
      132 CAPTURE                          VAL R9
      133 CAPTURE                          VAL R18
      134 CAPTURE                          VAL R15
      135 CAPTURE                          VAL R16
      136 CAPTURE                          VAL R12
      137 RETURN                           R19 1
