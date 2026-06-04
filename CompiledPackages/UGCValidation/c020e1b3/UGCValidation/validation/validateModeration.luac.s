PROTO_0:
        0 JUMPIFNOT                        R0 ; [+3]
        1 LENGTH                           R3 R0
        2 JUMPIFNOTEQKN                    R3 K0 [0] ; [+3]
        4 LOADB                            R3 1
        5 RETURN                           R3 1
        6 NEWTABLE                         R3 0 0
        8 GETIMPORT                        R4 K2 [ipairs]
       10 MOVE                             R5 R0
       11 CALL                             R4 1 3
       12 FORGPREP_INEXT                   R4
       13 GETTABLEKS                       R10 R8 K3 ["id"]
       15 FASTCALL1                        TONUMBER R10 ; [+2]
       16 GETIMPORT                        R9 K5 [tonumber]
       18 CALL                             R9 1 1
       19 LOADB                            R10 1
       20 SETTABLE                         R10 R3 R9
       21 FORGLOOP                         R4 2 [inext] ; [-9]
       23 GETIMPORT                        R4 K2 [ipairs]
       25 MOVE                             R5 R1
       26 CALL                             R4 1 3
       27 FORGPREP_INEXT                   R4
       28 GETTABLEKS                       R11 R8 K6 ["creatorTargetId"]
       30 FASTCALL1                        TONUMBER R11 ; [+2]
       31 GETIMPORT                        R10 K5 [tonumber]
       33 CALL                             R10 1 1
       34 GETTABLE                         R9 R3 R10
       35 JUMPIF                           R9 ; [+35]
       36 GETTABLEKS                       R11 R8 K7 ["assetId"]
       38 FASTCALL1                        TOSTRING R11 ; [+2]
       39 GETIMPORT                        R10 K9 [tostring]
       41 CALL                             R10 1 1
       42 GETTABLE                         R9 R2 R10
       43 FASTCALL1                        ASSERT R9 ; [+3]
       44 MOVE                             R11 R9
       45 GETIMPORT                        R10 K11 [assert]
       47 CALL                             R10 1 0
       48 LOADB                            R10 0
       49 NEWTABLE                         R11 0 1
       51 GETIMPORT                        R12 K14 [string.format]
       53 LOADK                            R13 K15 ["Failed to validate current user owns %s.%s ( %s ). Make sure you own the assets being validated and try again."]
       54 GETTABLEKS                       R14 R9 K16 ["instance"]
       56 NAMECALL                         R14 R14 K17 ["GetFullName"]
       58 CALL                             R14 1 1
       59 GETTABLEKS                       R15 R9 K18 ["fieldName"]
       61 GETTABLEKS                       R17 R8 K7 ["assetId"]
       63 FASTCALL1                        TOSTRING R17 ; [+2]
       64 GETIMPORT                        R16 K9 [tostring]
       66 CALL                             R16 1 1
       67 CALL                             R12 4 -1
       68 SETLIST                          R11 R12 -1 [1]
       70 RETURN                           R10 2
       71 FORGLOOP                         R4 2 [inext] ; [-44]
       73 LOADB                            R4 1
       74 RETURN                           R4 1

PROTO_1:
        0 GETTABLEKS                       R3 R2 K0 ["isServer"]
        2 JUMPIF                           R3 ; [+3]
        3 GETTABLEKS                       R3 R2 K1 ["allowUnreviewedAssets"]
        5 JUMPIFNOT                        R3 ; [+2]
        6 LOADB                            R3 1
        7 RETURN                           R3 1
        8 NEWTABLE                         R3 0 0
       10 NEWTABLE                         R4 0 0
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K2 ["parseWithErrorCheck"]
       15 MOVE                             R6 R4
       16 MOVE                             R7 R3
       17 MOVE                             R8 R0
       18 LOADNIL                          R9
       19 LOADNIL                          R10
       20 MOVE                             R11 R2
       21 CALL                             R5 6 2
       22 JUMPIF                           R5 ; [+14]
       23 GETUPVAL                         R7 1
       24 GETTABLEKS                       R7 R7 K3 ["reportFailure"]
       26 GETUPVAL                         R8 1
       27 GETTABLEKS                       R8 R8 K4 ["ErrorType"]
       29 GETTABLEKS                       R8 R8 K5 ["validateModeration_FailedToParse"]
       31 LOADNIL                          R9
       32 MOVE                             R10 R2
       33 CALL                             R7 3 0
       34 LOADB                            R7 0
       35 MOVE                             R8 R6
       36 RETURN                           R7 2
       37 NEWTABLE                         R7 0 0
       39 GETUPVAL                         R8 2
       40 MOVE                             R9 R4
       41 CALL                             R8 1 2
       42 JUMPIFNOT                        R8 ; [+4]
       43 LENGTH                           R10 R9
       44 LENGTH                           R11 R4
       45 JUMPIFEQ                         R10 R11 ; [+25]
       47 GETUPVAL                         R10 1
       48 GETTABLEKS                       R10 R10 K3 ["reportFailure"]
       50 GETUPVAL                         R11 1
       51 GETTABLEKS                       R11 R11 K4 ["ErrorType"]
       53 GETTABLEKS                       R11 R11 K6 ["validateModeration_CouldNotFetchModerationDetails"]
       55 LOADNIL                          R12
       56 MOVE                             R13 R2
       57 CALL                             R10 3 0
       58 LOADB                            R10 0
       59 NEWTABLE                         R11 0 1
       61 GETIMPORT                        R12 K9 [string.format]
       63 LOADK                            R13 K10 ["Failed to fetch moderation results for %s. Make sure all assets are owned by the current user."]
       64 NAMECALL                         R14 R0 K11 ["GetFullName"]
       66 CALL                             R14 1 -1
       67 CALL                             R12 -1 -1
       68 SETLIST                          R11 R12 -1 [1]
       70 RETURN                           R10 2
       71 GETUPVAL                         R10 3
       72 MOVE                             R11 R1
       73 MOVE                             R12 R9
       74 MOVE                             R13 R3
       75 CALL                             R10 3 2
       76 JUMPIF                           R10 ; [+12]
       77 GETUPVAL                         R12 1
       78 GETTABLEKS                       R12 R12 K3 ["reportFailure"]
       80 GETUPVAL                         R13 1
       81 GETTABLEKS                       R13 R13 K4 ["ErrorType"]
       83 GETTABLEKS                       R13 R13 K12 ["validateModeration_ValidateUser"]
       85 LOADNIL                          R14
       86 MOVE                             R15 R2
       87 CALL                             R12 3 0
       88 RETURN                           R10 2
       89 GETIMPORT                        R12 K14 [pairs]
       91 MOVE                             R13 R9
       92 CALL                             R12 1 3
       93 FORGPREP_NEXT                    R12
       94 GETTABLEKS                       R17 R16 K15 ["status"]
       96 GETUPVAL                         R18 4
       97 GETTABLEKS                       R18 R18 K16 ["ASSET_STATUS"]
       99 GETTABLEKS                       R18 R18 K17 ["UNKNOWN"]
      101 JUMPIFEQ                         R17 R18 ; [+19]
      103 GETTABLEKS                       R17 R16 K15 ["status"]
      105 GETUPVAL                         R18 4
      106 GETTABLEKS                       R18 R18 K16 ["ASSET_STATUS"]
      108 GETTABLEKS                       R18 R18 K18 ["REVIEW_PENDING"]
      110 JUMPIFEQ                         R17 R18 ; [+10]
      112 GETTABLEKS                       R17 R16 K15 ["status"]
      114 GETUPVAL                         R18 4
      115 GETTABLEKS                       R18 R18 K16 ["ASSET_STATUS"]
      117 GETTABLEKS                       R18 R18 K19 ["MODERATED"]
      119 JUMPIFNOTEQ                      R17 R18 ; [+9]
      121 GETTABLEKS                       R19 R16 K20 ["assetId"]
      123 FASTCALL2                        TABLE_INSERT R7 R19 ; [+4]
      125 MOVE                             R18 R7
      126 GETIMPORT                        R17 K23 [table.insert]
      128 CALL                             R17 2 0
      129 FORGLOOP                         R12 2 ; [-36]
      131 LENGTH                           R12 R7
      132 LOADN                            R13 0
      133 JUMPIFNOTLT                      R13 R12 ; [+50]
      135 NEWTABLE                         R12 0 0
      137 GETIMPORT                        R13 K14 [pairs]
      139 MOVE                             R14 R7
      140 CALL                             R13 1 3
      141 FORGPREP_NEXT                    R13
      142 GETTABLE                         R18 R3 R17
      143 JUMPIFNOT                        R18 ; [+14]
      144 GETIMPORT                        R19 K9 [string.format]
      146 LOADK                            R20 K24 ["%s.%s ( %s )"]
      147 GETTABLEKS                       R21 R18 K25 ["instance"]
      149 NAMECALL                         R21 R21 K11 ["GetFullName"]
      151 CALL                             R21 1 1
      152 GETTABLEKS                       R22 R18 K26 ["fieldName"]
      154 MOVE                             R23 R17
      155 CALL                             R19 4 1
      156 SETTABLE                         R19 R12 R16
      157 JUMP                             ; [+1]
      158 SETTABLE                         R17 R12 R16
      159 FORGLOOP                         R13 2 ; [-18]
      161 GETUPVAL                         R13 1
      162 GETTABLEKS                       R13 R13 K3 ["reportFailure"]
      164 GETUPVAL                         R14 1
      165 GETTABLEKS                       R14 R14 K4 ["ErrorType"]
      167 GETTABLEKS                       R14 R14 K27 ["validateModeration_AssetsHaveNotPassedModeration"]
      169 LOADNIL                          R15
      170 MOVE                             R16 R2
      171 CALL                             R13 3 0
      172 LOADB                            R13 0
      173 NEWTABLE                         R14 0 2
      175 LOADK                            R15 K28 ["Asset(s) failed to pass moderation:"]
      176 FASTCALL1                        TABLE_UNPACK R12 ; [+3]
      177 MOVE                             R17 R12
      178 GETIMPORT                        R16 K30 [unpack]
      180 CALL                             R16 1 -1
      181 SETLIST                          R14 R15 -1 [1]
      183 RETURN                           R13 2
      184 LOADB                            R12 1
      185 RETURN                           R12 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Analytics"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["Constants"]
       16 CALL                             R2 1 1
       17 GETIMPORT                        R3 K4 [require]
       19 GETTABLEKS                       R4 R0 K7 ["util"]
       21 GETTABLEKS                       R4 R4 K8 ["getAssetCreationDetails"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K4 [require]
       26 GETTABLEKS                       R5 R0 K7 ["util"]
       28 GETTABLEKS                       R5 R5 K9 ["ParseContentIds"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K4 [require]
       33 GETTABLEKS                       R6 R0 K7 ["util"]
       35 GETTABLEKS                       R6 R6 K10 ["Types"]
       37 CALL                             R5 1 1
       38 DUPCLOSURE                       R6 K11 [PROTO_0]
       39 DUPCLOSURE                       R7 K12 [PROTO_1]
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R6
       44 CAPTURE                          VAL R2
       45 RETURN                           R7 1
