PROTO_0:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["getEnrichedPlayabilityValue should only be used when the new list view is enabled"]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R3 R0 K3 ["ReachStatus"]
       11 CALL                             R2 1 1
       12 JUMPIFNOT                        R2 ; [+3]
       13 GETTABLEKS                       R3 R2 K4 ["label"]
       15 RETURN                           R3 1
       16 LOADNIL                          R3
       17 LOADNIL                          R4
       18 GETTABLEKS                       R5 R0 K5 ["Audiences"]
       20 JUMPIFEQKNIL                     R5 ; [+18]
       22 GETTABLEKS                       R5 R0 K5 ["Audiences"]
       24 GETUPVAL                         R6 2
       25 MOVE                             R7 R5
       26 CALL                             R6 1 1
       27 NOT                              R3 R6
       28 MOVE                             R6 R3
       29 JUMPIFNOT                        R6 ; [+7]
       30 GETUPVAL                         R7 3
       31 MOVE                             R8 R5
       32 GETUPVAL                         R9 4
       33 GETTABLEKS                       R9 R9 K6 ["Public"]
       35 CALL                             R7 2 1
       36 NOT                              R6 R7
       37 MOVE                             R4 R6
       38 JUMP                             ; [+8]
       39 GETTABLEKS                       R5 R0 K7 ["PrivacyType"]
       41 JUMPIFEQKS                       R5 K6 ["Public"] ; [+2]
       43 LOADB                            R3 0 +1
       44 LOADB                            R3 1
       45 GETTABLEKS                       R4 R0 K8 ["IsFriendsOnly"]
       47 JUMPIF                           R3 ; [+6]
       48 LOADK                            R7 K9 ["Plugin"]
       49 LOADK                            R8 K10 ["PrivacyType.Private"]
       50 NAMECALL                         R5 R1 K11 ["getText"]
       52 CALL                             R5 3 -1
       53 RETURN                           R5 -1
       54 GETTABLEKS                       R6 R0 K12 ["ContentMaturity"]
       56 JUMPIFEQKS                       R6 K13 ["unrated"] ; [+2]
       58 LOADB                            R5 0 +1
       59 LOADB                            R5 1
       60 GETTABLEKS                       R6 R0 K14 ["IsSequestered"]
       62 JUMPIFNOT                        R3 ; [+8]
       63 JUMPIF                           R5 ; [+1]
       64 JUMPIFNOT                        R6 ; [+6]
       65 LOADK                            R9 K9 ["Plugin"]
       66 LOADK                            R10 K15 ["PrivacyType.Unplayable"]
       67 NAMECALL                         R7 R1 K11 ["getText"]
       69 CALL                             R7 3 -1
       70 RETURN                           R7 -1
       71 JUMPIFNOT                        R3 ; [+9]
       72 GETTABLEKS                       R7 R0 K16 ["IsDiscoveryBlocked"]
       74 JUMPIFNOT                        R7 ; [+6]
       75 LOADK                            R9 K9 ["Plugin"]
       76 LOADK                            R10 K17 ["PrivacyType.NeedsAttention"]
       77 NAMECALL                         R7 R1 K11 ["getText"]
       79 CALL                             R7 3 -1
       80 RETURN                           R7 -1
       81 GETTABLEKS                       R7 R0 K18 ["AgeRecommendation"]
       83 MOVE                             R8 R3
       84 JUMPIFNOT                        R8 ; [+8]
       85 NOT                              R8 R5
       86 JUMPIFNOT                        R8 ; [+6]
       87 GETTABLEKS                       R9 R0 K19 ["CoreContentSelectStatus"]
       89 JUMPIFEQKS                       R9 K20 ["Eligible"] ; [+2]
       91 LOADB                            R8 0 +1
       92 LOADB                            R8 1
       93 MOVE                             R9 R8
       94 JUMPIFNOT                        R9 ; [+13]
       95 LOADB                            R9 0
       96 GETTABLEKS                       R10 R0 K21 ["CoreContentReasons"]
       98 JUMPIFEQKNIL                     R10 ; [+9]
      100 GETTABLEKS                       R11 R0 K21 ["CoreContentReasons"]
      102 LENGTH                           R10 R11
      103 LOADN                            R11 0
      104 JUMPIFLT                         R11 R10 ; [+2]
      106 LOADB                            R9 0 +1
      107 LOADB                            R9 1
      108 JUMPIFNOT                        R3 ; [+13]
      109 JUMPIFEQKNIL                     R7 ; [+4]
      111 GETUPVAL                         R10 5
      112 JUMPIFNOTLT                      R7 R10 ; [+9]
      114 JUMPIFNOT                        R8 ; [+7]
      115 JUMPIFNOT                        R9 ; [+6]
      116 LOADK                            R12 K9 ["Plugin"]
      117 LOADK                            R13 K17 ["PrivacyType.NeedsAttention"]
      118 NAMECALL                         R10 R1 K11 ["getText"]
      120 CALL                             R10 3 -1
      121 RETURN                           R10 -1
      122 JUMPIFNOT                        R3 ; [+7]
      123 JUMPIFNOT                        R4 ; [+6]
      124 LOADK                            R12 K9 ["Plugin"]
      125 LOADK                            R13 K22 ["PrivacyType.Limited"]
      126 NAMECALL                         R10 R1 K11 ["getText"]
      128 CALL                             R10 3 -1
      129 RETURN                           R10 -1
      130 LOADNIL                          R10
      131 JUMPIFNOT                        R8 ; [+6]
      132 JUMPIFEQKNIL                     R7 ; [+3]
      134 MOVE                             R10 R7
      135 JUMP                             ; [+14]
      136 LOADN                            R10 0
      137 JUMP                             ; [+12]
      138 GETUPVAL                         R12 5
      139 JUMPIFEQKNIL                     R7 ; [+3]
      141 MOVE                             R13 R7
      142 JUMP                             ; [+1]
      143 LOADN                            R13 0
      144 FASTCALL2                        MATH_MAX R12 R13 ; [+3]
      146 GETIMPORT                        R11 K25 [math.max]
      148 CALL                             R11 2 1
      149 MOVE                             R10 R11
      150 LOADNIL                          R11
      151 GETUPVAL                         R12 5
      152 JUMPIFNOTLE                      R12 R10 ; [+8]
      154 GETUPVAL                         R13 5
      155 FASTCALL1                        TOSTRING R13 ; [+2]
      156 GETIMPORT                        R12 K27 [tostring]
      158 CALL                             R12 1 1
      159 MOVE                             R11 R12
      160 JUMP                             ; [+9]
      161 GETUPVAL                         R12 6
      162 JUMPIFNOTLE                      R12 R10 ; [+7]
      164 GETUPVAL                         R13 6
      165 FASTCALL1                        TOSTRING R13 ; [+2]
      166 GETIMPORT                        R12 K27 [tostring]
      168 CALL                             R12 1 1
      169 MOVE                             R11 R12
      170 JUMPIFEQKNIL                     R11 ; [+10]
      172 LOADK                            R14 K9 ["Plugin"]
      173 LOADK                            R15 K28 ["PrivacyType.PublicAgeGated"]
      174 DUPTABLE                         R16 K30 [{"minAge"}]
      175 SETTABLEKS                       R11 R16 K29 ["minAge"]
      177 NAMECALL                         R12 R1 K11 ["getText"]
      179 CALL                             R12 4 -1
      180 RETURN                           R12 -1
      181 LOADK                            R14 K9 ["Plugin"]
      182 LOADK                            R15 K31 ["PrivacyType.PublicAllAges"]
      183 NAMECALL                         R12 R1 K11 ["getText"]
      185 CALL                             R12 3 -1
      186 RETURN                           R12 -1

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
       49 GETTABLEKS                       R8 R8 K10 ["Util"]
       51 GETTABLEKS                       R8 R8 K16 ["getReachStatusBadgePresentation"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K6 ["Src"]
       58 GETTABLEKS                       R9 R9 K10 ["Util"]
       60 GETTABLEKS                       R9 R9 K17 ["CoreContentStatusConstants"]
       62 CALL                             R8 1 1
       63 GETTABLEKS                       R9 R8 K18 ["NEEDS_ATTENTION_AGE_THRESHOLD"]
       65 GETTABLEKS                       R10 R8 K19 ["AGE_BRACKET_9"]
       67 DUPCLOSURE                       R11 K20 [PROTO_0]
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R9
       74 CAPTURE                          VAL R10
       75 RETURN                           R11 1
