PROTO_0:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["getEnrichedPlayabilityValue should only be used when the new list view is enabled"]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 GETUPVAL                         R2 1
        9 CALL                             R2 0 1
       10 JUMPIF                           R2 ; [+4]
       11 GETTABLEKS                       R3 R0 K4 ["PrivacyType"]
       13 ORK                              R2 R3 K3 [""]
       14 RETURN                           R2 1
       15 LOADNIL                          R2
       16 LOADNIL                          R3
       17 GETUPVAL                         R4 2
       18 CALL                             R4 0 1
       19 JUMPIFNOT                        R4 ; [+21]
       20 GETTABLEKS                       R4 R0 K5 ["Audiences"]
       22 JUMPIFEQKNIL                     R4 ; [+18]
       24 GETTABLEKS                       R4 R0 K5 ["Audiences"]
       26 GETUPVAL                         R5 3
       27 MOVE                             R6 R4
       28 CALL                             R5 1 1
       29 NOT                              R2 R5
       30 MOVE                             R5 R2
       31 JUMPIFNOT                        R5 ; [+7]
       32 GETUPVAL                         R6 4
       33 MOVE                             R7 R4
       34 GETUPVAL                         R8 5
       35 GETTABLEKS                       R8 R8 K6 ["Public"]
       37 CALL                             R6 2 1
       38 NOT                              R5 R6
       39 MOVE                             R3 R5
       40 JUMP                             ; [+8]
       41 GETTABLEKS                       R4 R0 K4 ["PrivacyType"]
       43 JUMPIFEQKS                       R4 K6 ["Public"] ; [+2]
       45 LOADB                            R2 0 +1
       46 LOADB                            R2 1
       47 GETTABLEKS                       R3 R0 K7 ["IsFriendsOnly"]
       49 JUMPIF                           R2 ; [+6]
       50 LOADK                            R6 K8 ["Plugin"]
       51 LOADK                            R7 K9 ["PrivacyType.Private"]
       52 NAMECALL                         R4 R1 K10 ["getText"]
       54 CALL                             R4 3 -1
       55 RETURN                           R4 -1
       56 GETTABLEKS                       R5 R0 K11 ["ContentMaturity"]
       58 JUMPIFEQKS                       R5 K12 ["unrated"] ; [+2]
       60 LOADB                            R4 0 +1
       61 LOADB                            R4 1
       62 GETTABLEKS                       R5 R0 K13 ["IsSequestered"]
       64 JUMPIFNOT                        R2 ; [+8]
       65 JUMPIF                           R4 ; [+1]
       66 JUMPIFNOT                        R5 ; [+6]
       67 LOADK                            R8 K8 ["Plugin"]
       68 LOADK                            R9 K14 ["PrivacyType.Unplayable"]
       69 NAMECALL                         R6 R1 K10 ["getText"]
       71 CALL                             R6 3 -1
       72 RETURN                           R6 -1
       73 JUMPIFNOT                        R2 ; [+9]
       74 GETTABLEKS                       R6 R0 K15 ["IsDiscoveryBlocked"]
       76 JUMPIFNOT                        R6 ; [+6]
       77 LOADK                            R8 K8 ["Plugin"]
       78 LOADK                            R9 K16 ["PrivacyType.NeedsAttention"]
       79 NAMECALL                         R6 R1 K10 ["getText"]
       81 CALL                             R6 3 -1
       82 RETURN                           R6 -1
       83 GETTABLEKS                       R6 R0 K17 ["AgeRecommendation"]
       85 MOVE                             R7 R2
       86 JUMPIFNOT                        R7 ; [+8]
       87 NOT                              R7 R4
       88 JUMPIFNOT                        R7 ; [+6]
       89 GETTABLEKS                       R8 R0 K18 ["CoreContentSelectStatus"]
       91 JUMPIFEQKS                       R8 K19 ["Eligible"] ; [+2]
       93 LOADB                            R7 0 +1
       94 LOADB                            R7 1
       95 MOVE                             R8 R7
       96 JUMPIFNOT                        R8 ; [+13]
       97 LOADB                            R8 0
       98 GETTABLEKS                       R9 R0 K20 ["CoreContentReasons"]
      100 JUMPIFEQKNIL                     R9 ; [+9]
      102 GETTABLEKS                       R10 R0 K20 ["CoreContentReasons"]
      104 LENGTH                           R9 R10
      105 LOADN                            R10 0
      106 JUMPIFLT                         R10 R9 ; [+2]
      108 LOADB                            R8 0 +1
      109 LOADB                            R8 1
      110 JUMPIFNOT                        R2 ; [+13]
      111 JUMPIFEQKNIL                     R6 ; [+4]
      113 GETUPVAL                         R9 6
      114 JUMPIFNOTLT                      R6 R9 ; [+9]
      116 JUMPIFNOT                        R7 ; [+7]
      117 JUMPIFNOT                        R8 ; [+6]
      118 LOADK                            R11 K8 ["Plugin"]
      119 LOADK                            R12 K16 ["PrivacyType.NeedsAttention"]
      120 NAMECALL                         R9 R1 K10 ["getText"]
      122 CALL                             R9 3 -1
      123 RETURN                           R9 -1
      124 JUMPIFNOT                        R2 ; [+7]
      125 JUMPIFNOT                        R3 ; [+6]
      126 LOADK                            R11 K8 ["Plugin"]
      127 LOADK                            R12 K21 ["PrivacyType.Limited"]
      128 NAMECALL                         R9 R1 K10 ["getText"]
      130 CALL                             R9 3 -1
      131 RETURN                           R9 -1
      132 LOADNIL                          R9
      133 JUMPIFNOT                        R7 ; [+6]
      134 JUMPIFEQKNIL                     R6 ; [+3]
      136 MOVE                             R9 R6
      137 JUMP                             ; [+14]
      138 LOADN                            R9 0
      139 JUMP                             ; [+12]
      140 GETUPVAL                         R11 6
      141 JUMPIFEQKNIL                     R6 ; [+3]
      143 MOVE                             R12 R6
      144 JUMP                             ; [+1]
      145 LOADN                            R12 0
      146 FASTCALL2                        MATH_MAX R11 R12 ; [+3]
      148 GETIMPORT                        R10 K24 [math.max]
      150 CALL                             R10 2 1
      151 MOVE                             R9 R10
      152 LOADNIL                          R10
      153 GETUPVAL                         R11 6
      154 JUMPIFNOTLE                      R11 R9 ; [+8]
      156 GETUPVAL                         R12 6
      157 FASTCALL1                        TOSTRING R12 ; [+2]
      158 GETIMPORT                        R11 K26 [tostring]
      160 CALL                             R11 1 1
      161 MOVE                             R10 R11
      162 JUMP                             ; [+9]
      163 GETUPVAL                         R11 7
      164 JUMPIFNOTLE                      R11 R9 ; [+7]
      166 GETUPVAL                         R12 7
      167 FASTCALL1                        TOSTRING R12 ; [+2]
      168 GETIMPORT                        R11 K26 [tostring]
      170 CALL                             R11 1 1
      171 MOVE                             R10 R11
      172 JUMPIFEQKNIL                     R10 ; [+10]
      174 LOADK                            R13 K8 ["Plugin"]
      175 LOADK                            R14 K27 ["PrivacyType.PublicAgeGated"]
      176 DUPTABLE                         R15 K29 [{"minAge"}]
      177 SETTABLEKS                       R10 R15 K28 ["minAge"]
      179 NAMECALL                         R11 R1 K10 ["getText"]
      181 CALL                             R11 4 -1
      182 RETURN                           R11 -1
      183 LOADK                            R13 K8 ["Plugin"]
      184 LOADK                            R14 K30 ["PrivacyType.PublicAllAges"]
      185 NAMECALL                         R11 R1 K10 ["getText"]
      187 CALL                             R11 3 -1
      188 RETURN                           R11 -1

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
       67 GETTABLEKS                       R10 R10 K10 ["Util"]
       69 GETTABLEKS                       R10 R10 K18 ["CoreContentStatusConstants"]
       71 CALL                             R9 1 1
       72 GETTABLEKS                       R10 R9 K19 ["NEEDS_ATTENTION_AGE_THRESHOLD"]
       74 GETTABLEKS                       R11 R9 K20 ["AGE_BRACKET_9"]
       76 DUPCLOSURE                       R12 K21 [PROTO_0]
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R5
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R10
       84 CAPTURE                          VAL R11
       85 RETURN                           R12 1
