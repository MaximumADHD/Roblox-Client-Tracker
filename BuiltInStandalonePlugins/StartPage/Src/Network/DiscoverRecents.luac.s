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
       40 GETUPVAL                         R0 13
       41 JUMPIFNOT                        R0 ; [+3]
       42 GETUPVAL                         R0 14
       43 GETUPVAL                         R1 4
       44 CALL                             R0 1 0
       45 RETURN                           R0 0

PROTO_1:
        0 JUMPIFNOT                        R0 ; [+49]
        1 LENGTH                           R1 R0
        2 LOADN                            R2 0
        3 JUMPIFNOTLT                      R2 R1 ; [+46]
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R3 1
        7 LOADN                            R4 0
        8 MOVE                             R5 R0
        9 NAMECALL                         R1 R1 K0 ["upsertItemsForList"]
       11 CALL                             R1 4 0
       12 GETUPVAL                         R1 0
       13 GETUPVAL                         R3 1
       14 GETUPVAL                         R7 2
       15 LENGTH                           R6 R7
       16 GETUPVAL                         R7 3
       17 ADD                              R5 R6 R7
       18 LENGTH                           R6 R0
       19 ADD                              R4 R5 R6
       20 NAMECALL                         R1 R1 K1 ["setTargetCount"]
       22 CALL                             R1 3 0
       23 NEWTABLE                         R1 0 0
       25 MOVE                             R2 R0
       26 LOADNIL                          R3
       27 LOADNIL                          R4
       28 FORGPREP                         R2
       29 GETTABLEKS                       R7 R6 K2 ["Id"]
       31 JUMPIFNOT                        R7 ; [+8]
       32 GETTABLEKS                       R9 R6 K2 ["Id"]
       34 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       36 MOVE                             R8 R1
       37 GETIMPORT                        R7 K5 [table.insert]
       39 CALL                             R7 2 0
       40 FORGLOOP                         R2 2 ; [-12]
       42 LENGTH                           R2 R1
       43 LOADN                            R3 0
       44 JUMPIFNOTLT                      R3 R2 ; [+5]
       46 GETUPVAL                         R2 4
       47 MOVE                             R3 R1
       48 GETUPVAL                         R4 1
       49 CALL                             R2 2 0
       50 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K1 [warn]
        2 LOADK                            R1 K2 ["DiscoverRecentsBackfill request failed"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
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
       17 LOADN                            R9 0
       18 GETTABLEKS                       R10 R0 K4 ["getRecentAPIGames"]
       20 JUMPIFNOT                        R10 ; [+82]
       21 JUMPIFNOT                        R5 ; [+81]
       22 NEWTABLE                         R10 0 0
       24 MOVE                             R11 R5
       25 LOADNIL                          R12
       26 LOADNIL                          R13
       27 FORGPREP                         R11
       28 GETTABLEKS                       R16 R15 K5 ["Name"]
       30 NAMECALL                         R16 R16 K3 ["lower"]
       32 CALL                             R16 1 1
       33 GETIMPORT                        R17 K8 [string.find]
       35 MOVE                             R18 R16
       36 MOVE                             R19 R8
       37 CALL                             R17 2 1
       38 JUMPIFNOT                        R17 ; [+33]
       39 GETTABLEKS                       R18 R15 K9 ["Id"]
       41 FASTCALL1                        TONUMBER R18 ; [+2]
       42 GETIMPORT                        R17 K11 [tonumber]
       44 CALL                             R17 1 1
       45 FASTCALL2K                       ASSERT R17 K12 ; [+5]
       47 MOVE                             R19 R17
       48 LOADK                            R20 K12 ["IDs returned from StartPageManager must be numeric"]
       49 GETIMPORT                        R18 K14 [assert]
       51 CALL                             R18 2 0
       52 DUPTABLE                         R20 K16 [{"Id", "LastViewed"}]
       53 SETTABLEKS                       R17 R20 K9 ["Id"]
       55 GETTABLEKS                       R21 R15 K15 ["LastViewed"]
       57 SETTABLEKS                       R21 R20 K15 ["LastViewed"]
       59 FASTCALL2                        TABLE_INSERT R6 R20 ; [+4]
       61 MOVE                             R19 R6
       62 GETIMPORT                        R18 K19 [table.insert]
       64 CALL                             R18 2 0
       65 FASTCALL2                        TABLE_INSERT R10 R17 ; [+5]
       67 MOVE                             R19 R10
       68 MOVE                             R20 R17
       69 GETIMPORT                        R18 K19 [table.insert]
       71 CALL                             R18 2 0
       72 FORGLOOP                         R11 2 ; [-45]
       74 GETUPVAL                         R11 1
       75 MOVE                             R12 R10
       76 CALL                             R11 1 0
       77 LENGTH                           R11 R6
       78 LOADN                            R12 0
       79 JUMPIFNOTLT                      R12 R11 ; [+23]
       81 GETUPVAL                         R11 2
       82 MOVE                             R12 R6
       83 CALL                             R11 1 1
       84 NEWCLOSURE                       R13 P0
       85 CAPTURE                          UPVAL U3
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R6
       88 CAPTURE                          UPVAL U4
       89 CAPTURE                          VAL R10
       90 CAPTURE                          UPVAL U5
       91 CAPTURE                          UPVAL U6
       92 CAPTURE                          UPVAL U7
       93 CAPTURE                          UPVAL U8
       94 CAPTURE                          UPVAL U9
       95 CAPTURE                          UPVAL U10
       96 CAPTURE                          UPVAL U11
       97 CAPTURE                          UPVAL U12
       98 CAPTURE                          UPVAL U13
       99 CAPTURE                          UPVAL U14
      100 NAMECALL                         R11 R11 K20 ["andThen"]
      102 CALL                             R11 2 0
      103 GETTABLEKS                       R10 R0 K21 ["getRecentLocalFiles"]
      105 JUMPIFNOT                        R10 ; [+42]
      106 GETUPVAL                         R10 0
      107 NAMECALL                         R10 R10 K22 ["getLocalGamesFromRegistry"]
      109 CALL                             R10 1 1
      110 JUMPIFNOT                        R10 ; [+37]
      111 LENGTH                           R13 R10
      112 LOADN                            R11 1
      113 LOADN                            R12 -1
      114 FORNPREP                         R11
      115 GETTABLE                         R14 R10 R13
      116 GETTABLEKS                       R14 R14 K5 ["Name"]
      118 NAMECALL                         R14 R14 K3 ["lower"]
      120 CALL                             R14 1 1
      121 GETIMPORT                        R15 K8 [string.find]
      123 MOVE                             R16 R14
      124 MOVE                             R17 R8
      125 CALL                             R15 2 1
      126 JUMPIF                           R15 ; [+5]
      127 GETIMPORT                        R15 K24 [table.remove]
      129 MOVE                             R16 R10
      130 MOVE                             R17 R13
      131 CALL                             R15 2 0
      132 FORNLOOP                         R11
      133 LENGTH                           R9 R10
      134 GETUPVAL                         R11 3
      135 MOVE                             R13 R2
      136 LOADN                            R14 0
      137 MOVE                             R15 R10
      138 NAMECALL                         R11 R11 K25 ["upsertItemsForList"]
      140 CALL                             R11 4 0
      141 GETUPVAL                         R11 3
      142 MOVE                             R13 R2
      143 LENGTH                           R15 R6
      144 ADD                              R14 R15 R9
      145 NAMECALL                         R11 R11 K26 ["setTargetCount"]
      147 CALL                             R11 3 0
      148 GETUPVAL                         R10 15
      149 JUMPIFNOT                        R10 ; [+36]
      150 NEWTABLE                         R10 0 0
      152 JUMPIFNOT                        R5 ; [+15]
      153 MOVE                             R11 R5
      154 LOADNIL                          R12
      155 LOADNIL                          R13
      156 FORGPREP                         R11
      157 GETTABLEKS                       R17 R15 K9 ["Id"]
      159 FASTCALL1                        TONUMBER R17 ; [+2]
      160 GETIMPORT                        R16 K11 [tonumber]
      162 CALL                             R16 1 1
      163 JUMPIFNOT                        R16 ; [+2]
      164 LOADB                            R17 1
      165 SETTABLE                         R17 R10 R16
      166 FORGLOOP                         R11 2 ; [-10]
      168 GETUPVAL                         R11 16
      169 MOVE                             R12 R0
      170 MOVE                             R13 R10
      171 CALL                             R11 2 1
      172 JUMPIFNOT                        R11 ; [+13]
      173 NEWCLOSURE                       R14 P1
      174 CAPTURE                          UPVAL U3
      175 CAPTURE                          VAL R2
      176 CAPTURE                          VAL R6
      177 CAPTURE                          REF R9
      178 CAPTURE                          UPVAL U4
      179 NAMECALL                         R12 R11 K20 ["andThen"]
      181 CALL                             R12 2 1
      182 DUPCLOSURE                       R14 K27 [PROTO_2]
      183 NAMECALL                         R12 R12 K28 ["catch"]
      185 CALL                             R12 2 0
      186 CLOSEUPVALS                      R9
      187 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 GETUPVAL                         R4 4
        5 GETUPVAL                         R5 5
        6 CALL                             R0 5 0
        7 RETURN                           R0 0

PROTO_5:
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
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Network"]
       20 GETTABLEKS                       R3 R3 K9 ["DiscoverPlaces"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K8 ["Network"]
       29 GETTABLEKS                       R4 R4 K10 ["DiscoverAutogeneratedIcons"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Src"]
       36 GETTABLEKS                       R5 R5 K8 ["Network"]
       38 GETTABLEKS                       R5 R5 K11 ["DiscoverTeamCreatePresence"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K6 ["Src"]
       45 GETTABLEKS                       R6 R6 K8 ["Network"]
       47 GETTABLEKS                       R6 R6 K12 ["DiscoverAgeRecommendations"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K6 ["Src"]
       54 GETTABLEKS                       R7 R7 K8 ["Network"]
       56 GETTABLEKS                       R7 R7 K13 ["DiscoverUniverseData"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R8 R0 K6 ["Src"]
       63 GETTABLEKS                       R8 R8 K8 ["Network"]
       65 GETTABLEKS                       R8 R8 K14 ["DiscoverTeamCreateStatus"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R9 R0 K6 ["Src"]
       72 GETTABLEKS                       R9 R9 K8 ["Network"]
       74 GETTABLEKS                       R9 R9 K15 ["DiscoverCoreContent"]
       76 CALL                             R8 1 1
       77 GETIMPORT                        R9 K5 [require]
       79 GETTABLEKS                       R10 R0 K6 ["Src"]
       81 GETTABLEKS                       R10 R10 K8 ["Network"]
       83 GETTABLEKS                       R10 R10 K16 ["DiscoverExperienceReleases"]
       85 CALL                             R9 1 1
       86 GETIMPORT                        R10 K5 [require]
       88 GETTABLEKS                       R11 R0 K6 ["Src"]
       90 GETTABLEKS                       R11 R11 K17 ["SharedFlags"]
       92 GETTABLEKS                       R11 R11 K18 ["getFFlagLuaStartPageCoreContentStatus"]
       94 CALL                             R10 1 1
       95 CALL                             R10 0 1
       96 GETIMPORT                        R11 K5 [require]
       98 GETTABLEKS                       R12 R0 K6 ["Src"]
      100 GETTABLEKS                       R12 R12 K17 ["SharedFlags"]
      102 GETTABLEKS                       R12 R12 K19 ["getFFlagRemoveUnusedStartPageApis"]
      104 CALL                             R11 1 1
      105 CALL                             R11 0 1
      106 GETIMPORT                        R12 K5 [require]
      108 GETTABLEKS                       R13 R0 K6 ["Src"]
      110 GETTABLEKS                       R13 R13 K8 ["Network"]
      112 GETTABLEKS                       R13 R13 K20 ["DiscoverSequestration"]
      114 CALL                             R12 1 1
      115 GETIMPORT                        R13 K5 [require]
      117 GETTABLEKS                       R14 R0 K6 ["Src"]
      119 GETTABLEKS                       R14 R14 K17 ["SharedFlags"]
      121 GETTABLEKS                       R14 R14 K21 ["getFFlagStartPageBackfillRecentsFromCloud"]
      123 CALL                             R13 1 1
      124 CALL                             R13 0 1
      125 GETIMPORT                        R14 K5 [require]
      127 GETTABLEKS                       R15 R0 K6 ["Src"]
      129 GETTABLEKS                       R15 R15 K8 ["Network"]
      131 GETTABLEKS                       R15 R15 K22 ["DiscoverRecentsBackfill"]
      133 CALL                             R14 1 1
      134 GETIMPORT                        R15 K5 [require]
      136 GETTABLEKS                       R16 R0 K6 ["Src"]
      138 GETTABLEKS                       R16 R16 K17 ["SharedFlags"]
      140 GETTABLEKS                       R16 R16 K23 ["getFFlagStartPageAddBuildSealBadge"]
      142 CALL                             R15 1 1
      143 CALL                             R15 0 1
      144 GETIMPORT                        R16 K5 [require]
      146 GETTABLEKS                       R17 R0 K6 ["Src"]
      148 GETTABLEKS                       R17 R17 K8 ["Network"]
      150 GETTABLEKS                       R17 R17 K24 ["DiscoverBuildSealStatus"]
      152 CALL                             R16 1 1
      153 GETIMPORT                        R17 K5 [require]
      155 GETTABLEKS                       R18 R0 K6 ["Src"]
      157 GETTABLEKS                       R18 R18 K25 ["Util"]
      159 GETTABLEKS                       R18 R18 K26 ["Services"]
      161 CALL                             R17 1 1
      162 GETTABLEKS                       R18 R17 K27 ["StartPageManager"]
      164 GETIMPORT                        R19 K5 [require]
      166 GETTABLEKS                       R20 R0 K6 ["Src"]
      168 GETTABLEKS                       R20 R20 K8 ["Network"]
      170 GETTABLEKS                       R20 R20 K28 ["GameCache"]
      172 CALL                             R19 1 1
      173 DUPCLOSURE                       R20 K29 [PROTO_3]
      174 CAPTURE                          VAL R18
      175 CAPTURE                          VAL R2
      176 CAPTURE                          VAL R6
      177 CAPTURE                          VAL R19
      178 CAPTURE                          VAL R3
      179 CAPTURE                          VAL R4
      180 CAPTURE                          VAL R5
      181 CAPTURE                          VAL R7
      182 CAPTURE                          VAL R10
      183 CAPTURE                          VAL R8
      184 CAPTURE                          VAL R11
      185 CAPTURE                          VAL R9
      186 CAPTURE                          VAL R12
      187 CAPTURE                          VAL R15
      188 CAPTURE                          VAL R16
      189 CAPTURE                          VAL R13
      190 CAPTURE                          VAL R14
      191 DUPCLOSURE                       R21 K30 [PROTO_5]
      192 CAPTURE                          VAL R20
      193 RETURN                           R21 1
