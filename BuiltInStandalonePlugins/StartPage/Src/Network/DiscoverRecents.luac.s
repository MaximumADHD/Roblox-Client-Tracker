PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 LOADN                            R3 0
        3 GETUPVAL                         R4 2
        4 NAMECALL                         R0 R0 K0 ["upsertItemsForList"]
        6 CALL                             R0 4 0
        7 GETUPVAL                         R0 0
        8 GETUPVAL                         R2 1
        9 GETUPVAL                         R4 2
       10 LENGTH                           R3 R4
       11 NAMECALL                         R0 R0 K1 ["setTargetCount"]
       13 CALL                             R0 3 0
       14 GETUPVAL                         R0 3
       15 GETUPVAL                         R1 4
       16 GETUPVAL                         R2 1
       17 CALL                             R0 2 0
       18 GETUPVAL                         R0 5
       19 GETUPVAL                         R1 4
       20 CALL                             R0 1 0
       21 GETUPVAL                         R0 6
       22 GETUPVAL                         R1 4
       23 CALL                             R0 1 0
       24 GETUPVAL                         R0 7
       25 GETUPVAL                         R1 4
       26 CALL                             R0 1 0
       27 GETUPVAL                         R0 8
       28 JUMPIFNOT                        R0 ; [+6]
       29 GETUPVAL                         R0 9
       30 GETUPVAL                         R1 4
       31 CALL                             R0 1 0
       32 GETUPVAL                         R0 10
       33 GETUPVAL                         R1 4
       34 CALL                             R0 1 0
       35 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 NAMECALL                         R3 R3 K0 ["getRecentAPIGamesFromRegistry"]
        3 CALL                             R3 1 1
        4 NEWTABLE                         R4 0 0
        6 JUMPIFNOT                        R0 ; [+6]
        7 GETTABLEKS                       R6 R0 K1 ["search"]
        9 JUMPIFNOT                        R6 ; [+3]
       10 GETTABLEKS                       R5 R0 K1 ["search"]
       12 JUMP                             ; [+1]
       13 LOADK                            R5 K2 [""]
       14 NAMECALL                         R6 R5 K3 ["lower"]
       16 CALL                             R6 1 1
       17 GETTABLEKS                       R7 R0 K4 ["getRecentAPIGames"]
       19 JUMPIFNOT                        R7 ; [+80]
       20 JUMPIFNOT                        R3 ; [+79]
       21 NEWTABLE                         R7 0 0
       23 MOVE                             R8 R3
       24 LOADNIL                          R9
       25 LOADNIL                          R10
       26 FORGPREP                         R8
       27 GETTABLEKS                       R13 R12 K5 ["Name"]
       29 NAMECALL                         R13 R13 K3 ["lower"]
       31 CALL                             R13 1 1
       32 GETIMPORT                        R14 K8 [string.find]
       34 MOVE                             R15 R13
       35 MOVE                             R16 R6
       36 CALL                             R14 2 1
       37 JUMPIFNOT                        R14 ; [+33]
       38 GETTABLEKS                       R15 R12 K9 ["Id"]
       40 FASTCALL1                        TONUMBER R15 ; [+2]
       41 GETIMPORT                        R14 K11 [tonumber]
       43 CALL                             R14 1 1
       44 FASTCALL2K                       ASSERT R14 K12 ; [+5]
       46 MOVE                             R16 R14
       47 LOADK                            R17 K12 ["IDs returned from StartPageManager must be numeric"]
       48 GETIMPORT                        R15 K14 [assert]
       50 CALL                             R15 2 0
       51 DUPTABLE                         R17 K16 [{"Id", "LastViewed"}]
       52 SETTABLEKS                       R14 R17 K9 ["Id"]
       54 GETTABLEKS                       R18 R12 K15 ["LastViewed"]
       56 SETTABLEKS                       R18 R17 K15 ["LastViewed"]
       58 FASTCALL2                        TABLE_INSERT R4 R17 ; [+4]
       60 MOVE                             R16 R4
       61 GETIMPORT                        R15 K19 [table.insert]
       63 CALL                             R15 2 0
       64 FASTCALL2                        TABLE_INSERT R7 R14 ; [+5]
       66 MOVE                             R16 R7
       67 MOVE                             R17 R14
       68 GETIMPORT                        R15 K19 [table.insert]
       70 CALL                             R15 2 0
       71 FORGLOOP                         R8 2 ; [-45]
       73 GETUPVAL                         R8 1
       74 JUMPIFNOT                        R8 ; [+3]
       75 GETUPVAL                         R8 2
       76 MOVE                             R9 R7
       77 CALL                             R8 1 0
       78 LENGTH                           R8 R4
       79 LOADN                            R9 0
       80 JUMPIFNOTLT                      R9 R8 ; [+19]
       82 GETUPVAL                         R8 3
       83 MOVE                             R9 R4
       84 CALL                             R8 1 1
       85 NEWCLOSURE                       R10 P0
       86 CAPTURE                          UPVAL U4
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R4
       89 CAPTURE                          UPVAL U5
       90 CAPTURE                          VAL R7
       91 CAPTURE                          UPVAL U6
       92 CAPTURE                          UPVAL U7
       93 CAPTURE                          UPVAL U8
       94 CAPTURE                          UPVAL U9
       95 CAPTURE                          UPVAL U10
       96 CAPTURE                          UPVAL U11
       97 NAMECALL                         R8 R8 K20 ["andThen"]
       99 CALL                             R8 2 0
      100 GETTABLEKS                       R7 R0 K21 ["getRecentLocalFiles"]
      102 JUMPIFNOT                        R7 ; [+42]
      103 GETUPVAL                         R7 0
      104 NAMECALL                         R7 R7 K22 ["getLocalGamesFromRegistry"]
      106 CALL                             R7 1 1
      107 JUMPIFNOT                        R7 ; [+37]
      108 LENGTH                           R10 R7
      109 LOADN                            R8 1
      110 LOADN                            R9 255
      111 FORNPREP                         R8
      112 GETTABLE                         R12 R7 R10
      113 GETTABLEKS                       R11 R12 K5 ["Name"]
      115 NAMECALL                         R11 R11 K3 ["lower"]
      117 CALL                             R11 1 1
      118 GETIMPORT                        R12 K8 [string.find]
      120 MOVE                             R13 R11
      121 MOVE                             R14 R6
      122 CALL                             R12 2 1
      123 JUMPIF                           R12 ; [+5]
      124 GETIMPORT                        R12 K24 [table.remove]
      126 MOVE                             R13 R7
      127 MOVE                             R14 R10
      128 CALL                             R12 2 0
      129 FORNLOOP                         R8
      130 GETUPVAL                         R8 4
      131 MOVE                             R10 R2
      132 LOADN                            R11 0
      133 MOVE                             R12 R7
      134 NAMECALL                         R8 R8 K25 ["upsertItemsForList"]
      136 CALL                             R8 4 0
      137 GETUPVAL                         R8 4
      138 MOVE                             R10 R2
      139 LENGTH                           R12 R4
      140 LENGTH                           R13 R7
      141 ADD                              R11 R12 R13
      142 NAMECALL                         R8 R8 K26 ["setTargetCount"]
      144 CALL                             R8 3 0
      145 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 CALL                             R0 3 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R3 K2 [task.defer]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R2
        7 CALL                             R3 1 0
        8 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["SharedFlags"]
       13 GETTABLEKS                       R2 R3 K8 ["getFFlagStartPageDiscoverRecentPlaces"]
       15 CALL                             R1 1 1
       16 CALL                             R1 0 1
       17 GETIMPORT                        R2 K5 [require]
       19 GETTABLEKS                       R4 R0 K6 ["Src"]
       21 GETTABLEKS                       R3 R4 K9 ["Types"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K5 [require]
       26 GETTABLEKS                       R6 R0 K6 ["Src"]
       28 GETTABLEKS                       R5 R6 K10 ["Network"]
       30 GETTABLEKS                       R4 R5 K11 ["DiscoverPlaces"]
       32 CALL                             R3 1 1
       33 GETIMPORT                        R4 K5 [require]
       35 GETTABLEKS                       R7 R0 K6 ["Src"]
       37 GETTABLEKS                       R6 R7 K10 ["Network"]
       39 GETTABLEKS                       R5 R6 K12 ["DiscoverAutogeneratedIcons"]
       41 CALL                             R4 1 1
       42 GETIMPORT                        R5 K5 [require]
       44 GETTABLEKS                       R8 R0 K6 ["Src"]
       46 GETTABLEKS                       R7 R8 K10 ["Network"]
       48 GETTABLEKS                       R6 R7 K13 ["DiscoverTeamCreatePresence"]
       50 CALL                             R5 1 1
       51 GETIMPORT                        R6 K5 [require]
       53 GETTABLEKS                       R9 R0 K6 ["Src"]
       55 GETTABLEKS                       R8 R9 K10 ["Network"]
       57 GETTABLEKS                       R7 R8 K14 ["DiscoverAgeRecommendations"]
       59 CALL                             R6 1 1
       60 GETIMPORT                        R7 K5 [require]
       62 GETTABLEKS                       R10 R0 K6 ["Src"]
       64 GETTABLEKS                       R9 R10 K10 ["Network"]
       66 GETTABLEKS                       R8 R9 K15 ["DiscoverUniverseData"]
       68 CALL                             R7 1 1
       69 GETIMPORT                        R8 K5 [require]
       71 GETTABLEKS                       R11 R0 K6 ["Src"]
       73 GETTABLEKS                       R10 R11 K10 ["Network"]
       75 GETTABLEKS                       R9 R10 K16 ["DiscoverTeamCreateStatus"]
       77 CALL                             R8 1 1
       78 GETIMPORT                        R9 K5 [require]
       80 GETTABLEKS                       R12 R0 K6 ["Src"]
       82 GETTABLEKS                       R11 R12 K10 ["Network"]
       84 GETTABLEKS                       R10 R11 K17 ["DiscoverCoreContent"]
       86 CALL                             R9 1 1
       87 GETIMPORT                        R10 K5 [require]
       89 GETTABLEKS                       R13 R0 K6 ["Src"]
       91 GETTABLEKS                       R12 R13 K10 ["Network"]
       93 GETTABLEKS                       R11 R12 K18 ["DiscoverExperienceReleases"]
       95 CALL                             R10 1 1
       96 GETIMPORT                        R11 K5 [require]
       98 GETTABLEKS                       R14 R0 K6 ["Src"]
      100 GETTABLEKS                       R13 R14 K7 ["SharedFlags"]
      102 GETTABLEKS                       R12 R13 K19 ["getFFlagLuaStartPageCoreContentStatus"]
      104 CALL                             R11 1 1
      105 CALL                             R11 0 1
      106 GETIMPORT                        R12 K5 [require]
      108 GETTABLEKS                       R15 R0 K6 ["Src"]
      110 GETTABLEKS                       R14 R15 K20 ["Util"]
      112 GETTABLEKS                       R13 R14 K21 ["Services"]
      114 CALL                             R12 1 1
      115 GETTABLEKS                       R13 R12 K22 ["StartPageManager"]
      117 GETIMPORT                        R14 K5 [require]
      119 GETTABLEKS                       R17 R0 K6 ["Src"]
      121 GETTABLEKS                       R16 R17 K10 ["Network"]
      123 GETTABLEKS                       R15 R16 K23 ["GameCache"]
      125 CALL                             R14 1 1
      126 DUPCLOSURE                       R15 K24 [PROTO_1]
      127 CAPTURE                          VAL R13
      128 CAPTURE                          VAL R1
      129 CAPTURE                          VAL R3
      130 CAPTURE                          VAL R7
      131 CAPTURE                          VAL R14
      132 CAPTURE                          VAL R4
      133 CAPTURE                          VAL R5
      134 CAPTURE                          VAL R6
      135 CAPTURE                          VAL R8
      136 CAPTURE                          VAL R11
      137 CAPTURE                          VAL R9
      138 CAPTURE                          VAL R10
      139 DUPCLOSURE                       R16 K25 [PROTO_3]
      140 CAPTURE                          VAL R15
      141 RETURN                           R16 1
