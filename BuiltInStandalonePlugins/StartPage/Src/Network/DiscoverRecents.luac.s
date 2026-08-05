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
       28 JUMPIFNOT                        R0 ; [+11]
       29 GETUPVAL                         R0 9
       30 GETUPVAL                         R1 4
       31 CALL                             R0 1 0
       32 GETUPVAL                         R0 10
       33 JUMPIF                           R0 ; [+3]
       34 GETUPVAL                         R0 11
       35 GETUPVAL                         R1 4
       36 CALL                             R0 1 0
       37 GETUPVAL                         R0 12
       38 GETUPVAL                         R1 4
       39 CALL                             R0 1 0
       40 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R5 0
        1 NAMECALL                         R5 R5 K0 ["getRecentAPIGamesFromRegistry"]
        3 CALL                             R5 1 1
        4 NEWTABLE                         R6 0 0
        6 JUMPIFNOT                        R0 ; [+6]
        7 GETTABLEKS                       R8 R0 K1 ["search"]
        9 JUMPIFNOT                        R8 ; [+3]
       10 GETTABLEKS                       R7 R0 K1 ["search"]
       12 JUMP                             ; [+1]
       13 LOADK                            R7 K2 [""]
       14 NAMECALL                         R8 R7 K3 ["lower"]
       16 CALL                             R8 1 1
       17 GETTABLEKS                       R9 R0 K4 ["getRecentAPIGames"]
       19 JUMPIFNOT                        R9 ; [+82]
       20 JUMPIFNOT                        R5 ; [+81]
       21 NEWTABLE                         R9 0 0
       23 MOVE                             R10 R5
       24 LOADNIL                          R11
       25 LOADNIL                          R12
       26 FORGPREP                         R10
       27 GETTABLEKS                       R15 R14 K5 ["Name"]
       29 NAMECALL                         R15 R15 K3 ["lower"]
       31 CALL                             R15 1 1
       32 GETIMPORT                        R16 K8 [string.find]
       34 MOVE                             R17 R15
       35 MOVE                             R18 R8
       36 CALL                             R16 2 1
       37 JUMPIFNOT                        R16 ; [+33]
       38 GETTABLEKS                       R17 R14 K9 ["Id"]
       40 FASTCALL1                        TONUMBER R17 ; [+2]
       41 GETIMPORT                        R16 K11 [tonumber]
       43 CALL                             R16 1 1
       44 FASTCALL2K                       ASSERT R16 K12 ; [+5]
       46 MOVE                             R18 R16
       47 LOADK                            R19 K12 ["IDs returned from StartPageManager must be numeric"]
       48 GETIMPORT                        R17 K14 [assert]
       50 CALL                             R17 2 0
       51 DUPTABLE                         R19 K16 [{"Id", "LastViewed"}]
       52 SETTABLEKS                       R16 R19 K9 ["Id"]
       54 GETTABLEKS                       R20 R14 K15 ["LastViewed"]
       56 SETTABLEKS                       R20 R19 K15 ["LastViewed"]
       58 FASTCALL2                        TABLE_INSERT R6 R19 ; [+4]
       60 MOVE                             R18 R6
       61 GETIMPORT                        R17 K19 [table.insert]
       63 CALL                             R17 2 0
       64 FASTCALL2                        TABLE_INSERT R9 R16 ; [+5]
       66 MOVE                             R18 R9
       67 MOVE                             R19 R16
       68 GETIMPORT                        R17 K19 [table.insert]
       70 CALL                             R17 2 0
       71 FORGLOOP                         R10 2 ; [-45]
       73 GETUPVAL                         R10 1
       74 JUMPIFNOT                        R10 ; [+3]
       75 GETUPVAL                         R10 2
       76 MOVE                             R11 R9
       77 CALL                             R10 1 0
       78 LENGTH                           R10 R6
       79 LOADN                            R11 0
       80 JUMPIFNOTLT                      R11 R10 ; [+21]
       82 GETUPVAL                         R10 3
       83 MOVE                             R11 R6
       84 CALL                             R10 1 1
       85 NEWCLOSURE                       R12 P0
       86 CAPTURE                          UPVAL U4
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R6
       89 CAPTURE                          UPVAL U5
       90 CAPTURE                          VAL R9
       91 CAPTURE                          UPVAL U6
       92 CAPTURE                          UPVAL U7
       93 CAPTURE                          UPVAL U8
       94 CAPTURE                          UPVAL U9
       95 CAPTURE                          UPVAL U10
       96 CAPTURE                          UPVAL U11
       97 CAPTURE                          UPVAL U12
       98 CAPTURE                          UPVAL U13
       99 NAMECALL                         R10 R10 K20 ["andThen"]
      101 CALL                             R10 2 0
      102 GETTABLEKS                       R9 R0 K21 ["getRecentLocalFiles"]
      104 JUMPIFNOT                        R9 ; [+42]
      105 GETUPVAL                         R9 0
      106 NAMECALL                         R9 R9 K22 ["getLocalGamesFromRegistry"]
      108 CALL                             R9 1 1
      109 JUMPIFNOT                        R9 ; [+37]
      110 LENGTH                           R12 R9
      111 LOADN                            R10 1
      112 LOADN                            R11 -1
      113 FORNPREP                         R10
      114 GETTABLE                         R13 R9 R12
      115 GETTABLEKS                       R13 R13 K5 ["Name"]
      117 NAMECALL                         R13 R13 K3 ["lower"]
      119 CALL                             R13 1 1
      120 GETIMPORT                        R14 K8 [string.find]
      122 MOVE                             R15 R13
      123 MOVE                             R16 R8
      124 CALL                             R14 2 1
      125 JUMPIF                           R14 ; [+5]
      126 GETIMPORT                        R14 K24 [table.remove]
      128 MOVE                             R15 R9
      129 MOVE                             R16 R12
      130 CALL                             R14 2 0
      131 FORNLOOP                         R10
      132 GETUPVAL                         R10 4
      133 MOVE                             R12 R2
      134 LOADN                            R13 0
      135 MOVE                             R14 R9
      136 NAMECALL                         R10 R10 K25 ["upsertItemsForList"]
      138 CALL                             R10 4 0
      139 GETUPVAL                         R10 4
      140 MOVE                             R12 R2
      141 LENGTH                           R14 R6
      142 LENGTH                           R15 R9
      143 ADD                              R13 R14 R15
      144 NAMECALL                         R10 R10 K26 ["setTargetCount"]
      146 CALL                             R10 3 0
      147 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 GETUPVAL                         R4 4
        5 GETUPVAL                         R5 5
        6 CALL                             R0 5 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R5 K2 [task.defer]
        2 NEWCLOSURE                       R6 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R2
        7 CAPTURE                          VAL R3
        8 CAPTURE                          VAL R4
        9 CALL                             R5 1 0
       10 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["SharedFlags"]
       13 GETTABLEKS                       R2 R2 K8 ["getFFlagStartPageDiscoverRecentPlaces"]
       15 CALL                             R1 1 1
       16 CALL                             R1 0 1
       17 GETIMPORT                        R2 K5 [require]
       19 GETTABLEKS                       R3 R0 K6 ["Src"]
       21 GETTABLEKS                       R3 R3 K9 ["Types"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K5 [require]
       26 GETTABLEKS                       R4 R0 K6 ["Src"]
       28 GETTABLEKS                       R4 R4 K10 ["Network"]
       30 GETTABLEKS                       R4 R4 K11 ["DiscoverPlaces"]
       32 CALL                             R3 1 1
       33 GETIMPORT                        R4 K5 [require]
       35 GETTABLEKS                       R5 R0 K6 ["Src"]
       37 GETTABLEKS                       R5 R5 K10 ["Network"]
       39 GETTABLEKS                       R5 R5 K12 ["DiscoverAutogeneratedIcons"]
       41 CALL                             R4 1 1
       42 GETIMPORT                        R5 K5 [require]
       44 GETTABLEKS                       R6 R0 K6 ["Src"]
       46 GETTABLEKS                       R6 R6 K10 ["Network"]
       48 GETTABLEKS                       R6 R6 K13 ["DiscoverTeamCreatePresence"]
       50 CALL                             R5 1 1
       51 GETIMPORT                        R6 K5 [require]
       53 GETTABLEKS                       R7 R0 K6 ["Src"]
       55 GETTABLEKS                       R7 R7 K10 ["Network"]
       57 GETTABLEKS                       R7 R7 K14 ["DiscoverAgeRecommendations"]
       59 CALL                             R6 1 1
       60 GETIMPORT                        R7 K5 [require]
       62 GETTABLEKS                       R8 R0 K6 ["Src"]
       64 GETTABLEKS                       R8 R8 K10 ["Network"]
       66 GETTABLEKS                       R8 R8 K15 ["DiscoverUniverseData"]
       68 CALL                             R7 1 1
       69 GETIMPORT                        R8 K5 [require]
       71 GETTABLEKS                       R9 R0 K6 ["Src"]
       73 GETTABLEKS                       R9 R9 K10 ["Network"]
       75 GETTABLEKS                       R9 R9 K16 ["DiscoverTeamCreateStatus"]
       77 CALL                             R8 1 1
       78 GETIMPORT                        R9 K5 [require]
       80 GETTABLEKS                       R10 R0 K6 ["Src"]
       82 GETTABLEKS                       R10 R10 K10 ["Network"]
       84 GETTABLEKS                       R10 R10 K17 ["DiscoverCoreContent"]
       86 CALL                             R9 1 1
       87 GETIMPORT                        R10 K5 [require]
       89 GETTABLEKS                       R11 R0 K6 ["Src"]
       91 GETTABLEKS                       R11 R11 K10 ["Network"]
       93 GETTABLEKS                       R11 R11 K18 ["DiscoverExperienceReleases"]
       95 CALL                             R10 1 1
       96 GETIMPORT                        R11 K5 [require]
       98 GETTABLEKS                       R12 R0 K6 ["Src"]
      100 GETTABLEKS                       R12 R12 K7 ["SharedFlags"]
      102 GETTABLEKS                       R12 R12 K19 ["getFFlagLuaStartPageCoreContentStatus"]
      104 CALL                             R11 1 1
      105 CALL                             R11 0 1
      106 GETIMPORT                        R12 K5 [require]
      108 GETTABLEKS                       R13 R0 K6 ["Src"]
      110 GETTABLEKS                       R13 R13 K7 ["SharedFlags"]
      112 GETTABLEKS                       R13 R13 K20 ["getFFlagRemoveUnusedStartPageApis"]
      114 CALL                             R12 1 1
      115 CALL                             R12 0 1
      116 GETIMPORT                        R13 K5 [require]
      118 GETTABLEKS                       R14 R0 K6 ["Src"]
      120 GETTABLEKS                       R14 R14 K10 ["Network"]
      122 GETTABLEKS                       R14 R14 K21 ["DiscoverSequestration"]
      124 CALL                             R13 1 1
      125 GETIMPORT                        R14 K5 [require]
      127 GETTABLEKS                       R15 R0 K6 ["Src"]
      129 GETTABLEKS                       R15 R15 K22 ["Util"]
      131 GETTABLEKS                       R15 R15 K23 ["Services"]
      133 CALL                             R14 1 1
      134 GETTABLEKS                       R15 R14 K24 ["StartPageManager"]
      136 GETIMPORT                        R16 K5 [require]
      138 GETTABLEKS                       R17 R0 K6 ["Src"]
      140 GETTABLEKS                       R17 R17 K10 ["Network"]
      142 GETTABLEKS                       R17 R17 K25 ["GameCache"]
      144 CALL                             R16 1 1
      145 DUPCLOSURE                       R17 K26 [PROTO_1]
      146 CAPTURE                          VAL R15
      147 CAPTURE                          VAL R1
      148 CAPTURE                          VAL R3
      149 CAPTURE                          VAL R7
      150 CAPTURE                          VAL R16
      151 CAPTURE                          VAL R4
      152 CAPTURE                          VAL R5
      153 CAPTURE                          VAL R6
      154 CAPTURE                          VAL R8
      155 CAPTURE                          VAL R11
      156 CAPTURE                          VAL R9
      157 CAPTURE                          VAL R12
      158 CAPTURE                          VAL R10
      159 CAPTURE                          VAL R13
      160 DUPCLOSURE                       R18 K27 [PROTO_3]
      161 CAPTURE                          VAL R17
      162 RETURN                           R18 1
