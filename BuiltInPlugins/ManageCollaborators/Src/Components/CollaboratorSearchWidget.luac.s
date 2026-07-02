PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+36]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["createBinding"]
        5 LOADK                            R2 K1 [""]
        6 CALL                             R1 1 2
        7 SETTABLEKS                       R1 R0 K2 ["searchbarText"]
        9 SETTABLEKS                       R2 R0 K3 ["updateSearchbarText"]
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K0 ["createBinding"]
       14 LOADNIL                          R2
       15 CALL                             R1 1 2
       16 SETTABLEKS                       R1 R0 K4 ["searchbarFocusedTimestampMilliseconds"]
       18 SETTABLEKS                       R2 R0 K5 ["updateSearchbarFocusedTimestampMilliseconds"]
       20 GETUPVAL                         R1 1
       21 GETTABLEKS                       R1 R1 K0 ["createBinding"]
       23 LOADNIL                          R2
       24 CALL                             R1 1 2
       25 SETTABLEKS                       R1 R0 K6 ["searchbarTextFirstChangedTimestampMilliseconds"]
       27 SETTABLEKS                       R2 R0 K7 ["updateSearchbarTextFirstChangedTimestampMilliseconds"]
       29 GETUPVAL                         R1 1
       30 GETTABLEKS                       R1 R1 K0 ["createBinding"]
       32 LOADNIL                          R2
       33 CALL                             R1 1 2
       34 SETTABLEKS                       R1 R0 K8 ["numCharsInSearchbarOnFocus"]
       36 SETTABLEKS                       R2 R0 K9 ["updateNumCharsInSearchbarOnFocus"]
       38 GETUPVAL                         R1 2
       39 GETTABLEKS                       R1 R1 K10 ["fflagManageCollaboratorsOwnerCountryBlocked"]
       41 JUMPIFNOT                        R1 ; [+3]
       42 DUPTABLE                         R1 K13 [{["countryBlockedError"] = False}]
       43 SETTABLEKS                       R1 R0 K14 ["state"]
       45 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["SearchData"]
        4 GETTABLEKS                       R3 R2 K2 ["CachedSearchResults"]
        6 GETTABLEKS                       R4 R2 K3 ["SearchText"]
        8 LOADB                            R5 1
        9 GETTABLEKS                       R6 R2 K4 ["LocalUserGroups"]
       11 GETUPVAL                         R7 0
       12 JUMPIFEQ                         R6 R7 ; [+20]
       14 LOADB                            R5 1
       15 GETTABLEKS                       R6 R2 K5 ["LocalUserFriends"]
       17 GETUPVAL                         R7 0
       18 JUMPIFEQ                         R6 R7 ; [+14]
       20 LOADB                            R5 1
       21 GETTABLE                         R6 R3 R4
       22 GETUPVAL                         R7 0
       23 JUMPIFEQ                         R6 R7 ; [+9]
       25 LOADB                            R5 0
       26 GETTABLE                         R6 R3 R4
       27 JUMPIFNOTEQKNIL                  R6 ; [+5]
       29 JUMPIFNOTEQKS                    R4 K6 [""] ; [+2]
       31 LOADB                            R5 0 +1
       32 LOADB                            R5 1
       33 RETURN                           R5 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R2 K1 ["ownerType"]
        4 GETTABLEKS                       R4 R2 K2 ["ownerFriends"]
        6 GETIMPORT                        R5 K6 [Enum.CreatorType.User]
        8 JUMPIFNOTEQ                      R3 R5 ; [+12]
       10 GETIMPORT                        R5 K8 [ipairs]
       12 MOVE                             R6 R4
       13 CALL                             R5 1 3
       14 FORGPREP_INEXT                   R5
       15 JUMPIFNOTEQ                      R9 R1 ; [+3]
       17 LOADB                            R10 1
       18 RETURN                           R10 1
       19 FORGLOOP                         R5 2 [inext] ; [-5]
       21 LOADB                            R5 0
       22 RETURN                           R5 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOTEQKNIL                  R2 ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOTEQKNIL                  R2 ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOTEQKNIL                  R2 ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["lower"]
        3 CALL                             R1 1 1
        4 GETIMPORT                        R2 K3 [string.match]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K4 ["SubjectNameKey"]
        9 GETTABLE                         R3 R0 R4
       10 NAMECALL                         R3 R3 K0 ["lower"]
       12 CALL                             R3 1 1
       13 LOADK                            R5 K5 ["^"]
       14 MOVE                             R6 R1
       15 CONCAT                           R4 R5 R6
       16 CALL                             R2 2 1
       17 GETIMPORT                        R3 K3 [string.match]
       19 GETUPVAL                         R5 1
       20 GETTABLEKS                       R5 R5 K6 ["SubjectDisplayNameKey"]
       22 GETTABLE                         R4 R0 R5
       23 NAMECALL                         R4 R4 K0 ["lower"]
       25 CALL                             R4 1 1
       26 LOADK                            R6 K5 ["^"]
       27 MOVE                             R7 R1
       28 CONCAT                           R5 R6 R7
       29 CALL                             R3 2 1
       30 OR                               R4 R2 R3
       31 RETURN                           R4 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["SearchData"]
        4 GETTABLEKS                       R3 R1 K2 ["UserCollaborators"]
        6 GETTABLEKS                       R4 R1 K3 ["GroupCollaborators"]
        8 GETTABLEKS                       R5 R2 K4 ["CachedSearchResults"]
       10 GETTABLEKS                       R6 R2 K5 ["SearchText"]
       12 NEWTABLE                         R7 0 0
       14 GETIMPORT                        R8 K7 [ipairs]
       16 MOVE                             R9 R3
       17 CALL                             R8 1 3
       18 FORGPREP_INEXT                   R8
       19 LOADB                            R13 1
       20 SETTABLE                         R13 R7 R12
       21 FORGLOOP                         R8 2 [inext] ; [-3]
       23 NEWCLOSURE                       R8 P0
       24 CAPTURE                          VAL R7
       25 NEWTABLE                         R9 0 0
       27 GETIMPORT                        R10 K7 [ipairs]
       29 MOVE                             R11 R4
       30 CALL                             R10 1 3
       31 FORGPREP_INEXT                   R10
       32 LOADB                            R15 1
       33 SETTABLE                         R15 R9 R14
       34 FORGLOOP                         R10 2 [inext] ; [-3]
       36 NEWCLOSURE                       R10 P1
       37 CAPTURE                          VAL R9
       38 DUPTABLE                         R11 K10 [{"Users", "Groups"}]
       39 NEWTABLE                         R12 0 0
       41 SETTABLEKS                       R12 R11 K8 ["Users"]
       43 NEWTABLE                         R12 0 0
       45 SETTABLEKS                       R12 R11 K9 ["Groups"]
       47 LOADNIL                          R12
       48 LOADNIL                          R13
       49 GETUPVAL                         R14 0
       50 JUMPIFNOT                        R14 ; [+41]
       51 GETTABLEKS                       R14 R2 K11 ["LikelyCollaborators"]
       53 NEWTABLE                         R15 0 0
       55 NEWCLOSURE                       R12 P2
       56 CAPTURE                          VAL R15
       57 NEWTABLE                         R13 0 0
       59 NEWCLOSURE                       R16 P3
       60 CAPTURE                          VAL R6
       61 CAPTURE                          UPVAL U1
       62 GETIMPORT                        R17 K7 [ipairs]
       64 MOVE                             R18 R14
       65 CALL                             R17 1 3
       66 FORGPREP_INEXT                   R17
       67 GETUPVAL                         R23 1
       68 GETTABLEKS                       R23 R23 K12 ["SubjectIdKey"]
       70 GETTABLE                         R22 R21 R23
       71 MOVE                             R23 R16
       72 MOVE                             R24 R21
       73 CALL                             R23 1 1
       74 JUMPIFNOT                        R23 ; [+15]
       75 GETTABLE                         R24 R7 R22
       76 JUMPIFNOTEQKNIL                  R24 ; [+2]
       78 LOADB                            R23 0 +1
       79 LOADB                            R23 1
       80 JUMPIF                           R23 ; [+9]
       81 FASTCALL2                        TABLE_INSERT R13 R21 ; [+5]
       83 MOVE                             R24 R13
       84 MOVE                             R25 R21
       85 GETIMPORT                        R23 K15 [table.insert]
       87 CALL                             R23 2 0
       88 LOADB                            R23 1
       89 SETTABLE                         R23 R15 R22
       90 FORGLOOP                         R17 2 [inext] ; [-24]
       92 GETTABLE                         R14 R5 R6
       93 JUMPIFNOT                        R14 ; [+90]
       94 GETTABLE                         R14 R5 R6
       95 GETUPVAL                         R15 2
       96 JUMPIFEQ                         R14 R15 ; [+87]
       98 GETTABLE                         R15 R5 R6
       99 GETUPVAL                         R16 1
      100 GETTABLEKS                       R16 R16 K16 ["UserSubjectKey"]
      102 GETTABLE                         R14 R15 R16
      103 GETTABLE                         R16 R5 R6
      104 GETUPVAL                         R17 1
      105 GETTABLEKS                       R17 R17 K17 ["GroupSubjectKey"]
      107 GETTABLE                         R15 R16 R17
      108 NEWTABLE                         R16 0 0
      110 GETIMPORT                        R17 K19 [pairs]
      112 MOVE                             R18 R14
      113 CALL                             R17 1 3
      114 FORGPREP_NEXT                    R17
      115 GETUPVAL                         R23 1
      116 GETTABLEKS                       R23 R23 K12 ["SubjectIdKey"]
      118 GETTABLE                         R22 R21 R23
      119 GETUPVAL                         R23 0
      120 JUMPIFNOT                        R23 ; [+18]
      121 GETTABLE                         R24 R7 R22
      122 JUMPIFNOTEQKNIL                  R24 ; [+2]
      124 LOADB                            R23 0 +1
      125 LOADB                            R23 1
      126 JUMPIF                           R23 ; [+25]
      127 MOVE                             R23 R12
      128 MOVE                             R24 R22
      129 CALL                             R23 1 1
      130 JUMPIF                           R23 ; [+21]
      131 FASTCALL2                        TABLE_INSERT R16 R21 ; [+5]
      133 MOVE                             R24 R16
      134 MOVE                             R25 R21
      135 GETIMPORT                        R23 K15 [table.insert]
      137 CALL                             R23 2 0
      138 JUMP                             ; [+13]
      139 GETTABLE                         R24 R7 R22
      140 JUMPIFNOTEQKNIL                  R24 ; [+2]
      142 LOADB                            R23 0 +1
      143 LOADB                            R23 1
      144 JUMPIF                           R23 ; [+7]
      145 FASTCALL2                        TABLE_INSERT R16 R21 ; [+5]
      147 MOVE                             R24 R16
      148 MOVE                             R25 R21
      149 GETIMPORT                        R23 K15 [table.insert]
      151 CALL                             R23 2 0
      152 FORGLOOP                         R17 2 ; [-38]
      154 NEWTABLE                         R17 0 0
      156 GETIMPORT                        R18 K19 [pairs]
      158 MOVE                             R19 R15
      159 CALL                             R18 1 3
      160 FORGPREP_NEXT                    R18
      161 GETUPVAL                         R24 1
      162 GETTABLEKS                       R24 R24 K20 ["GroupIdKey"]
      164 GETTABLE                         R23 R22 R24
      165 GETTABLE                         R25 R9 R23
      166 JUMPIFNOTEQKNIL                  R25 ; [+2]
      168 LOADB                            R24 0 +1
      169 LOADB                            R24 1
      170 JUMPIF                           R24 ; [+7]
      171 FASTCALL2                        TABLE_INSERT R17 R22 ; [+5]
      173 MOVE                             R25 R17
      174 MOVE                             R26 R22
      175 GETIMPORT                        R24 K15 [table.insert]
      177 CALL                             R24 2 0
      178 FORGLOOP                         R18 2 ; [-18]
      180 SETTABLEKS                       R16 R11 K8 ["Users"]
      182 SETTABLEKS                       R17 R11 K9 ["Groups"]
      184 GETUPVAL                         R14 0
      185 JUMPIFNOT                        R14 ; [+11]
      186 GETUPVAL                         R14 3
      187 GETTABLEKS                       R14 R14 K21 ["List"]
      189 GETTABLEKS                       R14 R14 K22 ["join"]
      191 MOVE                             R15 R13
      192 GETTABLEKS                       R16 R11 K8 ["Users"]
      194 CALL                             R14 2 1
      195 SETTABLEKS                       R14 R11 K8 ["Users"]
      197 RETURN                           R11 1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["SearchData"]
        4 GETTABLEKS                       R3 R1 K2 ["IsGroupGame"]
        6 GETTABLEKS                       R4 R2 K3 ["SearchText"]
        8 GETUPVAL                         R5 0
        9 JUMPIF                           R5 ; [+5]
       10 JUMPIFNOTEQKS                    R4 K4 [""] ; [+4]
       12 NEWTABLE                         R5 0 0
       14 RETURN                           R5 1
       15 NAMECALL                         R5 R0 K5 ["getMatches"]
       17 CALL                             R5 1 1
       18 NEWTABLE                         R6 0 0
       20 GETUPVAL                         R7 1
       21 GETTABLEKS                       R7 R7 K6 ["MaxSearchResultsPerSubjectTypeUsers"]
       23 GETUPVAL                         R8 1
       24 GETTABLEKS                       R8 R8 K7 ["MaxSearchResultsPerSubjectTypeGroups"]
       26 GETUPVAL                         R10 1
       27 GETTABLEKS                       R10 R10 K6 ["MaxSearchResultsPerSubjectTypeUsers"]
       29 GETTABLEKS                       R12 R5 K8 ["Users"]
       31 LENGTH                           R11 R12
       32 SUB                              R9 R10 R11
       33 GETUPVAL                         R11 1
       34 GETTABLEKS                       R11 R11 K7 ["MaxSearchResultsPerSubjectTypeGroups"]
       36 GETTABLEKS                       R13 R5 K9 ["Groups"]
       38 LENGTH                           R12 R13
       39 SUB                              R10 R11 R12
       40 LOADN                            R11 0
       41 JUMPIFNOTLT                      R11 R10 ; [+10]
       43 LOADB                            R11 0
       44 LOADN                            R12 0
       45 JUMPIFNOTLT                      R12 R10 ; [+5]
       47 GETUPVAL                         R12 1
       48 GETTABLEKS                       R12 R12 K6 ["MaxSearchResultsPerSubjectTypeUsers"]
       50 ADD                              R11 R12 R10
       51 MOVE                             R7 R11
       52 LOADN                            R11 0
       53 JUMPIFNOTLT                      R11 R9 ; [+10]
       55 LOADB                            R11 0
       56 LOADN                            R12 0
       57 JUMPIFNOTLT                      R12 R9 ; [+5]
       59 GETUPVAL                         R12 1
       60 GETTABLEKS                       R12 R12 K7 ["MaxSearchResultsPerSubjectTypeGroups"]
       62 ADD                              R11 R12 R9
       63 MOVE                             R8 R11
       64 GETTABLEKS                       R12 R5 K8 ["Users"]
       66 LENGTH                           R11 R12
       67 LOADN                            R12 0
       68 JUMPIFNOTLT                      R12 R11 ; [+138]
       70 NEWTABLE                         R11 1 0
       72 NEWTABLE                         R12 0 0
       74 GETIMPORT                        R13 K11 [pairs]
       76 GETTABLEKS                       R14 R5 K8 ["Users"]
       78 CALL                             R13 1 3
       79 FORGPREP_NEXT                    R13
       80 LENGTH                           R20 R11
       81 LENGTH                           R21 R12
       82 ADD                              R19 R20 R21
       83 ADDK                             R18 R19 K12 [1]
       84 JUMPIFLT                         R7 R18 ; [+104]
       86 GETUPVAL                         R19 1
       87 GETTABLEKS                       R19 R19 K13 ["SubjectIdKey"]
       89 GETTABLE                         R18 R17 R19
       90 DUPTABLE                         R19 K17 [{"Icon", "Name", "Key"}]
       91 GETUPVAL                         R20 2
       92 GETTABLEKS                       R20 R20 K18 ["createElement"]
       94 GETUPVAL                         R21 3
       95 DUPTABLE                         R22 K21 [{"Id", "Size"}]
       96 SETTABLEKS                       R18 R22 K19 ["Id"]
       98 GETIMPORT                        R23 K24 [UDim2.new]
      100 LOADN                            R24 1
      101 LOADN                            R25 0
      102 LOADN                            R26 1
      103 LOADN                            R27 0
      104 CALL                             R23 4 1
      105 SETTABLEKS                       R23 R22 K20 ["Size"]
      107 CALL                             R20 2 1
      108 SETTABLEKS                       R20 R19 K14 ["Icon"]
      110 GETUPVAL                         R21 1
      111 GETTABLEKS                       R21 R21 K25 ["SubjectNameKey"]
      113 GETTABLE                         R20 R17 R21
      114 SETTABLEKS                       R20 R19 K15 ["Name"]
      116 DUPTABLE                         R20 K31 [{"Type", "Id", "Name", "DisplayName", "IsEligible", "EligibilityText", "IsPrefetched"}]
      117 GETUPVAL                         R21 1
      118 GETTABLEKS                       R21 R21 K32 ["UserSubjectKey"]
      120 SETTABLEKS                       R21 R20 K26 ["Type"]
      122 SETTABLEKS                       R18 R20 K19 ["Id"]
      124 GETUPVAL                         R22 1
      125 GETTABLEKS                       R22 R22 K25 ["SubjectNameKey"]
      127 GETTABLE                         R21 R17 R22
      128 SETTABLEKS                       R21 R20 K15 ["Name"]
      130 GETUPVAL                         R22 4
      131 JUMPIFNOT                        R22 ; [+5]
      132 GETUPVAL                         R22 1
      133 GETTABLEKS                       R22 R22 K33 ["SubjectDisplayNameKey"]
      135 GETTABLE                         R21 R17 R22
      136 JUMP                             ; [+1]
      137 LOADNIL                          R21
      138 SETTABLEKS                       R21 R20 K27 ["DisplayName"]
      140 GETUPVAL                         R22 1
      141 GETTABLEKS                       R22 R22 K34 ["IsEligibleKey"]
      143 GETTABLE                         R21 R17 R22
      144 SETTABLEKS                       R21 R20 K28 ["IsEligible"]
      146 GETUPVAL                         R22 1
      147 GETTABLEKS                       R22 R22 K35 ["EligibilityTextKey"]
      149 GETTABLE                         R21 R17 R22
      150 SETTABLEKS                       R21 R20 K29 ["EligibilityText"]
      152 GETUPVAL                         R22 0
      153 JUMPIFNOT                        R22 ; [+5]
      154 GETUPVAL                         R22 1
      155 GETTABLEKS                       R22 R22 K36 ["IsPrefetchedKey"]
      157 GETTABLE                         R21 R17 R22
      158 JUMP                             ; [+1]
      159 LOADNIL                          R21
      160 SETTABLEKS                       R21 R20 K30 ["IsPrefetched"]
      162 SETTABLEKS                       R20 R19 K16 ["Key"]
      164 MOVE                             R22 R18
      165 NAMECALL                         R20 R0 K37 ["isFriend"]
      167 CALL                             R20 2 1
      168 JUMPIFNOT                        R20 ; [+11]
      169 LOADB                            R20 1
      170 SETTABLEKS                       R20 R19 K38 ["IsFriend"]
      172 FASTCALL2                        TABLE_INSERT R11 R19 ; [+5]
      174 MOVE                             R21 R11
      175 MOVE                             R22 R19
      176 GETIMPORT                        R20 K41 [table.insert]
      178 CALL                             R20 2 0
      179 JUMP                             ; [+7]
      180 FASTCALL2                        TABLE_INSERT R12 R19 ; [+5]
      182 MOVE                             R21 R12
      183 MOVE                             R22 R19
      184 GETIMPORT                        R20 K41 [table.insert]
      186 CALL                             R20 2 0
      187 FORGLOOP                         R13 2 ; [-108]
      189 MOVE                             R13 R12
      190 LOADNIL                          R14
      191 LOADNIL                          R15
      192 FORGPREP                         R13
      193 FASTCALL2                        TABLE_INSERT R11 R17 ; [+5]
      195 MOVE                             R19 R11
      196 MOVE                             R20 R17
      197 GETIMPORT                        R18 K41 [table.insert]
      199 CALL                             R18 2 0
      200 FORGLOOP                         R13 2 ; [-8]
      202 LOADN                            R13 0
      203 SETTABLEKS                       R13 R11 K42 ["LayoutOrder"]
      205 GETUPVAL                         R13 5
      206 SETTABLE                         R11 R6 R13
      207 GETTABLEKS                       R12 R5 K9 ["Groups"]
      209 LENGTH                           R11 R12
      210 LOADN                            R12 0
      211 JUMPIFNOTLT                      R12 R11 ; [+77]
      213 JUMPIF                           R3 ; [+75]
      214 NEWTABLE                         R11 1 0
      216 GETIMPORT                        R12 K11 [pairs]
      218 GETTABLEKS                       R13 R5 K9 ["Groups"]
      220 CALL                             R12 1 3
      221 FORGPREP_NEXT                    R12
      222 LENGTH                           R18 R11
      223 ADDK                             R17 R18 K12 [1]
      224 JUMPIFLT                         R8 R17 ; [+59]
      226 DUPTABLE                         R19 K17 [{"Icon", "Name", "Key"}]
      227 GETUPVAL                         R20 2
      228 GETTABLEKS                       R20 R20 K18 ["createElement"]
      230 GETUPVAL                         R21 6
      231 DUPTABLE                         R22 K21 [{"Id", "Size"}]
      232 GETUPVAL                         R24 1
      233 GETTABLEKS                       R24 R24 K43 ["GroupIdKey"]
      235 GETTABLE                         R23 R16 R24
      236 SETTABLEKS                       R23 R22 K19 ["Id"]
      238 GETIMPORT                        R23 K24 [UDim2.new]
      240 LOADN                            R24 1
      241 LOADN                            R25 0
      242 LOADN                            R26 1
      243 LOADN                            R27 0
      244 CALL                             R23 4 1
      245 SETTABLEKS                       R23 R22 K20 ["Size"]
      247 CALL                             R20 2 1
      248 SETTABLEKS                       R20 R19 K14 ["Icon"]
      250 GETUPVAL                         R21 1
      251 GETTABLEKS                       R21 R21 K44 ["GroupNameKey"]
      253 GETTABLE                         R20 R16 R21
      254 SETTABLEKS                       R20 R19 K15 ["Name"]
      256 DUPTABLE                         R20 K46 [{["Type"], ["Id"], ["Name"], ["IsEligible"] = True}]
      257 GETUPVAL                         R21 1
      258 GETTABLEKS                       R21 R21 K47 ["GroupSubjectKey"]
      260 SETTABLEKS                       R21 R20 K26 ["Type"]
      262 GETUPVAL                         R22 1
      263 GETTABLEKS                       R22 R22 K43 ["GroupIdKey"]
      265 GETTABLE                         R21 R16 R22
      266 SETTABLEKS                       R21 R20 K19 ["Id"]
      268 GETUPVAL                         R22 1
      269 GETTABLEKS                       R22 R22 K44 ["GroupNameKey"]
      271 GETTABLE                         R21 R16 R22
      272 SETTABLEKS                       R21 R20 K15 ["Name"]
      274 SETTABLEKS                       R20 R19 K16 ["Key"]
      276 FASTCALL2                        TABLE_INSERT R11 R19 ; [+4]
      278 MOVE                             R18 R11
      279 GETIMPORT                        R17 K41 [table.insert]
      281 CALL                             R17 2 0
      282 FORGLOOP                         R12 2 ; [-61]
      284 LOADN                            R12 0
      285 SETTABLEKS                       R12 R11 K42 ["LayoutOrder"]
      287 GETUPVAL                         R12 7
      288 SETTABLE                         R11 R6 R12
      289 RETURN                           R6 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADB                            R3 1
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+21]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["updateSearchbarText"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K1 ["state"]
       10 GETTABLEKS                       R1 R1 K2 ["searchbarTextFirstChangedTimestampMilliseconds"]
       12 JUMPIFNOTEQKNIL                  R1 ; [+10]
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R1 R1 K3 ["updateSearchbarTextFirstChangedTimestampMilliseconds"]
       17 GETIMPORT                        R2 K6 [DateTime.now]
       19 CALL                             R2 0 1
       20 GETTABLEKS                       R2 R2 K7 ["UnixTimestampMillis"]
       22 CALL                             R1 1 0
       23 GETUPVAL                         R1 2
       24 MOVE                             R2 R0
       25 LOADB                            R3 0
       26 CALL                             R1 2 0
       27 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fflagManageCollaboratorsOwnerCountryBlocked"]
        3 JUMPIFNOT                        R0 ; [+11]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["state"]
        7 GETTABLEKS                       R0 R0 K2 ["countryBlockedError"]
        9 JUMPIFNOT                        R0 ; [+5]
       10 GETUPVAL                         R0 1
       11 DUPTABLE                         R2 K4 [{["countryBlockedError"] = False}]
       12 NAMECALL                         R0 R0 K5 ["setState"]
       14 CALL                             R0 2 0
       15 GETUPVAL                         R0 2
       16 JUMPIFNOT                        R0 ; [+20]
       17 GETUPVAL                         R0 1
       18 GETTABLEKS                       R0 R0 K6 ["updateSearchbarFocusedTimestampMilliseconds"]
       20 GETIMPORT                        R1 K9 [DateTime.now]
       22 CALL                             R1 0 1
       23 GETTABLEKS                       R1 R1 K10 ["UnixTimestampMillis"]
       25 CALL                             R0 1 0
       26 GETUPVAL                         R0 1
       27 GETTABLEKS                       R0 R0 K11 ["updateNumCharsInSearchbarOnFocus"]
       29 GETUPVAL                         R2 1
       30 GETTABLEKS                       R2 R2 K12 ["searchbarText"]
       32 NAMECALL                         R2 R2 K13 ["getValue"]
       34 CALL                             R2 1 1
       35 LENGTH                           R1 R2
       36 CALL                             R0 1 0
       37 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K4 ["fflagManageCollaboratorsAgeGatingTelemetry"]
        8 JUMPIFNOT                        R0 ; [+24]
        9 GETUPVAL                         R0 2
       10 GETUPVAL                         R2 3
       11 DUPTABLE                         R3 K12 [{["userId"], ["telemetryType"] = "load", ["upsellEntrySurface"] = "manage_collaborators_search_country_blocked", ["placeId"], ["universeId"]}]
       12 GETUPVAL                         R4 4
       13 NAMECALL                         R4 R4 K13 ["GetUserId"]
       15 CALL                             R4 1 1
       16 SETTABLEKS                       R4 R3 K5 ["userId"]
       18 GETIMPORT                        R4 K15 [game]
       20 GETTABLEKS                       R4 R4 K16 ["PlaceId"]
       22 SETTABLEKS                       R4 R3 K10 ["placeId"]
       24 GETIMPORT                        R4 K15 [game]
       26 GETTABLEKS                       R4 R4 K17 ["GameId"]
       28 SETTABLEKS                       R4 R3 K11 ["universeId"]
       30 NAMECALL                         R0 R0 K18 ["logRobloxTelemetryEvent"]
       32 CALL                             R0 3 0
       33 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CheckAndAddUserCollaborator"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Id"]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["Name"]
        9 GETUPVAL                         R3 2
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          UPVAL U5
       14 CAPTURE                          UPVAL U6
       15 CAPTURE                          UPVAL U7
       16 CALL                             R0 4 0
       17 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+3]
        2 GETUPVAL                         R1 1
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R2 R0 K0 ["Type"]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K1 ["UserSubjectKey"]
       10 JUMPIFEQ                         R2 R3 ; [+2]
       12 LOADB                            R1 0 +1
       13 LOADB                            R1 1
       14 GETUPVAL                         R2 3
       15 GETTABLEKS                       R4 R0 K2 ["Id"]
       17 NAMECALL                         R2 R2 K3 ["isFriend"]
       19 CALL                             R2 2 1
       20 GETTABLEKS                       R4 R0 K0 ["Type"]
       22 GETUPVAL                         R5 2
       23 GETTABLEKS                       R5 R5 K4 ["GroupSubjectKey"]
       25 JUMPIFEQ                         R4 R5 ; [+2]
       27 LOADB                            R3 0 +1
       28 LOADB                            R3 1
       29 DUPTABLE                         R4 K17 [{"numCharsInSearchbarOnItemClick", "numCharsInSearchbarOnFocus", "searchbarFocusedTimestampMilliseconds", "searchbarTextFirstChangedTimestampMilliseconds", "itemClickedTimestampMilliseconds", "numCharsInItemDisplayName", "numCharsInItemName", "isUser", "isFriend", "isGroup", "isGroupOwned", "isPrefetched", "userId"}]
       30 GETUPVAL                         R6 3
       31 GETTABLEKS                       R6 R6 K18 ["searchbarText"]
       33 NAMECALL                         R6 R6 K19 ["getValue"]
       35 CALL                             R6 1 1
       36 LENGTH                           R5 R6
       37 SETTABLEKS                       R5 R4 K5 ["numCharsInSearchbarOnItemClick"]
       39 GETUPVAL                         R5 3
       40 GETTABLEKS                       R5 R5 K6 ["numCharsInSearchbarOnFocus"]
       42 NAMECALL                         R5 R5 K19 ["getValue"]
       44 CALL                             R5 1 1
       45 SETTABLEKS                       R5 R4 K6 ["numCharsInSearchbarOnFocus"]
       47 GETUPVAL                         R5 3
       48 GETTABLEKS                       R5 R5 K7 ["searchbarFocusedTimestampMilliseconds"]
       50 NAMECALL                         R5 R5 K19 ["getValue"]
       52 CALL                             R5 1 1
       53 SETTABLEKS                       R5 R4 K7 ["searchbarFocusedTimestampMilliseconds"]
       55 GETUPVAL                         R5 3
       56 GETTABLEKS                       R5 R5 K8 ["searchbarTextFirstChangedTimestampMilliseconds"]
       58 NAMECALL                         R5 R5 K19 ["getValue"]
       60 CALL                             R5 1 1
       61 SETTABLEKS                       R5 R4 K8 ["searchbarTextFirstChangedTimestampMilliseconds"]
       63 GETIMPORT                        R5 K22 [DateTime.now]
       65 CALL                             R5 0 1
       66 GETTABLEKS                       R5 R5 K23 ["UnixTimestampMillis"]
       68 SETTABLEKS                       R5 R4 K9 ["itemClickedTimestampMilliseconds"]
       70 GETTABLEKS                       R6 R0 K24 ["DisplayName"]
       72 JUMPIFNOT                        R6 ; [+4]
       73 GETTABLEKS                       R6 R0 K24 ["DisplayName"]
       75 LENGTH                           R5 R6
       76 JUMP                             ; [+1]
       77 LOADNIL                          R5
       78 SETTABLEKS                       R5 R4 K10 ["numCharsInItemDisplayName"]
       80 GETTABLEKS                       R6 R0 K25 ["Name"]
       82 LENGTH                           R5 R6
       83 SETTABLEKS                       R5 R4 K11 ["numCharsInItemName"]
       85 SETTABLEKS                       R1 R4 K12 ["isUser"]
       87 SETTABLEKS                       R2 R4 K3 ["isFriend"]
       89 SETTABLEKS                       R3 R4 K13 ["isGroup"]
       91 GETUPVAL                         R5 4
       92 SETTABLEKS                       R5 R4 K14 ["isGroupOwned"]
       94 GETUPVAL                         R6 5
       95 JUMPIFNOT                        R6 ; [+5]
       96 GETTABLEKS                       R6 R0 K26 ["IsPrefetched"]
       98 JUMPIFNOT                        R6 ; [+2]
       99 LOADB                            R5 1
      100 JUMP                             ; [+1]
      101 LOADB                            R5 0
      102 SETTABLEKS                       R5 R4 K15 ["isPrefetched"]
      104 GETUPVAL                         R5 6
      105 NAMECALL                         R5 R5 K27 ["GetUserId"]
      107 CALL                             R5 1 1
      108 SETTABLEKS                       R5 R4 K16 ["userId"]
      110 GETUPVAL                         R5 7
      111 GETTABLEKS                       R5 R5 K28 ["LoadFriends"]
      113 CALL                             R5 0 0
      114 JUMPIFNOT                        R1 ; [+45]
      115 GETTABLEKS                       R5 R0 K29 ["IsEligible"]
      117 JUMPIFNOT                        R5 ; [+42]
      118 JUMPIFNOT                        R2 ; [+2]
      119 GETUPVAL                         R5 8
      120 JUMP                             ; [+1]
      121 GETUPVAL                         R5 9
      122 GETUPVAL                         R6 10
      123 GETTABLEKS                       R6 R6 K30 ["fflagManageCollaboratorsOwnerCountryBlocked"]
      125 JUMPIFNOT                        R6 ; [+20]
      126 GETIMPORT                        R6 K33 [coroutine.wrap]
      128 NEWCLOSURE                       R7 P0
      129 CAPTURE                          UPVAL U7
      130 CAPTURE                          VAL R0
      131 CAPTURE                          VAL R5
      132 CAPTURE                          UPVAL U3
      133 CAPTURE                          UPVAL U10
      134 CAPTURE                          UPVAL U11
      135 CAPTURE                          UPVAL U12
      136 CAPTURE                          UPVAL U6
      137 CALL                             R6 1 1
      138 CALL                             R6 0 0
      139 GETUPVAL                         R6 13
      140 GETUPVAL                         R7 14
      141 GETTABLEKS                       R8 R0 K2 ["Id"]
      143 MOVE                             R9 R4
      144 CALL                             R6 3 0
      145 RETURN                           R0 0
      146 GETUPVAL                         R6 15
      147 GETTABLEKS                       R7 R0 K2 ["Id"]
      149 GETTABLEKS                       R8 R0 K25 ["Name"]
      151 MOVE                             R9 R5
      152 CALL                             R6 3 0
      153 GETUPVAL                         R6 13
      154 GETUPVAL                         R7 14
      155 GETTABLEKS                       R8 R0 K2 ["Id"]
      157 MOVE                             R9 R4
      158 CALL                             R6 3 0
      159 RETURN                           R0 0
      160 JUMPIFNOT                        R3 ; [+12]
      161 GETUPVAL                         R5 16
      162 GETTABLEKS                       R6 R0 K2 ["Id"]
      164 GETUPVAL                         R7 9
      165 CALL                             R5 2 0
      166 GETUPVAL                         R5 13
      167 GETUPVAL                         R6 17
      168 GETTABLEKS                       R7 R0 K2 ["Id"]
      170 MOVE                             R8 R4
      171 CALL                             R5 3 0
      172 RETURN                           R0 0
      173 LOADB                            R6 0
      174 FASTCALL1                        ASSERT R6 ; [+2]
      175 GETIMPORT                        R5 K35 [assert]
      177 CALL                             R5 1 0
      178 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K4 ["fflagManageCollaboratorsAgeGatingTelemetry"]
        8 JUMPIFNOT                        R0 ; [+24]
        9 GETUPVAL                         R0 2
       10 GETUPVAL                         R2 3
       11 DUPTABLE                         R3 K12 [{["userId"], ["telemetryType"] = "load", ["upsellEntrySurface"] = "manage_collaborators_search_country_blocked", ["placeId"], ["universeId"]}]
       12 GETUPVAL                         R4 4
       13 NAMECALL                         R4 R4 K13 ["GetUserId"]
       15 CALL                             R4 1 1
       16 SETTABLEKS                       R4 R3 K5 ["userId"]
       18 GETIMPORT                        R4 K15 [game]
       20 GETTABLEKS                       R4 R4 K16 ["PlaceId"]
       22 SETTABLEKS                       R4 R3 K10 ["placeId"]
       24 GETIMPORT                        R4 K15 [game]
       26 GETTABLEKS                       R4 R4 K17 ["GameId"]
       28 SETTABLEKS                       R4 R3 K11 ["universeId"]
       30 NAMECALL                         R0 R0 K18 ["logRobloxTelemetryEvent"]
       32 CALL                             R0 3 0
       33 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CheckAndAddUserCollaborator"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Id"]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["Name"]
        9 GETUPVAL                         R3 2
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          UPVAL U5
       14 CAPTURE                          UPVAL U6
       15 CAPTURE                          UPVAL U7
       16 CALL                             R0 4 0
       17 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+3]
        2 GETUPVAL                         R1 1
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K0 ["LoadFriends"]
        8 CALL                             R1 0 0
        9 GETTABLEKS                       R1 R0 K1 ["Type"]
       11 GETUPVAL                         R2 3
       12 GETTABLEKS                       R2 R2 K2 ["UserSubjectKey"]
       14 JUMPIFNOTEQ                      R1 R2 ; [+40]
       16 GETTABLEKS                       R1 R0 K3 ["IsEligible"]
       18 JUMPIFNOT                        R1 ; [+36]
       19 GETUPVAL                         R2 4
       20 GETTABLEKS                       R4 R0 K4 ["Id"]
       22 NAMECALL                         R2 R2 K5 ["isFriend"]
       24 CALL                             R2 2 1
       25 JUMPIFNOT                        R2 ; [+2]
       26 GETUPVAL                         R1 5
       27 JUMP                             ; [+1]
       28 GETUPVAL                         R1 6
       29 GETUPVAL                         R2 7
       30 GETTABLEKS                       R2 R2 K6 ["fflagManageCollaboratorsOwnerCountryBlocked"]
       32 JUMPIFNOT                        R2 ; [+14]
       33 GETIMPORT                        R2 K9 [coroutine.wrap]
       35 NEWCLOSURE                       R3 P0
       36 CAPTURE                          UPVAL U2
       37 CAPTURE                          VAL R0
       38 CAPTURE                          VAL R1
       39 CAPTURE                          UPVAL U4
       40 CAPTURE                          UPVAL U7
       41 CAPTURE                          UPVAL U8
       42 CAPTURE                          UPVAL U9
       43 CAPTURE                          UPVAL U10
       44 CALL                             R2 1 1
       45 CALL                             R2 0 0
       46 RETURN                           R0 0
       47 GETUPVAL                         R2 11
       48 GETTABLEKS                       R3 R0 K4 ["Id"]
       50 GETTABLEKS                       R4 R0 K10 ["Name"]
       52 MOVE                             R5 R1
       53 CALL                             R2 3 0
       54 RETURN                           R0 0
       55 GETTABLEKS                       R1 R0 K1 ["Type"]
       57 GETUPVAL                         R2 3
       58 GETTABLEKS                       R2 R2 K11 ["GroupSubjectKey"]
       60 JUMPIFNOTEQ                      R1 R2 ; [+7]
       62 GETUPVAL                         R1 12
       63 GETTABLEKS                       R2 R0 K4 ["Id"]
       65 GETUPVAL                         R3 6
       66 CALL                             R1 2 0
       67 RETURN                           R0 0
       68 LOADB                            R2 0
       69 FASTCALL1                        ASSERT R2 ; [+2]
       70 GETIMPORT                        R1 K13 [assert]
       72 CALL                             R1 1 0
       73 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["LayoutOrder"]
        4 GETTABLEKS                       R3 R1 K2 ["Writable"]
        6 GETTABLEKS                       R4 R1 K3 ["UserCollaborators"]
        8 GETTABLEKS                       R5 R1 K4 ["AddUserCollaborator"]
       10 GETTABLEKS                       R6 R1 K5 ["AddGroupCollaborator"]
       12 GETTABLEKS                       R7 R1 K6 ["SearchCollaborators"]
       14 GETUPVAL                         R9 0
       15 JUMPIFNOT                        R9 ; [+3]
       16 GETTABLEKS                       R8 R1 K7 ["AddSearchItemLog"]
       18 JUMP                             ; [+1]
       19 LOADNIL                          R8
       20 GETTABLEKS                       R9 R1 K8 ["IsGroupGame"]
       22 GETTABLEKS                       R10 R1 K9 ["Is17PlusGame"]
       24 GETTABLEKS                       R11 R1 K10 ["Stylizer"]
       26 GETTABLEKS                       R12 R1 K11 ["Localization"]
       28 NAMECALL                         R13 R0 K12 ["getResults"]
       30 CALL                             R13 1 1
       31 NAMECALL                         R14 R0 K13 ["isLoading"]
       33 CALL                             R14 1 1
       34 LENGTH                           R15 R4
       35 GETIMPORT                        R16 K15 [game]
       37 LOADK                            R18 K16 ["TeamCreateMaxCollaborators"]
       38 NAMECALL                         R16 R16 K17 ["GetFastInt"]
       40 CALL                             R16 2 1
       41 JUMPIFLE                         R16 R15 ; [+2]
       43 LOADB                            R17 0 +1
       44 LOADB                            R17 1
       45 LOADK                            R20 K18 ["SearchBar"]
       46 LOADK                            R21 K19 ["TooManyResultsText"]
       47 DUPTABLE                         R22 K21 [{"maxNumCollaborators"}]
       48 SETTABLEKS                       R16 R22 K20 ["maxNumCollaborators"]
       50 NAMECALL                         R18 R12 K22 ["getText"]
       52 CALL                             R18 4 1
       53 GETUPVAL                         R19 1
       54 JUMPIFNOT                        R19 ; [+2]
       55 GETTABLEKS                       R19 R1 K23 ["SearchDisabled"]
       57 GETUPVAL                         R21 2
       58 GETTABLEKS                       R21 R21 K24 ["fflagManageCollaboratorsOwnerCountryBlocked"]
       60 JUMPIFNOT                        R21 ; [+11]
       61 GETTABLEKS                       R21 R0 K25 ["state"]
       63 GETTABLEKS                       R21 R21 K26 ["countryBlockedError"]
       65 JUMPIFNOT                        R21 ; [+6]
       66 LOADK                            R22 K18 ["SearchBar"]
       67 LOADK                            R23 K27 ["CountryBlockedError"]
       68 NAMECALL                         R20 R12 K22 ["getText"]
       70 CALL                             R20 3 1
       71 JUMP                             ; [+1]
       72 LOADNIL                          R20
       73 JUMPIFNOT                        R9 ; [+6]
       74 LOADK                            R23 K18 ["SearchBar"]
       75 LOADK                            R24 K28 ["AgeWarningGroups"]
       76 NAMECALL                         R21 R12 K22 ["getText"]
       78 CALL                             R21 3 1
       79 JUMP                             ; [+13]
       80 GETUPVAL                         R22 3
       81 JUMPIFNOT                        R22 ; [+6]
       82 LOADK                            R23 K18 ["SearchBar"]
       83 LOADK                            R24 K29 ["AgeWarningConnectionUsers"]
       84 NAMECALL                         R21 R12 K22 ["getText"]
       86 CALL                             R21 3 1
       87 JUMP                             ; [+5]
       88 LOADK                            R23 K18 ["SearchBar"]
       89 LOADK                            R24 K30 ["AgeWarningUsers"]
       90 NAMECALL                         R21 R12 K22 ["getText"]
       92 CALL                             R21 3 1
       93 GETUPVAL                         R22 4
       94 GETTABLEKS                       R22 R22 K31 ["createElement"]
       96 GETUPVAL                         R23 5
       97 DUPTABLE                         R24 K34 [{["BackgroundTransparency"] = 1, ["LayoutOrder"]}]
       98 SETTABLEKS                       R2 R24 K1 ["LayoutOrder"]
      100 DUPTABLE                         R25 K38 [{"Padding", "AgeWarningFrame", "Searchbar"}]
      101 GETUPVAL                         R26 4
      102 GETTABLEKS                       R26 R26 K31 ["createElement"]
      104 LOADK                            R27 K39 ["UIPadding"]
      105 DUPTABLE                         R28 K43 [{"PaddingTop", "PaddingLeft", "PaddingRight"}]
      106 GETTABLEKS                       R29 R11 K44 ["searchWidget"]
      108 GETTABLEKS                       R29 R29 K45 ["paddingTop"]
      110 SETTABLEKS                       R29 R28 K40 ["PaddingTop"]
      112 GETTABLEKS                       R29 R11 K44 ["searchWidget"]
      114 GETTABLEKS                       R29 R29 K46 ["paddingHorizontal"]
      116 SETTABLEKS                       R29 R28 K41 ["PaddingLeft"]
      118 GETTABLEKS                       R29 R11 K44 ["searchWidget"]
      120 GETTABLEKS                       R29 R29 K46 ["paddingHorizontal"]
      122 SETTABLEKS                       R29 R28 K42 ["PaddingRight"]
      124 CALL                             R26 2 1
      125 SETTABLEKS                       R26 R25 K35 ["Padding"]
      127 MOVE                             R26 R10
      128 JUMPIFNOT                        R26 ; [+47]
      129 GETUPVAL                         R26 4
      130 GETTABLEKS                       R26 R26 K31 ["createElement"]
      132 LOADK                            R27 K47 ["Frame"]
      133 DUPTABLE                         R28 K51 [{["BackgroundTransparency"] = 1, ["LayoutOrder"] = 1, ["Size"], ["BorderSizePixel"] = 0}]
      134 GETIMPORT                        R29 K54 [UDim2.new]
      136 LOADN                            R30 1
      137 LOADN                            R31 0
      138 LOADN                            R32 0
      139 GETTABLEKS                       R33 R11 K44 ["searchWidget"]
      141 GETTABLEKS                       R33 R33 K55 ["ageWarning"]
      143 GETTABLEKS                       R33 R33 K56 ["Height"]
      145 CALL                             R29 4 1
      146 SETTABLEKS                       R29 R28 K48 ["Size"]
      148 DUPTABLE                         R29 K58 [{"AgeWarning"}]
      149 GETUPVAL                         R30 4
      150 GETTABLEKS                       R30 R30 K31 ["createElement"]
      152 LOADK                            R31 K59 ["TextLabel"]
      153 GETUPVAL                         R32 6
      154 GETTABLEKS                       R32 R32 K60 ["Dictionary"]
      156 GETTABLEKS                       R32 R32 K61 ["join"]
      158 GETTABLEKS                       R33 R11 K44 ["searchWidget"]
      160 GETTABLEKS                       R33 R33 K55 ["ageWarning"]
      162 GETTABLEKS                       R33 R33 K62 ["fontStyle"]
      164 DUPTABLE                         R34 K65 [{"Text", "TextXAlignment"}]
      165 SETTABLEKS                       R21 R34 K63 ["Text"]
      167 GETIMPORT                        R35 K68 [Enum.TextXAlignment.Left]
      169 SETTABLEKS                       R35 R34 K64 ["TextXAlignment"]
      171 CALL                             R32 2 -1
      172 CALL                             R30 -1 1
      173 SETTABLEKS                       R30 R29 K57 ["AgeWarning"]
      175 CALL                             R26 3 1
      176 SETTABLEKS                       R26 R25 K36 ["AgeWarningFrame"]
      178 GETUPVAL                         R26 4
      179 GETTABLEKS                       R26 R26 K31 ["createElement"]
      181 GETUPVAL                         R27 7
      182 DUPTABLE                         R28 K83 [{["LayoutOrder"] = 2, ["Enabled"], ["HeaderHeight"], ["ItemHeight"], ["ErrorText"], ["ErrorSubtitle"], ["DefaultText"], ["NoResultsText"], ["LoadingMore"], ["IsGroupGame"], ["onSearchRequested"], ["onTextChanged"], ["onTextBoxFocused"], ["OnItemClicked"], ["Results"], ["Is17PlusGame"]}]
      183 MOVE                             R29 R3
      184 JUMPIFNOT                        R29 ; [+3]
      185 NOT                              R29 R17
      186 JUMPIFNOT                        R29 ; [+1]
      187 NOT                              R29 R19
      188 SETTABLEKS                       R29 R28 K70 ["Enabled"]
      190 GETTABLEKS                       R29 R11 K84 ["searchBar"]
      192 GETTABLEKS                       R29 R29 K85 ["headerHeight"]
      194 SETTABLEKS                       R29 R28 K71 ["HeaderHeight"]
      196 GETTABLEKS                       R29 R11 K84 ["searchBar"]
      198 GETTABLEKS                       R29 R29 K86 ["itemHeight"]
      200 SETTABLEKS                       R29 R28 K72 ["ItemHeight"]
      202 JUMPIFNOT                        R17 ; [+2]
      203 MOVE                             R29 R18
      204 JUMPIF                           R29 ; [+1]
      205 LOADNIL                          R29
      206 SETTABLEKS                       R29 R28 K73 ["ErrorText"]
      208 ORK                              R29 R20 K87 []
      209 SETTABLEKS                       R29 R28 K74 ["ErrorSubtitle"]
      211 LOADK                            R31 K18 ["SearchBar"]
      212 JUMPIFNOT                        R9 ; [+2]
      213 LOADK                            R32 K88 ["AddUsers"]
      214 JUMP                             ; [+1]
      215 LOADK                            R32 K89 ["AddUsersGroups"]
      216 NAMECALL                         R29 R12 K22 ["getText"]
      218 CALL                             R29 3 1
      219 SETTABLEKS                       R29 R28 K75 ["DefaultText"]
      221 LOADK                            R31 K18 ["SearchBar"]
      222 LOADK                            R32 K76 ["NoResultsText"]
      223 NAMECALL                         R29 R12 K22 ["getText"]
      225 CALL                             R29 3 1
      226 SETTABLEKS                       R29 R28 K76 ["NoResultsText"]
      228 SETTABLEKS                       R14 R28 K77 ["LoadingMore"]
      230 SETTABLEKS                       R9 R28 K8 ["IsGroupGame"]
      232 NEWCLOSURE                       R29 P0
      233 CAPTURE                          VAL R7
      234 SETTABLEKS                       R29 R28 K78 ["onSearchRequested"]
      236 NEWCLOSURE                       R29 P1
      237 CAPTURE                          UPVAL U0
      238 CAPTURE                          VAL R0
      239 CAPTURE                          VAL R7
      240 SETTABLEKS                       R29 R28 K79 ["onTextChanged"]
      242 NEWCLOSURE                       R29 P2
      243 CAPTURE                          UPVAL U2
      244 CAPTURE                          VAL R0
      245 CAPTURE                          UPVAL U0
      246 SETTABLEKS                       R29 R28 K80 ["onTextBoxFocused"]
      248 GETUPVAL                         R30 0
      249 JUMPIFNOT                        R30 ; [+20]
      250 NEWCLOSURE                       R29 P3
      251 CAPTURE                          UPVAL U1
      252 CAPTURE                          VAL R19
      253 CAPTURE                          UPVAL U8
      254 CAPTURE                          VAL R0
      255 CAPTURE                          VAL R9
      256 CAPTURE                          UPVAL U9
      257 CAPTURE                          UPVAL U10
      258 CAPTURE                          VAL R1
      259 CAPTURE                          UPVAL U11
      260 CAPTURE                          UPVAL U12
      261 CAPTURE                          UPVAL U2
      262 CAPTURE                          UPVAL U13
      263 CAPTURE                          UPVAL U14
      264 CAPTURE                          VAL R8
      265 CAPTURE                          UPVAL U15
      266 CAPTURE                          VAL R5
      267 CAPTURE                          VAL R6
      268 CAPTURE                          UPVAL U16
      269 JUMP                             ; [+14]
      270 NEWCLOSURE                       R29 P4
      271 CAPTURE                          UPVAL U1
      272 CAPTURE                          VAL R19
      273 CAPTURE                          VAL R1
      274 CAPTURE                          UPVAL U8
      275 CAPTURE                          VAL R0
      276 CAPTURE                          UPVAL U11
      277 CAPTURE                          UPVAL U12
      278 CAPTURE                          UPVAL U2
      279 CAPTURE                          UPVAL U13
      280 CAPTURE                          UPVAL U14
      281 CAPTURE                          UPVAL U10
      282 CAPTURE                          VAL R5
      283 CAPTURE                          VAL R6
      284 SETTABLEKS                       R29 R28 K81 ["OnItemClicked"]
      286 GETUPVAL                         R30 1
      287 JUMPIFNOT                        R30 ; [+4]
      288 JUMPIFNOT                        R19 ; [+3]
      289 NEWTABLE                         R29 0 0
      291 JUMP                             ; [+1]
      292 MOVE                             R29 R13
      293 SETTABLEKS                       R29 R28 K82 ["Results"]
      295 SETTABLEKS                       R10 R28 K9 ["Is17PlusGame"]
      297 CALL                             R26 2 1
      298 SETTABLEKS                       R26 R25 K37 ["Searchbar"]
      300 CALL                             R22 3 -1
      301 RETURN                           R22 -1

PROTO_19:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 2
        3 GETUPVAL                         R4 1
        4 MOVE                             R5 R0
        5 CALL                             R4 1 2
        6 LOADNIL                          R6
        7 LOADNIL                          R7
        8 GETUPVAL                         R8 2
        9 JUMPIFNOT                        R8 ; [+19]
       10 GETUPVAL                         R8 3
       11 GETTABLEKS                       R8 R8 K0 ["List"]
       13 GETTABLEKS                       R8 R8 K1 ["join"]
       15 MOVE                             R9 R2
       16 MOVE                             R10 R3
       17 CALL                             R8 2 1
       18 MOVE                             R6 R8
       19 GETUPVAL                         R8 3
       20 GETTABLEKS                       R8 R8 K0 ["List"]
       22 GETTABLEKS                       R8 R8 K1 ["join"]
       24 MOVE                             R9 R4
       25 MOVE                             R10 R5
       26 CALL                             R8 2 1
       27 MOVE                             R7 R8
       28 JUMP                             ; [+18]
       29 GETUPVAL                         R8 3
       30 GETTABLEKS                       R8 R8 K2 ["Dictionary"]
       32 GETTABLEKS                       R8 R8 K1 ["join"]
       34 MOVE                             R9 R2
       35 MOVE                             R10 R3
       36 CALL                             R8 2 1
       37 MOVE                             R6 R8
       38 GETUPVAL                         R8 3
       39 GETTABLEKS                       R8 R8 K2 ["Dictionary"]
       41 GETTABLEKS                       R8 R8 K1 ["join"]
       43 MOVE                             R9 R4
       44 MOVE                             R10 R5
       45 CALL                             R8 2 1
       46 MOVE                             R7 R8
       47 DUPTABLE                         R8 K10 [{"IsGroupGame", "Is17PlusGame", "UserCollaborators", "GroupCollaborators", "SearchData", "ownerType", "ownerFriends"}]
       48 GETUPVAL                         R9 4
       49 MOVE                             R10 R0
       50 CALL                             R9 1 1
       51 SETTABLEKS                       R9 R8 K3 ["IsGroupGame"]
       53 GETUPVAL                         R9 5
       54 MOVE                             R10 R0
       55 CALL                             R9 1 1
       56 SETTABLEKS                       R9 R8 K4 ["Is17PlusGame"]
       58 SETTABLEKS                       R6 R8 K5 ["UserCollaborators"]
       60 SETTABLEKS                       R7 R8 K6 ["GroupCollaborators"]
       62 GETTABLEKS                       R9 R0 K11 ["CollaboratorSearch"]
       64 SETTABLEKS                       R9 R8 K7 ["SearchData"]
       66 GETTABLEKS                       R9 R0 K12 ["GameOwnerMetadata"]
       68 GETTABLEKS                       R9 R9 K13 ["creatorType"]
       70 SETTABLEKS                       R9 R8 K8 ["ownerType"]
       72 GETTABLEKS                       R9 R0 K12 ["GameOwnerMetadata"]
       74 GETTABLEKS                       R9 R9 K14 ["creatorFriends"]
       76 SETTABLEKS                       R9 R8 K9 ["ownerFriends"]
       78 RETURN                           R8 1

PROTO_20:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R1 -1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_21:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R1 -1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_22:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R1 -1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["LoadFriends"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R3 0
        1 NEWTABLE                         R4 0 1
        3 GETUPVAL                         R5 1
        4 SETLIST                          R4 R5 1 [1]
        6 CALL                             R3 1 -1
        7 NAMECALL                         R1 R0 K0 ["dispatch"]
        9 CALL                             R1 -1 0
       10 NAMECALL                         R2 R0 K1 ["getState"]
       12 CALL                             R2 1 1
       13 GETTABLEKS                       R2 R2 K2 ["CanCollaborateResponses"]
       15 GETUPVAL                         R3 1
       16 GETTABLE                         R1 R2 R3
       17 JUMPIFNOT                        R1 ; [+10]
       18 GETTABLEKS                       R2 R1 K3 ["error"]
       20 GETUPVAL                         R3 2
       21 GETTABLEKS                       R3 R3 K4 ["AgeVerificationCountryBlocked"]
       23 JUMPIFNOTEQ                      R2 R3 ; [+4]
       25 GETUPVAL                         R2 3
       26 CALL                             R2 0 0
       27 RETURN                           R0 0
       28 GETUPVAL                         R4 4
       29 GETUPVAL                         R5 1
       30 GETUPVAL                         R6 5
       31 GETUPVAL                         R7 6
       32 CALL                             R4 3 -1
       33 NAMECALL                         R2 R0 K0 ["dispatch"]
       35 CALL                             R2 -1 0
       36 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R4 0
        1 NEWCLOSURE                       R5 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R3
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          VAL R1
        8 CAPTURE                          VAL R2
        9 CALL                             R4 1 0
       10 RETURN                           R0 0

PROTO_26:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R1 -1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_27:
        0 DUPTABLE                         R1 K6 [{"AddUserCollaborator", "AddGroupCollaborator", "SearchCollaborators", "LoadFriends", "CheckAndAddUserCollaborator", "AddSearchItemLog"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["AddUserCollaborator"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["AddGroupCollaborator"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["SearchCollaborators"]
       16 NEWCLOSURE                       R2 P3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U3
       19 SETTABLEKS                       R2 R1 K3 ["LoadFriends"]
       21 GETUPVAL                         R3 4
       22 GETTABLEKS                       R3 R3 K7 ["fflagManageCollaboratorsOwnerCountryBlocked"]
       24 JUMPIFNOT                        R3 ; [+6]
       25 NEWCLOSURE                       R2 P4
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U5
       28 CAPTURE                          UPVAL U6
       29 CAPTURE                          UPVAL U0
       30 JUMP                             ; [+1]
       31 LOADNIL                          R2
       32 SETTABLEKS                       R2 R1 K4 ["CheckAndAddUserCollaborator"]
       34 GETUPVAL                         R3 7
       35 JUMPIFNOT                        R3 ; [+4]
       36 NEWCLOSURE                       R2 P5
       37 CAPTURE                          VAL R0
       38 CAPTURE                          UPVAL U8
       39 JUMP                             ; [+1]
       40 LOADNIL                          R2
       41 SETTABLEKS                       R2 R1 K5 ["AddSearchItemLog"]
       43 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["Cryo"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K5 ["Packages"]
       34 GETTABLEKS                       R5 R5 K9 ["Framework"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R4 K10 ["Style"]
       39 GETTABLEKS                       R5 R5 K11 ["Stylizer"]
       41 GETTABLEKS                       R6 R4 K12 ["ContextServices"]
       43 GETTABLEKS                       R7 R6 K13 ["withContext"]
       45 GETTABLEKS                       R8 R6 K14 ["Localization"]
       47 GETIMPORT                        R9 K4 [require]
       49 GETTABLEKS                       R10 R0 K15 ["Bin"]
       51 GETTABLEKS                       R10 R10 K16 ["defineLuaFlags"]
       53 CALL                             R9 1 1
       54 GETIMPORT                        R10 K4 [require]
       56 GETTABLEKS                       R11 R0 K17 ["Src"]
       58 GETTABLEKS                       R11 R11 K18 ["Enums"]
       60 GETTABLEKS                       R11 R11 K19 ["CanCollaborateError"]
       62 CALL                             R10 1 1
       63 GETIMPORT                        R11 K4 [require]
       65 GETTABLEKS                       R12 R0 K17 ["Src"]
       67 GETTABLEKS                       R12 R12 K20 ["Thunks"]
       69 GETTABLEKS                       R12 R12 K21 ["FetchCanCollaborateResponses"]
       71 CALL                             R11 1 1
       72 GETTABLEKS                       R12 R9 K22 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
       74 JUMPIF                           R12 ; [+2]
       75 GETTABLEKS                       R12 R9 K23 ["fflagManageCollaboratorsOwnerCountryBlocked"]
       77 GETIMPORT                        R13 K4 [require]
       79 GETTABLEKS                       R14 R0 K17 ["Src"]
       81 GETTABLEKS                       R14 R14 K24 ["Util"]
       83 GETTABLEKS                       R14 R14 K25 ["PermissionsConstants"]
       85 CALL                             R13 1 1
       86 GETIMPORT                        R14 K4 [require]
       88 GETTABLEKS                       R15 R0 K17 ["Src"]
       90 GETTABLEKS                       R15 R15 K26 ["Keys"]
       92 GETTABLEKS                       R15 R15 K27 ["loadingInProgress"]
       94 CALL                             R14 1 1
       95 GETTABLEKS                       R15 R13 K28 ["PlayKey"]
       97 GETTABLEKS                       R16 R13 K29 ["EditKey"]
       99 GETIMPORT                        R17 K4 [require]
      101 GETTABLEKS                       R18 R0 K17 ["Src"]
      103 GETTABLEKS                       R18 R18 K24 ["Util"]
      105 GETTABLEKS                       R18 R18 K30 ["Constants"]
      107 CALL                             R17 1 1
      108 GETTABLEKS                       R18 R17 K31 ["COLLABORATORTYPE_USER"]
      110 GETTABLEKS                       R19 R17 K32 ["COLLABORATORTYPE_GROUP"]
      112 GETIMPORT                        R20 K4 [require]
      114 GETTABLEKS                       R21 R0 K17 ["Src"]
      116 GETTABLEKS                       R21 R21 K33 ["Components"]
      118 GETTABLEKS                       R21 R21 K34 ["Thumbnails"]
      120 GETTABLEKS                       R21 R21 K35 ["UserHeadshotThumbnail"]
      122 CALL                             R20 1 1
      123 GETIMPORT                        R21 K4 [require]
      125 GETTABLEKS                       R22 R0 K17 ["Src"]
      127 GETTABLEKS                       R22 R22 K33 ["Components"]
      129 GETTABLEKS                       R22 R22 K34 ["Thumbnails"]
      131 GETTABLEKS                       R22 R22 K36 ["GroupIconThumbnail"]
      133 CALL                             R21 1 1
      134 GETIMPORT                        R22 K4 [require]
      136 GETTABLEKS                       R23 R0 K17 ["Src"]
      138 GETTABLEKS                       R23 R23 K33 ["Components"]
      140 GETTABLEKS                       R23 R23 K37 ["SearchBar"]
      142 CALL                             R22 1 1
      143 GETIMPORT                        R23 K4 [require]
      145 GETTABLEKS                       R24 R0 K17 ["Src"]
      147 GETTABLEKS                       R24 R24 K24 ["Util"]
      149 GETTABLEKS                       R24 R24 K38 ["CreateFitToContent"]
      151 CALL                             R23 1 1
      152 GETIMPORT                        R24 K4 [require]
      154 GETTABLEKS                       R25 R0 K17 ["Src"]
      156 GETTABLEKS                       R25 R25 K39 ["Selectors"]
      158 GETTABLEKS                       R25 R25 K40 ["GetUserCollaborators"]
      160 CALL                             R24 1 1
      161 GETIMPORT                        R25 K4 [require]
      163 GETTABLEKS                       R26 R0 K17 ["Src"]
      165 GETTABLEKS                       R26 R26 K39 ["Selectors"]
      167 GETTABLEKS                       R26 R26 K41 ["GetGroupCollaborators"]
      169 CALL                             R25 1 1
      170 GETIMPORT                        R26 K4 [require]
      172 GETTABLEKS                       R27 R0 K17 ["Src"]
      174 GETTABLEKS                       R27 R27 K20 ["Thunks"]
      176 GETTABLEKS                       R27 R27 K42 ["AddUserCollaborator"]
      178 CALL                             R26 1 1
      179 GETIMPORT                        R27 K4 [require]
      181 GETTABLEKS                       R28 R0 K17 ["Src"]
      183 GETTABLEKS                       R28 R28 K20 ["Thunks"]
      185 GETTABLEKS                       R28 R28 K43 ["AddGroupCollaborator"]
      187 CALL                             R27 1 1
      188 GETIMPORT                        R28 K4 [require]
      190 GETTABLEKS                       R29 R0 K17 ["Src"]
      192 GETTABLEKS                       R29 R29 K20 ["Thunks"]
      194 GETTABLEKS                       R29 R29 K44 ["SearchCollaborators"]
      196 CALL                             R28 1 1
      197 GETIMPORT                        R29 K4 [require]
      199 GETTABLEKS                       R30 R0 K17 ["Src"]
      201 GETTABLEKS                       R30 R30 K20 ["Thunks"]
      203 GETTABLEKS                       R30 R30 K45 ["PermissionsLoader"]
      205 CALL                             R29 1 1
      206 LOADNIL                          R30
      207 GETIMPORT                        R31 K4 [require]
      209 GETTABLEKS                       R32 R0 K17 ["Src"]
      211 GETTABLEKS                       R32 R32 K39 ["Selectors"]
      213 GETTABLEKS                       R32 R32 K46 ["IsGroupGame"]
      215 CALL                             R31 1 1
      216 GETIMPORT                        R32 K4 [require]
      218 GETTABLEKS                       R33 R0 K17 ["Src"]
      220 GETTABLEKS                       R33 R33 K39 ["Selectors"]
      222 GETTABLEKS                       R33 R33 K47 ["IsGame17Plus"]
      224 CALL                             R32 1 1
      225 GETIMPORT                        R33 K49 [game]
      227 LOADK                            R35 K50 ["StudioFriendToConnection"]
      228 NAMECALL                         R33 R33 K51 ["GetFastFlag"]
      230 CALL                             R33 2 1
      231 MOVE                             R34 R23
      232 LOADK                            R35 K52 ["Frame"]
      233 LOADK                            R36 K53 ["UIListLayout"]
      234 DUPTABLE                         R37 K57 [{"SortOrder", "Padding", "HorizontalAlignment"}]
      235 GETIMPORT                        R38 K60 [Enum.SortOrder.LayoutOrder]
      237 SETTABLEKS                       R38 R37 K54 ["SortOrder"]
      239 GETIMPORT                        R38 K63 [UDim.new]
      241 LOADN                            R39 0
      242 LOADN                            R40 32
      243 CALL                             R38 2 1
      244 SETTABLEKS                       R38 R37 K55 ["Padding"]
      246 GETIMPORT                        R38 K65 [Enum.HorizontalAlignment.Center]
      248 SETTABLEKS                       R38 R37 K56 ["HorizontalAlignment"]
      250 CALL                             R34 3 1
      251 GETIMPORT                        R35 K49 [game]
      253 LOADK                            R37 K66 ["StudioService"]
      254 NAMECALL                         R35 R35 K67 ["GetService"]
      256 CALL                             R35 2 1
      257 GETIMPORT                        R36 K49 [game]
      259 LOADK                            R38 K68 ["Collab8766_LogCollabSearchItemClickedEventV4"]
      260 NAMECALL                         R36 R36 K51 ["GetFastFlag"]
      262 CALL                             R36 2 1
      263 JUMPIFNOT                        R36 ; [+10]
      264 GETIMPORT                        R37 K4 [require]
      266 GETTABLEKS                       R38 R0 K17 ["Src"]
      268 GETTABLEKS                       R38 R38 K20 ["Thunks"]
      270 GETTABLEKS                       R38 R38 K69 ["AddSearchItemLog"]
      272 CALL                             R37 1 1
      273 MOVE                             R30 R37
      274 GETIMPORT                        R37 K4 [require]
      276 GETTABLEKS                       R38 R0 K5 ["Packages"]
      278 GETTABLEKS                       R38 R38 K70 ["TelemetryProtocol"]
      280 CALL                             R37 1 1
      281 GETIMPORT                        R38 K4 [require]
      283 GETTABLEKS                       R39 R0 K17 ["Src"]
      285 GETTABLEKS                       R39 R39 K24 ["Util"]
      287 GETTABLEKS                       R39 R39 K71 ["Telemetry"]
      289 GETTABLEKS                       R39 R39 K72 ["SafetyUpsellBannerShownEvent"]
      291 CALL                             R38 1 1
      292 GETTABLEKS                       R39 R37 K62 ["new"]
      294 CALL                             R39 0 1
      295 GETIMPORT                        R40 K49 [game]
      297 LOADK                            R42 K73 ["Collab8818_ShowSearchItemDisplayName"]
      298 NAMECALL                         R40 R40 K51 ["GetFastFlag"]
      300 CALL                             R40 2 1
      301 OR                               R41 R36 R40
      302 GETIMPORT                        R42 K4 [require]
      304 GETTABLEKS                       R43 R0 K17 ["Src"]
      306 GETTABLEKS                       R43 R43 K24 ["Util"]
      308 GETTABLEKS                       R43 R43 K74 ["IsLikelyCollaboratorPrefetchEnabled"]
      310 CALL                             R42 1 1
      311 MOVE                             R43 R42
      312 CALL                             R43 0 1
      313 GETTABLEKS                       R44 R1 K75 ["PureComponent"]
      315 LOADK                            R46 K76 ["CollaboratorSearchWidget"]
      316 NAMECALL                         R44 R44 K77 ["extend"]
      318 CALL                             R44 2 1
      319 DUPCLOSURE                       R45 K78 [PROTO_0]
      320 CAPTURE                          VAL R36
      321 CAPTURE                          VAL R1
      322 CAPTURE                          VAL R9
      323 SETTABLEKS                       R45 R44 K79 ["init"]
      325 DUPCLOSURE                       R45 K80 [PROTO_1]
      326 CAPTURE                          VAL R14
      327 SETTABLEKS                       R45 R44 K81 ["isLoading"]
      329 DUPCLOSURE                       R45 K82 [PROTO_2]
      330 SETTABLEKS                       R45 R44 K83 ["isFriend"]
      332 DUPCLOSURE                       R45 K84 [PROTO_7]
      333 CAPTURE                          VAL R43
      334 CAPTURE                          VAL R13
      335 CAPTURE                          VAL R14
      336 CAPTURE                          VAL R3
      337 SETTABLEKS                       R45 R44 K85 ["getMatches"]
      339 DUPCLOSURE                       R45 K86 [PROTO_8]
      340 CAPTURE                          VAL R43
      341 CAPTURE                          VAL R13
      342 CAPTURE                          VAL R1
      343 CAPTURE                          VAL R20
      344 CAPTURE                          VAL R41
      345 CAPTURE                          VAL R18
      346 CAPTURE                          VAL R21
      347 CAPTURE                          VAL R19
      348 SETTABLEKS                       R45 R44 K87 ["getResults"]
      350 DUPCLOSURE                       R45 K88 [PROTO_18]
      351 CAPTURE                          VAL R36
      352 CAPTURE                          VAL R12
      353 CAPTURE                          VAL R9
      354 CAPTURE                          VAL R33
      355 CAPTURE                          VAL R1
      356 CAPTURE                          VAL R34
      357 CAPTURE                          VAL R3
      358 CAPTURE                          VAL R22
      359 CAPTURE                          VAL R13
      360 CAPTURE                          VAL R43
      361 CAPTURE                          VAL R35
      362 CAPTURE                          VAL R16
      363 CAPTURE                          VAL R15
      364 CAPTURE                          VAL R39
      365 CAPTURE                          VAL R38
      366 CAPTURE                          VAL R18
      367 CAPTURE                          VAL R19
      368 SETTABLEKS                       R45 R44 K89 ["render"]
      370 MOVE                             R45 R7
      371 DUPTABLE                         R46 K91 [{"Stylizer", "Localization", "Mouse"}]
      372 SETTABLEKS                       R5 R46 K11 ["Stylizer"]
      374 SETTABLEKS                       R8 R46 K14 ["Localization"]
      376 GETTABLEKS                       R47 R6 K90 ["Mouse"]
      378 SETTABLEKS                       R47 R46 K90 ["Mouse"]
      380 CALL                             R45 1 1
      381 MOVE                             R46 R44
      382 CALL                             R45 1 1
      383 MOVE                             R44 R45
      384 GETTABLEKS                       R45 R2 K92 ["connect"]
      386 DUPCLOSURE                       R46 K93 [PROTO_19]
      387 CAPTURE                          VAL R24
      388 CAPTURE                          VAL R25
      389 CAPTURE                          VAL R43
      390 CAPTURE                          VAL R3
      391 CAPTURE                          VAL R31
      392 CAPTURE                          VAL R32
      393 NEWCLOSURE                       R47 P7
      394 CAPTURE                          VAL R26
      395 CAPTURE                          VAL R27
      396 CAPTURE                          VAL R28
      397 CAPTURE                          VAL R29
      398 CAPTURE                          VAL R9
      399 CAPTURE                          VAL R11
      400 CAPTURE                          VAL R10
      401 CAPTURE                          VAL R36
      402 CAPTURE                          REF R30
      403 CALL                             R45 2 1
      404 MOVE                             R46 R44
      405 CALL                             R45 1 1
      406 MOVE                             R44 R45
      407 CLOSEUPVALS                      R30
      408 RETURN                           R44 1
