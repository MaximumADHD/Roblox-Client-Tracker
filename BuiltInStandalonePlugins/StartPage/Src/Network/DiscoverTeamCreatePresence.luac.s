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
       38 DUPTABLE                         R4 K10 [{"userIds", "size", "format", "isCircular"}]
       39 SETTABLEKS                       R3 R4 K6 ["userIds"]
       41 LOADK                            R5 K11 ["48x48"]
       42 SETTABLEKS                       R5 R4 K7 ["size"]
       44 LOADK                            R5 K12 ["png"]
       45 SETTABLEKS                       R5 R4 K8 ["format"]
       47 LOADB                            R5 1
       48 SETTABLEKS                       R5 R4 K9 ["isCircular"]
       50 GETUPVAL                         R5 2
       51 GETTABLEKS                       R5 R5 K13 ["new"]
       53 CALL                             R5 0 1
       54 GETTABLEKS                       R6 R5 K14 ["composeUrl"]
       56 GETUPVAL                         R7 3
       57 GETTABLEKS                       R7 R7 K15 ["AVATAR_ICON_URL"]
       59 GETTABLEKS                       R7 R7 K16 ["Prefix"]
       61 GETUPVAL                         R8 3
       62 GETTABLEKS                       R8 R8 K15 ["AVATAR_ICON_URL"]
       64 GETTABLEKS                       R8 R8 K17 ["Url"]
       66 CALL                             R8 0 1
       67 MOVE                             R9 R4
       68 CALL                             R6 3 1
       69 GETUPVAL                         R7 4
       70 MOVE                             R9 R6
       71 NAMECALL                         R7 R7 K18 ["get"]
       73 CALL                             R7 2 1
       74 GETUPVAL                         R8 4
       75 MOVE                             R10 R7
       76 NAMECALL                         R8 R8 K19 ["parseJson"]
       78 CALL                             R8 2 1
       79 NEWCLOSURE                       R10 P1
       80 CAPTURE                          UPVAL U5
       81 CAPTURE                          UPVAL U1
       82 CAPTURE                          UPVAL U6
       83 CAPTURE                          VAL R2
       84 CAPTURE                          UPVAL U7
       85 CAPTURE                          UPVAL U8
       86 NAMECALL                         R8 R8 K20 ["andThen"]
       88 CALL                             R8 2 1
       89 DUPCLOSURE                       R10 K21 [PROTO_5]
       90 NAMECALL                         R8 R8 K22 ["catch"]
       92 CALL                             R8 2 0
       93 RETURN                           R0 0

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
        4 DUPTABLE                         R1 K3 [{"ids", "maxUsers"}]
        5 SETTABLEKS                       R0 R1 K1 ["ids"]
        7 LOADN                            R2 10
        8 SETTABLEKS                       R2 R1 K2 ["maxUsers"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K4 ["TEAM_CREATE_ACTIVE_SESSION_MEMBERS_URL"]
       13 GETTABLEKS                       R3 R3 K5 ["Prefix"]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K4 ["TEAM_CREATE_ACTIVE_SESSION_MEMBERS_URL"]
       18 GETTABLEKS                       R4 R4 K6 ["Url"]
       20 CALL                             R4 0 1
       21 CONCAT                           R2 R3 R4
       22 MOVE                             R3 R2
       23 LOADK                            R4 K7 ["?maxUsers="]
       24 GETTABLEKS                       R5 R1 K2 ["maxUsers"]
       26 CONCAT                           R2 R3 R5
       27 GETTABLEKS                       R3 R1 K1 ["ids"]
       29 LOADNIL                          R4
       30 LOADNIL                          R5
       31 FORGPREP                         R3
       32 MOVE                             R8 R2
       33 LOADK                            R9 K8 ["&ids="]
       34 MOVE                             R10 R7
       35 CONCAT                           R2 R8 R10
       36 FORGLOOP                         R3 2 ; [-5]
       38 GETUPVAL                         R3 1
       39 MOVE                             R5 R2
       40 NAMECALL                         R3 R3 K9 ["get"]
       42 CALL                             R3 2 1
       43 GETUPVAL                         R4 1
       44 MOVE                             R6 R3
       45 NAMECALL                         R4 R4 K10 ["parseJson"]
       47 CALL                             R4 2 1
       48 DUPCLOSURE                       R6 K11 [PROTO_6]
       49 CAPTURE                          UPVAL U2
       50 CAPTURE                          UPVAL U3
       51 CAPTURE                          UPVAL U4
       52 CAPTURE                          UPVAL U0
       53 CAPTURE                          UPVAL U1
       54 CAPTURE                          UPVAL U5
       55 CAPTURE                          UPVAL U6
       56 CAPTURE                          UPVAL U7
       57 CAPTURE                          UPVAL U8
       58 NAMECALL                         R4 R4 K12 ["andThen"]
       60 CALL                             R4 2 1
       61 DUPCLOSURE                       R6 K13 [PROTO_7]
       62 NAMECALL                         R4 R4 K14 ["catch"]
       64 CALL                             R4 2 0
       65 RETURN                           R0 0

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
       84 DUPTABLE                         R11 K26 [{"isInternal", "loggingLevel"}]
       85 LOADB                            R12 1
       86 SETTABLEKS                       R12 R11 K24 ["isInternal"]
       88 SETTABLEKS                       R1 R11 K25 ["loggingLevel"]
       90 CALL                             R10 1 1
       91 GETIMPORT                        R11 K5 [require]
       93 GETTABLEKS                       R12 R0 K6 ["Src"]
       95 GETTABLEKS                       R12 R12 K17 ["Util"]
       97 GETTABLEKS                       R12 R12 K18 ["Services"]
       99 CALL                             R11 1 1
      100 GETTABLEKS                       R12 R11 K27 ["StartPageManager"]
      102 GETIMPORT                        R13 K5 [require]
      104 GETTABLEKS                       R14 R0 K13 ["Packages"]
      106 GETTABLEKS                       R14 R14 K28 ["Dash"]
      108 CALL                             R13 1 1
      109 GETTABLEKS                       R14 R13 K29 ["collect"]
      111 GETTABLEKS                       R15 R13 K30 ["collectArray"]
      113 GETIMPORT                        R16 K5 [require]
      115 GETTABLEKS                       R17 R0 K6 ["Src"]
      117 GETTABLEKS                       R17 R17 K15 ["Network"]
      119 GETTABLEKS                       R17 R17 K31 ["GameCache"]
      121 CALL                             R16 1 1
      122 MOVE                             R17 R8
      123 GETTABLEKS                       R18 R4 K32 ["validate"]
      125 CALL                             R17 1 1
      126 MOVE                             R18 R8
      127 GETTABLEKS                       R19 R3 K32 ["validate"]
      129 CALL                             R18 1 1
      130 DUPCLOSURE                       R19 K33 [PROTO_8]
      131 CAPTURE                          VAL R6
      132 CAPTURE                          VAL R10
      133 CAPTURE                          VAL R17
      134 CAPTURE                          VAL R14
      135 CAPTURE                          VAL R9
      136 CAPTURE                          VAL R18
      137 CAPTURE                          VAL R15
      138 CAPTURE                          VAL R16
      139 CAPTURE                          VAL R12
      140 RETURN                           R19 1
