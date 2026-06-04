PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 2
        3 JUMPIF                           R1 ; [+11]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K0 ["reject"]
        7 LOADK                            R5 K1 ["PostProfileInsightsResponse: %*"]
        8 MOVE                             R7 R2
        9 NAMECALL                         R5 R5 K2 ["format"]
       11 CALL                             R5 2 1
       12 MOVE                             R4 R5
       13 CALL                             R3 1 -1
       14 RETURN                           R3 -1
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K3 ["resolve"]
       18 MOVE                             R4 R0
       19 CALL                             R3 1 -1
       20 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["reject"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K3 [{"userIds", "count", "rankingStrategy"}]
        2 GETTABLEKS                       R4 R0 K0 ["userIds"]
        4 SETTABLEKS                       R4 R3 K0 ["userIds"]
        6 LOADN                            R4 4
        7 SETTABLEKS                       R4 R3 K1 ["count"]
        9 LOADK                            R4 K4 ["tc_info_boost"]
       10 SETTABLEKS                       R4 R3 K2 ["rankingStrategy"]
       12 NAMECALL                         R1 R1 K5 ["JSONEncode"]
       14 CALL                             R1 2 1
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R2 R2 K6 ["composeUrl"]
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R3 R3 K7 ["APIS_URL"]
       21 LOADK                            R4 K8 ["profile-insights-api/v1/multiProfileInsights"]
       22 CALL                             R2 2 1
       23 DUPTABLE                         R3 K13 [{"Method", "Url", "Headers", "Body"}]
       24 LOADK                            R4 K14 ["POST"]
       25 SETTABLEKS                       R4 R3 K9 ["Method"]
       27 SETTABLEKS                       R2 R3 K10 ["Url"]
       29 NEWTABLE                         R4 2 0
       31 LOADK                            R5 K15 ["application/json"]
       32 SETTABLEKS                       R5 R4 K16 ["Content-Type"]
       34 LOADK                            R5 K15 ["application/json"]
       35 SETTABLEKS                       R5 R4 K17 ["Accept"]
       37 SETTABLEKS                       R4 R3 K11 ["Headers"]
       39 SETTABLEKS                       R1 R3 K12 ["Body"]
       41 GETUPVAL                         R4 2
       42 GETTABLEKS                       R4 R4 K18 ["Request"]
       44 MOVE                             R5 R3
       45 CALL                             R4 1 1
       46 DUPCLOSURE                       R6 K19 [PROTO_0]
       47 CAPTURE                          UPVAL U3
       48 CAPTURE                          UPVAL U4
       49 NAMECALL                         R4 R4 K20 ["andThen"]
       51 CALL                             R4 2 1
       52 DUPCLOSURE                       R6 K21 [PROTO_1]
       53 CAPTURE                          UPVAL U4
       54 NAMECALL                         R4 R4 K22 ["catch"]
       56 CALL                             R4 2 -1
       57 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TeamCreateCollaborators"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Promise"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K10 [game]
       23 LOADK                            R5 K11 ["HttpService"]
       24 NAMECALL                         R3 R3 K12 ["GetService"]
       26 CALL                             R3 2 1
       27 GETTABLEKS                       R4 R0 K13 ["Src"]
       29 GETTABLEKS                       R4 R4 K14 ["Contexts"]
       31 GETIMPORT                        R5 K5 [require]
       33 GETTABLEKS                       R6 R4 K15 ["NetworkContext"]
       35 CALL                             R5 1 1
       36 GETTABLEKS                       R6 R1 K16 ["RobloxAPI"]
       38 GETTABLEKS                       R6 R6 K17 ["Url"]
       40 GETTABLEKS                       R7 R6 K18 ["new"]
       42 CALL                             R7 0 1
       43 GETTABLEKS                       R8 R0 K13 ["Src"]
       45 GETTABLEKS                       R8 R8 K19 ["Network"]
       47 GETIMPORT                        R9 K5 [require]
       49 GETTABLEKS                       R10 R8 K20 ["Http"]
       51 CALL                             R9 1 1
       52 GETIMPORT                        R10 K5 [require]
       54 GETTABLEKS                       R11 R0 K13 ["Src"]
       56 GETTABLEKS                       R11 R11 K21 ["Types"]
       58 CALL                             R10 1 1
       59 GETIMPORT                        R11 K5 [require]
       61 GETTABLEKS                       R12 R0 K6 ["Packages"]
       63 GETTABLEKS                       R12 R12 K22 ["t"]
       65 CALL                             R11 1 1
       66 GETTABLEKS                       R12 R11 K23 ["interface"]
       68 DUPTABLE                         R13 K26 [{"seconds", "nanos"}]
       69 GETTABLEKS                       R14 R11 K27 ["number"]
       71 SETTABLEKS                       R14 R13 K24 ["seconds"]
       73 GETTABLEKS                       R14 R11 K27 ["number"]
       75 SETTABLEKS                       R14 R13 K25 ["nanos"]
       77 CALL                             R12 1 1
       78 GETTABLEKS                       R13 R11 K23 ["interface"]
       80 DUPTABLE                         R14 K29 [{"friendsSinceDateTime"}]
       81 SETTABLEKS                       R12 R14 K28 ["friendsSinceDateTime"]
       83 CALL                             R13 1 1
       84 GETTABLEKS                       R14 R11 K23 ["interface"]
       86 DUPTABLE                         R15 K31 [{"mutualFriends"}]
       87 GETTABLEKS                       R16 R11 K32 ["table"]
       89 SETTABLEKS                       R16 R15 K30 ["mutualFriends"]
       91 CALL                             R14 1 1
       92 GETTABLEKS                       R15 R11 K23 ["interface"]
       94 DUPTABLE                         R16 K26 [{"seconds", "nanos"}]
       95 GETTABLEKS                       R17 R11 K27 ["number"]
       97 SETTABLEKS                       R17 R16 K24 ["seconds"]
       99 GETTABLEKS                       R17 R11 K27 ["number"]
      101 SETTABLEKS                       R17 R16 K25 ["nanos"]
      103 CALL                             R15 1 1
      104 GETTABLEKS                       R16 R11 K23 ["interface"]
      106 DUPTABLE                         R17 K34 [{"accountCreatedDateTime"}]
      107 SETTABLEKS                       R15 R17 K33 ["accountCreatedDateTime"]
      109 CALL                             R16 1 1
      110 GETTABLEKS                       R17 R11 K23 ["interface"]
      112 DUPTABLE                         R18 K38 [{"friendshipAgeInsight", "mutualFriendInsight", "accountCreationDateInsight"}]
      113 GETTABLEKS                       R19 R11 K39 ["optional"]
      115 MOVE                             R20 R13
      116 CALL                             R19 1 1
      117 SETTABLEKS                       R19 R18 K35 ["friendshipAgeInsight"]
      119 GETTABLEKS                       R19 R11 K39 ["optional"]
      121 MOVE                             R20 R14
      122 CALL                             R19 1 1
      123 SETTABLEKS                       R19 R18 K36 ["mutualFriendInsight"]
      125 GETTABLEKS                       R19 R11 K39 ["optional"]
      127 MOVE                             R20 R16
      128 CALL                             R19 1 1
      129 SETTABLEKS                       R19 R18 K37 ["accountCreationDateInsight"]
      131 CALL                             R17 1 1
      132 GETTABLEKS                       R18 R11 K23 ["interface"]
      134 DUPTABLE                         R19 K42 [{"targetUser", "profileInsights"}]
      135 GETTABLEKS                       R20 R11 K27 ["number"]
      137 SETTABLEKS                       R20 R19 K40 ["targetUser"]
      139 GETTABLEKS                       R20 R11 K43 ["array"]
      141 MOVE                             R21 R17
      142 CALL                             R20 1 1
      143 SETTABLEKS                       R20 R19 K41 ["profileInsights"]
      145 CALL                             R18 1 1
      146 GETTABLEKS                       R19 R11 K23 ["interface"]
      148 DUPTABLE                         R20 K45 [{"userInsights"}]
      149 GETTABLEKS                       R21 R11 K43 ["array"]
      151 MOVE                             R22 R18
      152 CALL                             R21 1 1
      153 SETTABLEKS                       R21 R20 K44 ["userInsights"]
      155 CALL                             R19 1 1
      156 DUPCLOSURE                       R20 K46 [PROTO_2]
      157 CAPTURE                          VAL R3
      158 CAPTURE                          VAL R7
      159 CAPTURE                          VAL R9
      160 CAPTURE                          VAL R19
      161 CAPTURE                          VAL R2
      162 RETURN                           R20 1
