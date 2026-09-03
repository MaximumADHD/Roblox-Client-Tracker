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
        0 JUMPIFNOT                        R0 ; [+22]
        1 LENGTH                           R1 R0
        2 LOADN                            R2 0
        3 JUMPIFNOTLT                      R2 R1 ; [+19]
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
       23 RETURN                           R0 0

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
       20 JUMPIFNOT                        R10 ; [+84]
       21 JUMPIFNOT                        R5 ; [+83]
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
       75 JUMPIFNOT                        R11 ; [+3]
       76 GETUPVAL                         R11 2
       77 MOVE                             R12 R10
       78 CALL                             R11 1 0
       79 LENGTH                           R11 R6
       80 LOADN                            R12 0
       81 JUMPIFNOTLT                      R12 R11 ; [+23]
       83 GETUPVAL                         R11 3
       84 MOVE                             R12 R6
       85 CALL                             R11 1 1
       86 NEWCLOSURE                       R13 P0
       87 CAPTURE                          UPVAL U4
       88 CAPTURE                          VAL R2
       89 CAPTURE                          VAL R6
       90 CAPTURE                          UPVAL U5
       91 CAPTURE                          VAL R10
       92 CAPTURE                          UPVAL U6
       93 CAPTURE                          UPVAL U7
       94 CAPTURE                          UPVAL U8
       95 CAPTURE                          UPVAL U9
       96 CAPTURE                          UPVAL U10
       97 CAPTURE                          UPVAL U11
       98 CAPTURE                          UPVAL U12
       99 CAPTURE                          UPVAL U13
      100 CAPTURE                          UPVAL U14
      101 CAPTURE                          UPVAL U15
      102 NAMECALL                         R11 R11 K20 ["andThen"]
      104 CALL                             R11 2 0
      105 GETTABLEKS                       R10 R0 K21 ["getRecentLocalFiles"]
      107 JUMPIFNOT                        R10 ; [+42]
      108 GETUPVAL                         R10 0
      109 NAMECALL                         R10 R10 K22 ["getLocalGamesFromRegistry"]
      111 CALL                             R10 1 1
      112 JUMPIFNOT                        R10 ; [+37]
      113 LENGTH                           R13 R10
      114 LOADN                            R11 1
      115 LOADN                            R12 -1
      116 FORNPREP                         R11
      117 GETTABLE                         R14 R10 R13
      118 GETTABLEKS                       R14 R14 K5 ["Name"]
      120 NAMECALL                         R14 R14 K3 ["lower"]
      122 CALL                             R14 1 1
      123 GETIMPORT                        R15 K8 [string.find]
      125 MOVE                             R16 R14
      126 MOVE                             R17 R8
      127 CALL                             R15 2 1
      128 JUMPIF                           R15 ; [+5]
      129 GETIMPORT                        R15 K24 [table.remove]
      131 MOVE                             R16 R10
      132 MOVE                             R17 R13
      133 CALL                             R15 2 0
      134 FORNLOOP                         R11
      135 LENGTH                           R9 R10
      136 GETUPVAL                         R11 4
      137 MOVE                             R13 R2
      138 LOADN                            R14 0
      139 MOVE                             R15 R10
      140 NAMECALL                         R11 R11 K25 ["upsertItemsForList"]
      142 CALL                             R11 4 0
      143 GETUPVAL                         R11 4
      144 MOVE                             R13 R2
      145 LENGTH                           R15 R6
      146 ADD                              R14 R15 R9
      147 NAMECALL                         R11 R11 K26 ["setTargetCount"]
      149 CALL                             R11 3 0
      150 GETUPVAL                         R10 16
      151 JUMPIFNOT                        R10 ; [+35]
      152 NEWTABLE                         R10 0 0
      154 JUMPIFNOT                        R5 ; [+15]
      155 MOVE                             R11 R5
      156 LOADNIL                          R12
      157 LOADNIL                          R13
      158 FORGPREP                         R11
      159 GETTABLEKS                       R17 R15 K9 ["Id"]
      161 FASTCALL1                        TONUMBER R17 ; [+2]
      162 GETIMPORT                        R16 K11 [tonumber]
      164 CALL                             R16 1 1
      165 JUMPIFNOT                        R16 ; [+2]
      166 LOADB                            R17 1
      167 SETTABLE                         R17 R10 R16
      168 FORGLOOP                         R11 2 ; [-10]
      170 GETUPVAL                         R11 17
      171 MOVE                             R12 R0
      172 MOVE                             R13 R10
      173 CALL                             R11 2 1
      174 JUMPIFNOT                        R11 ; [+12]
      175 NEWCLOSURE                       R14 P1
      176 CAPTURE                          UPVAL U4
      177 CAPTURE                          VAL R2
      178 CAPTURE                          VAL R6
      179 CAPTURE                          REF R9
      180 NAMECALL                         R12 R11 K20 ["andThen"]
      182 CALL                             R12 2 1
      183 DUPCLOSURE                       R14 K27 [PROTO_2]
      184 NAMECALL                         R12 R12 K28 ["catch"]
      186 CALL                             R12 2 0
      187 CLOSEUPVALS                      R9
      188 RETURN                           R0 0

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
      129 GETTABLEKS                       R15 R15 K7 ["SharedFlags"]
      131 GETTABLEKS                       R15 R15 K22 ["getFFlagStartPageBackfillRecentsFromCloud"]
      133 CALL                             R14 1 1
      134 CALL                             R14 0 1
      135 GETIMPORT                        R15 K5 [require]
      137 GETTABLEKS                       R16 R0 K6 ["Src"]
      139 GETTABLEKS                       R16 R16 K10 ["Network"]
      141 GETTABLEKS                       R16 R16 K23 ["DiscoverRecentsBackfill"]
      143 CALL                             R15 1 1
      144 GETIMPORT                        R16 K5 [require]
      146 GETTABLEKS                       R17 R0 K6 ["Src"]
      148 GETTABLEKS                       R17 R17 K7 ["SharedFlags"]
      150 GETTABLEKS                       R17 R17 K24 ["getFFlagStartPageAddBuildSealBadge"]
      152 CALL                             R16 1 1
      153 CALL                             R16 0 1
      154 GETIMPORT                        R17 K5 [require]
      156 GETTABLEKS                       R18 R0 K6 ["Src"]
      158 GETTABLEKS                       R18 R18 K10 ["Network"]
      160 GETTABLEKS                       R18 R18 K25 ["DiscoverBuildSealStatus"]
      162 CALL                             R17 1 1
      163 GETIMPORT                        R18 K5 [require]
      165 GETTABLEKS                       R19 R0 K6 ["Src"]
      167 GETTABLEKS                       R19 R19 K26 ["Util"]
      169 GETTABLEKS                       R19 R19 K27 ["Services"]
      171 CALL                             R18 1 1
      172 GETTABLEKS                       R19 R18 K28 ["StartPageManager"]
      174 GETIMPORT                        R20 K5 [require]
      176 GETTABLEKS                       R21 R0 K6 ["Src"]
      178 GETTABLEKS                       R21 R21 K10 ["Network"]
      180 GETTABLEKS                       R21 R21 K29 ["GameCache"]
      182 CALL                             R20 1 1
      183 DUPCLOSURE                       R21 K30 [PROTO_3]
      184 CAPTURE                          VAL R19
      185 CAPTURE                          VAL R1
      186 CAPTURE                          VAL R3
      187 CAPTURE                          VAL R7
      188 CAPTURE                          VAL R20
      189 CAPTURE                          VAL R4
      190 CAPTURE                          VAL R5
      191 CAPTURE                          VAL R6
      192 CAPTURE                          VAL R8
      193 CAPTURE                          VAL R11
      194 CAPTURE                          VAL R9
      195 CAPTURE                          VAL R12
      196 CAPTURE                          VAL R10
      197 CAPTURE                          VAL R13
      198 CAPTURE                          VAL R16
      199 CAPTURE                          VAL R17
      200 CAPTURE                          VAL R14
      201 CAPTURE                          VAL R15
      202 DUPCLOSURE                       R22 K31 [PROTO_5]
      203 CAPTURE                          VAL R21
      204 RETURN                           R22 1
