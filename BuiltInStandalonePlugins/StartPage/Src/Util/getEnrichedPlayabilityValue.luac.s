PROTO_0:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["getEnrichedPlayabilityValue should only be used when the new list view is enabled"]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 GETUPVAL                         R2 1
        9 CALL                             R2 0 1
       10 JUMPIFNOT                        R2 ; [+8]
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R3 R0 K3 ["ReachStatus"]
       14 CALL                             R2 1 1
       15 JUMPIFNOT                        R2 ; [+3]
       16 GETTABLEKS                       R3 R2 K4 ["label"]
       18 RETURN                           R3 1
       19 GETUPVAL                         R2 3
       20 CALL                             R2 0 1
       21 JUMPIF                           R2 ; [+4]
       22 GETTABLEKS                       R3 R0 K6 ["PrivacyType"]
       24 ORK                              R2 R3 K5 [""]
       25 RETURN                           R2 1
       26 LOADNIL                          R2
       27 LOADNIL                          R3
       28 GETUPVAL                         R4 4
       29 CALL                             R4 0 1
       30 JUMPIFNOT                        R4 ; [+21]
       31 GETTABLEKS                       R4 R0 K7 ["Audiences"]
       33 JUMPIFEQKNIL                     R4 ; [+18]
       35 GETTABLEKS                       R4 R0 K7 ["Audiences"]
       37 GETUPVAL                         R5 5
       38 MOVE                             R6 R4
       39 CALL                             R5 1 1
       40 NOT                              R2 R5
       41 MOVE                             R5 R2
       42 JUMPIFNOT                        R5 ; [+7]
       43 GETUPVAL                         R6 6
       44 MOVE                             R7 R4
       45 GETUPVAL                         R8 7
       46 GETTABLEKS                       R8 R8 K8 ["Public"]
       48 CALL                             R6 2 1
       49 NOT                              R5 R6
       50 MOVE                             R3 R5
       51 JUMP                             ; [+8]
       52 GETTABLEKS                       R4 R0 K6 ["PrivacyType"]
       54 JUMPIFEQKS                       R4 K8 ["Public"] ; [+2]
       56 LOADB                            R2 0 +1
       57 LOADB                            R2 1
       58 GETTABLEKS                       R3 R0 K9 ["IsFriendsOnly"]
       60 JUMPIF                           R2 ; [+6]
       61 LOADK                            R6 K10 ["Plugin"]
       62 LOADK                            R7 K11 ["PrivacyType.Private"]
       63 NAMECALL                         R4 R1 K12 ["getText"]
       65 CALL                             R4 3 -1
       66 RETURN                           R4 -1
       67 GETTABLEKS                       R5 R0 K13 ["ContentMaturity"]
       69 JUMPIFEQKS                       R5 K14 ["unrated"] ; [+2]
       71 LOADB                            R4 0 +1
       72 LOADB                            R4 1
       73 GETTABLEKS                       R5 R0 K15 ["IsSequestered"]
       75 JUMPIFNOT                        R2 ; [+8]
       76 JUMPIF                           R4 ; [+1]
       77 JUMPIFNOT                        R5 ; [+6]
       78 LOADK                            R8 K10 ["Plugin"]
       79 LOADK                            R9 K16 ["PrivacyType.Unplayable"]
       80 NAMECALL                         R6 R1 K12 ["getText"]
       82 CALL                             R6 3 -1
       83 RETURN                           R6 -1
       84 JUMPIFNOT                        R2 ; [+9]
       85 GETTABLEKS                       R6 R0 K17 ["IsDiscoveryBlocked"]
       87 JUMPIFNOT                        R6 ; [+6]
       88 LOADK                            R8 K10 ["Plugin"]
       89 LOADK                            R9 K18 ["PrivacyType.NeedsAttention"]
       90 NAMECALL                         R6 R1 K12 ["getText"]
       92 CALL                             R6 3 -1
       93 RETURN                           R6 -1
       94 GETTABLEKS                       R6 R0 K19 ["AgeRecommendation"]
       96 MOVE                             R7 R2
       97 JUMPIFNOT                        R7 ; [+8]
       98 NOT                              R7 R4
       99 JUMPIFNOT                        R7 ; [+6]
      100 GETTABLEKS                       R8 R0 K20 ["CoreContentSelectStatus"]
      102 JUMPIFEQKS                       R8 K21 ["Eligible"] ; [+2]
      104 LOADB                            R7 0 +1
      105 LOADB                            R7 1
      106 MOVE                             R8 R7
      107 JUMPIFNOT                        R8 ; [+13]
      108 LOADB                            R8 0
      109 GETTABLEKS                       R9 R0 K22 ["CoreContentReasons"]
      111 JUMPIFEQKNIL                     R9 ; [+9]
      113 GETTABLEKS                       R10 R0 K22 ["CoreContentReasons"]
      115 LENGTH                           R9 R10
      116 LOADN                            R10 0
      117 JUMPIFLT                         R10 R9 ; [+2]
      119 LOADB                            R8 0 +1
      120 LOADB                            R8 1
      121 JUMPIFNOT                        R2 ; [+13]
      122 JUMPIFEQKNIL                     R6 ; [+4]
      124 GETUPVAL                         R9 8
      125 JUMPIFNOTLT                      R6 R9 ; [+9]
      127 JUMPIFNOT                        R7 ; [+7]
      128 JUMPIFNOT                        R8 ; [+6]
      129 LOADK                            R11 K10 ["Plugin"]
      130 LOADK                            R12 K18 ["PrivacyType.NeedsAttention"]
      131 NAMECALL                         R9 R1 K12 ["getText"]
      133 CALL                             R9 3 -1
      134 RETURN                           R9 -1
      135 JUMPIFNOT                        R2 ; [+7]
      136 JUMPIFNOT                        R3 ; [+6]
      137 LOADK                            R11 K10 ["Plugin"]
      138 LOADK                            R12 K23 ["PrivacyType.Limited"]
      139 NAMECALL                         R9 R1 K12 ["getText"]
      141 CALL                             R9 3 -1
      142 RETURN                           R9 -1
      143 LOADNIL                          R9
      144 JUMPIFNOT                        R7 ; [+6]
      145 JUMPIFEQKNIL                     R6 ; [+3]
      147 MOVE                             R9 R6
      148 JUMP                             ; [+14]
      149 LOADN                            R9 0
      150 JUMP                             ; [+12]
      151 GETUPVAL                         R11 8
      152 JUMPIFEQKNIL                     R6 ; [+3]
      154 MOVE                             R12 R6
      155 JUMP                             ; [+1]
      156 LOADN                            R12 0
      157 FASTCALL2                        MATH_MAX R11 R12 ; [+3]
      159 GETIMPORT                        R10 K26 [math.max]
      161 CALL                             R10 2 1
      162 MOVE                             R9 R10
      163 LOADNIL                          R10
      164 GETUPVAL                         R11 8
      165 JUMPIFNOTLE                      R11 R9 ; [+8]
      167 GETUPVAL                         R12 8
      168 FASTCALL1                        TOSTRING R12 ; [+2]
      169 GETIMPORT                        R11 K28 [tostring]
      171 CALL                             R11 1 1
      172 MOVE                             R10 R11
      173 JUMP                             ; [+9]
      174 GETUPVAL                         R11 9
      175 JUMPIFNOTLE                      R11 R9 ; [+7]
      177 GETUPVAL                         R12 9
      178 FASTCALL1                        TOSTRING R12 ; [+2]
      179 GETIMPORT                        R11 K28 [tostring]
      181 CALL                             R11 1 1
      182 MOVE                             R10 R11
      183 JUMPIFEQKNIL                     R10 ; [+10]
      185 LOADK                            R13 K10 ["Plugin"]
      186 LOADK                            R14 K29 ["PrivacyType.PublicAgeGated"]
      187 DUPTABLE                         R15 K31 [{"minAge"}]
      188 SETTABLEKS                       R10 R15 K30 ["minAge"]
      190 NAMECALL                         R11 R1 K12 ["getText"]
      192 CALL                             R11 4 -1
      193 RETURN                           R11 -1
      194 LOADK                            R13 K10 ["Plugin"]
      195 LOADK                            R14 K32 ["PrivacyType.PublicAllAges"]
      196 NAMECALL                         R11 R1 K12 ["getText"]
      198 CALL                             R11 3 -1
      199 RETURN                           R11 -1

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
       18 GETTABLEKS                       R3 R3 K8 ["Constants"]
       20 GETTABLEKS                       R3 R3 K9 ["Audience"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K10 ["Util"]
       29 GETTABLEKS                       R4 R4 K11 ["AudienceUtils"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R3 K12 ["audienceIsPrivate"]
       34 GETTABLEKS                       R5 R3 K13 ["audienceIncludes"]
       36 GETIMPORT                        R6 K5 [require]
       38 GETTABLEKS                       R7 R0 K6 ["Src"]
       40 GETTABLEKS                       R7 R7 K14 ["SharedFlags"]
       42 GETTABLEKS                       R7 R7 K15 ["getFFlagLuaStartPageNewListView"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R0 K6 ["Src"]
       49 GETTABLEKS                       R8 R8 K14 ["SharedFlags"]
       51 GETTABLEKS                       R8 R8 K16 ["getFFlagLuaStartPageCoreContentStatus"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K6 ["Src"]
       58 GETTABLEKS                       R9 R9 K14 ["SharedFlags"]
       60 GETTABLEKS                       R9 R9 K17 ["getFFlagLuaStartPageAudiencesReplacement"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K6 ["Src"]
       67 GETTABLEKS                       R10 R10 K14 ["SharedFlags"]
       69 GETTABLEKS                       R10 R10 K18 ["getFFlagLuaStartPageReachStatus"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K6 ["Src"]
       76 GETTABLEKS                       R11 R11 K10 ["Util"]
       78 GETTABLEKS                       R11 R11 K19 ["getReachStatusBadgePresentation"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K6 ["Src"]
       85 GETTABLEKS                       R12 R12 K10 ["Util"]
       87 GETTABLEKS                       R12 R12 K20 ["CoreContentStatusConstants"]
       89 CALL                             R11 1 1
       90 GETTABLEKS                       R12 R11 K21 ["NEEDS_ATTENTION_AGE_THRESHOLD"]
       92 GETTABLEKS                       R13 R11 K22 ["AGE_BRACKET_9"]
       94 DUPCLOSURE                       R14 K23 [PROTO_0]
       95 CAPTURE                          VAL R6
       96 CAPTURE                          VAL R9
       97 CAPTURE                          VAL R10
       98 CAPTURE                          VAL R7
       99 CAPTURE                          VAL R8
      100 CAPTURE                          VAL R4
      101 CAPTURE                          VAL R5
      102 CAPTURE                          VAL R2
      103 CAPTURE                          VAL R12
      104 CAPTURE                          VAL R13
      105 RETURN                           R14 1
