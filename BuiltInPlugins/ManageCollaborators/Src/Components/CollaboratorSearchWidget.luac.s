PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createBinding"]
        3 LOADK                            R2 K1 [""]
        4 CALL                             R1 1 2
        5 SETTABLEKS                       R1 R0 K2 ["searchbarText"]
        7 SETTABLEKS                       R2 R0 K3 ["updateSearchbarText"]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K0 ["createBinding"]
       12 LOADNIL                          R2
       13 CALL                             R1 1 2
       14 SETTABLEKS                       R1 R0 K4 ["searchbarFocusedTimestampMilliseconds"]
       16 SETTABLEKS                       R2 R0 K5 ["updateSearchbarFocusedTimestampMilliseconds"]
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K0 ["createBinding"]
       21 LOADNIL                          R2
       22 CALL                             R1 1 2
       23 SETTABLEKS                       R1 R0 K6 ["searchbarTextFirstChangedTimestampMilliseconds"]
       25 SETTABLEKS                       R2 R0 K7 ["updateSearchbarTextFirstChangedTimestampMilliseconds"]
       27 GETUPVAL                         R1 0
       28 GETTABLEKS                       R1 R1 K0 ["createBinding"]
       30 LOADNIL                          R2
       31 CALL                             R1 1 2
       32 SETTABLEKS                       R1 R0 K8 ["numCharsInSearchbarOnFocus"]
       34 SETTABLEKS                       R2 R0 K9 ["updateNumCharsInSearchbarOnFocus"]
       36 RETURN                           R0 0

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
      211 JUMPIFNOTLT                      R12 R11 ; [+80]
      213 JUMPIF                           R3 ; [+78]
      214 NEWTABLE                         R11 1 0
      216 GETIMPORT                        R12 K11 [pairs]
      218 GETTABLEKS                       R13 R5 K9 ["Groups"]
      220 CALL                             R12 1 3
      221 FORGPREP_NEXT                    R12
      222 LENGTH                           R18 R11
      223 ADDK                             R17 R18 K12 [1]
      224 JUMPIFLT                         R8 R17 ; [+62]
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
      256 DUPTABLE                         R20 K45 [{"Type", "Id", "Name", "IsEligible"}]
      257 GETUPVAL                         R21 1
      258 GETTABLEKS                       R21 R21 K46 ["GroupSubjectKey"]
      260 SETTABLEKS                       R21 R20 K26 ["Type"]
      262 GETUPVAL                         R22 1
      263 GETTABLEKS                       R22 R22 K43 ["GroupIdKey"]
      265 GETTABLE                         R21 R16 R22
      266 SETTABLEKS                       R21 R20 K19 ["Id"]
      268 GETUPVAL                         R22 1
      269 GETTABLEKS                       R22 R22 K44 ["GroupNameKey"]
      271 GETTABLE                         R21 R16 R22
      272 SETTABLEKS                       R21 R20 K15 ["Name"]
      274 LOADB                            R21 1
      275 SETTABLEKS                       R21 R20 K28 ["IsEligible"]
      277 SETTABLEKS                       R20 R19 K16 ["Key"]
      279 FASTCALL2                        TABLE_INSERT R11 R19 ; [+4]
      281 MOVE                             R18 R11
      282 GETIMPORT                        R17 K41 [table.insert]
      284 CALL                             R17 2 0
      285 FORGLOOP                         R12 2 ; [-64]
      287 LOADN                            R12 0
      288 SETTABLEKS                       R12 R11 K42 ["LayoutOrder"]
      290 GETUPVAL                         R12 7
      291 SETTABLE                         R11 R6 R12
      292 RETURN                           R6 1

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
        1 GETTABLEKS                       R0 R0 K0 ["updateSearchbarFocusedTimestampMilliseconds"]
        3 GETIMPORT                        R1 K3 [DateTime.now]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R1 R1 K4 ["UnixTimestampMillis"]
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 0
       10 GETTABLEKS                       R0 R0 K5 ["updateNumCharsInSearchbarOnFocus"]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K6 ["searchbarText"]
       15 NAMECALL                         R2 R2 K7 ["getValue"]
       17 CALL                             R2 1 1
       18 LENGTH                           R1 R2
       19 CALL                             R0 1 0
       20 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R2 R0 K0 ["Type"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["UserSubjectKey"]
        5 JUMPIFEQ                         R2 R3 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R4 R0 K2 ["Id"]
       12 NAMECALL                         R2 R2 K3 ["isFriend"]
       14 CALL                             R2 2 1
       15 GETTABLEKS                       R4 R0 K0 ["Type"]
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K4 ["GroupSubjectKey"]
       20 JUMPIFEQ                         R4 R5 ; [+2]
       22 LOADB                            R3 0 +1
       23 LOADB                            R3 1
       24 DUPTABLE                         R4 K17 [{"numCharsInSearchbarOnItemClick", "numCharsInSearchbarOnFocus", "searchbarFocusedTimestampMilliseconds", "searchbarTextFirstChangedTimestampMilliseconds", "itemClickedTimestampMilliseconds", "numCharsInItemDisplayName", "numCharsInItemName", "isUser", "isFriend", "isGroup", "isGroupOwned", "isPrefetched", "userId"}]
       25 GETUPVAL                         R6 1
       26 GETTABLEKS                       R6 R6 K18 ["searchbarText"]
       28 NAMECALL                         R6 R6 K19 ["getValue"]
       30 CALL                             R6 1 1
       31 LENGTH                           R5 R6
       32 SETTABLEKS                       R5 R4 K5 ["numCharsInSearchbarOnItemClick"]
       34 GETUPVAL                         R5 1
       35 GETTABLEKS                       R5 R5 K6 ["numCharsInSearchbarOnFocus"]
       37 NAMECALL                         R5 R5 K19 ["getValue"]
       39 CALL                             R5 1 1
       40 SETTABLEKS                       R5 R4 K6 ["numCharsInSearchbarOnFocus"]
       42 GETUPVAL                         R5 1
       43 GETTABLEKS                       R5 R5 K7 ["searchbarFocusedTimestampMilliseconds"]
       45 NAMECALL                         R5 R5 K19 ["getValue"]
       47 CALL                             R5 1 1
       48 SETTABLEKS                       R5 R4 K7 ["searchbarFocusedTimestampMilliseconds"]
       50 GETUPVAL                         R5 1
       51 GETTABLEKS                       R5 R5 K8 ["searchbarTextFirstChangedTimestampMilliseconds"]
       53 NAMECALL                         R5 R5 K19 ["getValue"]
       55 CALL                             R5 1 1
       56 SETTABLEKS                       R5 R4 K8 ["searchbarTextFirstChangedTimestampMilliseconds"]
       58 GETIMPORT                        R5 K22 [DateTime.now]
       60 CALL                             R5 0 1
       61 GETTABLEKS                       R5 R5 K23 ["UnixTimestampMillis"]
       63 SETTABLEKS                       R5 R4 K9 ["itemClickedTimestampMilliseconds"]
       65 GETTABLEKS                       R6 R0 K24 ["DisplayName"]
       67 JUMPIFNOT                        R6 ; [+4]
       68 GETTABLEKS                       R6 R0 K24 ["DisplayName"]
       70 LENGTH                           R5 R6
       71 JUMP                             ; [+1]
       72 LOADNIL                          R5
       73 SETTABLEKS                       R5 R4 K10 ["numCharsInItemDisplayName"]
       75 GETTABLEKS                       R6 R0 K25 ["Name"]
       77 LENGTH                           R5 R6
       78 SETTABLEKS                       R5 R4 K11 ["numCharsInItemName"]
       80 SETTABLEKS                       R1 R4 K12 ["isUser"]
       82 SETTABLEKS                       R2 R4 K3 ["isFriend"]
       84 SETTABLEKS                       R3 R4 K13 ["isGroup"]
       86 GETUPVAL                         R5 2
       87 SETTABLEKS                       R5 R4 K14 ["isGroupOwned"]
       89 GETUPVAL                         R6 3
       90 JUMPIFNOT                        R6 ; [+5]
       91 GETTABLEKS                       R6 R0 K26 ["IsPrefetched"]
       93 JUMPIFNOT                        R6 ; [+2]
       94 LOADB                            R5 1
       95 JUMP                             ; [+1]
       96 LOADB                            R5 0
       97 SETTABLEKS                       R5 R4 K15 ["isPrefetched"]
       99 GETUPVAL                         R5 4
      100 NAMECALL                         R5 R5 K27 ["GetUserId"]
      102 CALL                             R5 1 1
      103 SETTABLEKS                       R5 R4 K16 ["userId"]
      105 GETUPVAL                         R5 5
      106 GETTABLEKS                       R5 R5 K28 ["LoadFriends"]
      108 CALL                             R5 0 0
      109 JUMPIFNOT                        R1 ; [+26]
      110 GETTABLEKS                       R5 R0 K29 ["IsEligible"]
      112 JUMPIFNOT                        R5 ; [+23]
      113 JUMPIFNOT                        R2 ; [+8]
      114 GETUPVAL                         R5 6
      115 GETTABLEKS                       R6 R0 K2 ["Id"]
      117 GETTABLEKS                       R7 R0 K25 ["Name"]
      119 GETUPVAL                         R8 7
      120 CALL                             R5 3 0
      121 JUMP                             ; [+7]
      122 GETUPVAL                         R5 6
      123 GETTABLEKS                       R6 R0 K2 ["Id"]
      125 GETTABLEKS                       R7 R0 K25 ["Name"]
      127 GETUPVAL                         R8 8
      128 CALL                             R5 3 0
      129 GETUPVAL                         R5 9
      130 GETUPVAL                         R6 10
      131 GETTABLEKS                       R7 R0 K2 ["Id"]
      133 MOVE                             R8 R4
      134 CALL                             R5 3 0
      135 RETURN                           R0 0
      136 JUMPIFNOT                        R3 ; [+12]
      137 GETUPVAL                         R5 11
      138 GETTABLEKS                       R6 R0 K2 ["Id"]
      140 GETUPVAL                         R7 8
      141 CALL                             R5 2 0
      142 GETUPVAL                         R5 9
      143 GETUPVAL                         R6 12
      144 GETTABLEKS                       R7 R0 K2 ["Id"]
      146 MOVE                             R8 R4
      147 CALL                             R5 3 0
      148 RETURN                           R0 0
      149 LOADB                            R6 0
      150 FASTCALL1                        ASSERT R6 ; [+2]
      151 GETIMPORT                        R5 K31 [assert]
      153 CALL                             R5 1 0
      154 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["LoadFriends"]
        3 CALL                             R1 0 0
        4 GETTABLEKS                       R1 R0 K1 ["Type"]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["UserSubjectKey"]
        9 JUMPIFNOTEQ                      R1 R2 ; [+27]
       11 GETTABLEKS                       R1 R0 K3 ["IsEligible"]
       13 JUMPIFNOT                        R1 ; [+23]
       14 GETUPVAL                         R1 2
       15 GETTABLEKS                       R3 R0 K4 ["Id"]
       17 NAMECALL                         R1 R1 K5 ["isFriend"]
       19 CALL                             R1 2 1
       20 JUMPIFNOT                        R1 ; [+8]
       21 GETUPVAL                         R1 3
       22 GETTABLEKS                       R2 R0 K4 ["Id"]
       24 GETTABLEKS                       R3 R0 K6 ["Name"]
       26 GETUPVAL                         R4 4
       27 CALL                             R1 3 0
       28 RETURN                           R0 0
       29 GETUPVAL                         R1 3
       30 GETTABLEKS                       R2 R0 K4 ["Id"]
       32 GETTABLEKS                       R3 R0 K6 ["Name"]
       34 GETUPVAL                         R4 5
       35 CALL                             R1 3 0
       36 RETURN                           R0 0
       37 GETTABLEKS                       R1 R0 K1 ["Type"]
       39 GETUPVAL                         R2 1
       40 GETTABLEKS                       R2 R2 K7 ["GroupSubjectKey"]
       42 JUMPIFNOTEQ                      R1 R2 ; [+7]
       44 GETUPVAL                         R1 6
       45 GETTABLEKS                       R2 R0 K4 ["Id"]
       47 GETUPVAL                         R3 5
       48 CALL                             R1 2 0
       49 RETURN                           R0 0
       50 LOADB                            R2 0
       51 FASTCALL1                        ASSERT R2 ; [+2]
       52 GETIMPORT                        R1 K9 [assert]
       54 CALL                             R1 1 0
       55 RETURN                           R0 0

PROTO_14:
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
       53 JUMPIFNOT                        R9 ; [+6]
       54 LOADK                            R21 K18 ["SearchBar"]
       55 LOADK                            R22 K23 ["AgeWarningGroups"]
       56 NAMECALL                         R19 R12 K22 ["getText"]
       58 CALL                             R19 3 1
       59 JUMP                             ; [+13]
       60 GETUPVAL                         R20 1
       61 JUMPIFNOT                        R20 ; [+6]
       62 LOADK                            R21 K18 ["SearchBar"]
       63 LOADK                            R22 K24 ["AgeWarningConnectionUsers"]
       64 NAMECALL                         R19 R12 K22 ["getText"]
       66 CALL                             R19 3 1
       67 JUMP                             ; [+5]
       68 LOADK                            R21 K18 ["SearchBar"]
       69 LOADK                            R22 K25 ["AgeWarningUsers"]
       70 NAMECALL                         R19 R12 K22 ["getText"]
       72 CALL                             R19 3 1
       73 GETUPVAL                         R20 2
       74 GETTABLEKS                       R20 R20 K26 ["createElement"]
       76 GETUPVAL                         R21 3
       77 DUPTABLE                         R22 K28 [{"BackgroundTransparency", "LayoutOrder"}]
       78 LOADN                            R23 1
       79 SETTABLEKS                       R23 R22 K27 ["BackgroundTransparency"]
       81 SETTABLEKS                       R2 R22 K1 ["LayoutOrder"]
       83 DUPTABLE                         R23 K32 [{"Padding", "AgeWarningFrame", "Searchbar"}]
       84 GETUPVAL                         R24 2
       85 GETTABLEKS                       R24 R24 K26 ["createElement"]
       87 LOADK                            R25 K33 ["UIPadding"]
       88 DUPTABLE                         R26 K37 [{"PaddingTop", "PaddingLeft", "PaddingRight"}]
       89 GETTABLEKS                       R27 R11 K38 ["searchWidget"]
       91 GETTABLEKS                       R27 R27 K39 ["paddingTop"]
       93 SETTABLEKS                       R27 R26 K34 ["PaddingTop"]
       95 GETTABLEKS                       R27 R11 K38 ["searchWidget"]
       97 GETTABLEKS                       R27 R27 K40 ["paddingHorizontal"]
       99 SETTABLEKS                       R27 R26 K35 ["PaddingLeft"]
      101 GETTABLEKS                       R27 R11 K38 ["searchWidget"]
      103 GETTABLEKS                       R27 R27 K40 ["paddingHorizontal"]
      105 SETTABLEKS                       R27 R26 K36 ["PaddingRight"]
      107 CALL                             R24 2 1
      108 SETTABLEKS                       R24 R23 K29 ["Padding"]
      110 MOVE                             R24 R10
      111 JUMPIFNOT                        R24 ; [+56]
      112 GETUPVAL                         R24 2
      113 GETTABLEKS                       R24 R24 K26 ["createElement"]
      115 LOADK                            R25 K41 ["Frame"]
      116 DUPTABLE                         R26 K44 [{"BackgroundTransparency", "LayoutOrder", "Size", "BorderSizePixel"}]
      117 LOADN                            R27 1
      118 SETTABLEKS                       R27 R26 K27 ["BackgroundTransparency"]
      120 LOADN                            R27 1
      121 SETTABLEKS                       R27 R26 K1 ["LayoutOrder"]
      123 GETIMPORT                        R27 K47 [UDim2.new]
      125 LOADN                            R28 1
      126 LOADN                            R29 0
      127 LOADN                            R30 0
      128 GETTABLEKS                       R31 R11 K38 ["searchWidget"]
      130 GETTABLEKS                       R31 R31 K48 ["ageWarning"]
      132 GETTABLEKS                       R31 R31 K49 ["Height"]
      134 CALL                             R27 4 1
      135 SETTABLEKS                       R27 R26 K42 ["Size"]
      137 LOADN                            R27 0
      138 SETTABLEKS                       R27 R26 K43 ["BorderSizePixel"]
      140 DUPTABLE                         R27 K51 [{"AgeWarning"}]
      141 GETUPVAL                         R28 2
      142 GETTABLEKS                       R28 R28 K26 ["createElement"]
      144 LOADK                            R29 K52 ["TextLabel"]
      145 GETUPVAL                         R30 4
      146 GETTABLEKS                       R30 R30 K53 ["Dictionary"]
      148 GETTABLEKS                       R30 R30 K54 ["join"]
      150 GETTABLEKS                       R31 R11 K38 ["searchWidget"]
      152 GETTABLEKS                       R31 R31 K48 ["ageWarning"]
      154 GETTABLEKS                       R31 R31 K55 ["fontStyle"]
      156 DUPTABLE                         R32 K58 [{"Text", "TextXAlignment"}]
      157 SETTABLEKS                       R19 R32 K56 ["Text"]
      159 GETIMPORT                        R33 K61 [Enum.TextXAlignment.Left]
      161 SETTABLEKS                       R33 R32 K57 ["TextXAlignment"]
      163 CALL                             R30 2 -1
      164 CALL                             R28 -1 1
      165 SETTABLEKS                       R28 R27 K50 ["AgeWarning"]
      167 CALL                             R24 3 1
      168 SETTABLEKS                       R24 R23 K30 ["AgeWarningFrame"]
      170 GETUPVAL                         R24 2
      171 GETTABLEKS                       R24 R24 K26 ["createElement"]
      173 GETUPVAL                         R25 5
      174 DUPTABLE                         R26 K74 [{"LayoutOrder", "Enabled", "HeaderHeight", "ItemHeight", "ErrorText", "DefaultText", "NoResultsText", "LoadingMore", "IsGroupGame", "onSearchRequested", "onTextChanged", "onTextBoxFocused", "OnItemClicked", "Results", "Is17PlusGame"}]
      175 LOADN                            R27 2
      176 SETTABLEKS                       R27 R26 K1 ["LayoutOrder"]
      178 MOVE                             R27 R3
      179 JUMPIFNOT                        R27 ; [+1]
      180 NOT                              R27 R17
      181 SETTABLEKS                       R27 R26 K62 ["Enabled"]
      183 GETTABLEKS                       R27 R11 K75 ["searchBar"]
      185 GETTABLEKS                       R27 R27 K76 ["headerHeight"]
      187 SETTABLEKS                       R27 R26 K63 ["HeaderHeight"]
      189 GETTABLEKS                       R27 R11 K75 ["searchBar"]
      191 GETTABLEKS                       R27 R27 K77 ["itemHeight"]
      193 SETTABLEKS                       R27 R26 K64 ["ItemHeight"]
      195 JUMPIFNOT                        R17 ; [+2]
      196 MOVE                             R27 R18
      197 JUMPIF                           R27 ; [+1]
      198 LOADNIL                          R27
      199 SETTABLEKS                       R27 R26 K65 ["ErrorText"]
      201 LOADK                            R29 K18 ["SearchBar"]
      202 JUMPIFNOT                        R9 ; [+2]
      203 LOADK                            R30 K78 ["AddUsers"]
      204 JUMP                             ; [+1]
      205 LOADK                            R30 K79 ["AddUsersGroups"]
      206 NAMECALL                         R27 R12 K22 ["getText"]
      208 CALL                             R27 3 1
      209 SETTABLEKS                       R27 R26 K66 ["DefaultText"]
      211 LOADK                            R29 K18 ["SearchBar"]
      212 LOADK                            R30 K67 ["NoResultsText"]
      213 NAMECALL                         R27 R12 K22 ["getText"]
      215 CALL                             R27 3 1
      216 SETTABLEKS                       R27 R26 K67 ["NoResultsText"]
      218 SETTABLEKS                       R14 R26 K68 ["LoadingMore"]
      220 SETTABLEKS                       R9 R26 K8 ["IsGroupGame"]
      222 NEWCLOSURE                       R27 P0
      223 CAPTURE                          VAL R7
      224 SETTABLEKS                       R27 R26 K69 ["onSearchRequested"]
      226 NEWCLOSURE                       R27 P1
      227 CAPTURE                          UPVAL U0
      228 CAPTURE                          VAL R0
      229 CAPTURE                          VAL R7
      230 SETTABLEKS                       R27 R26 K70 ["onTextChanged"]
      232 GETUPVAL                         R28 0
      233 JUMPIFNOT                        R28 ; [+3]
      234 NEWCLOSURE                       R27 P2
      235 CAPTURE                          VAL R0
      236 JUMP                             ; [+1]
      237 LOADNIL                          R27
      238 SETTABLEKS                       R27 R26 K71 ["onTextBoxFocused"]
      240 GETUPVAL                         R28 0
      241 JUMPIFNOT                        R28 ; [+15]
      242 NEWCLOSURE                       R27 P3
      243 CAPTURE                          UPVAL U6
      244 CAPTURE                          VAL R0
      245 CAPTURE                          VAL R9
      246 CAPTURE                          UPVAL U7
      247 CAPTURE                          UPVAL U8
      248 CAPTURE                          VAL R1
      249 CAPTURE                          VAL R5
      250 CAPTURE                          UPVAL U9
      251 CAPTURE                          UPVAL U10
      252 CAPTURE                          VAL R8
      253 CAPTURE                          UPVAL U11
      254 CAPTURE                          VAL R6
      255 CAPTURE                          UPVAL U12
      256 JUMP                             ; [+8]
      257 NEWCLOSURE                       R27 P4
      258 CAPTURE                          VAL R1
      259 CAPTURE                          UPVAL U6
      260 CAPTURE                          VAL R0
      261 CAPTURE                          VAL R5
      262 CAPTURE                          UPVAL U9
      263 CAPTURE                          UPVAL U10
      264 CAPTURE                          VAL R6
      265 SETTABLEKS                       R27 R26 K72 ["OnItemClicked"]
      267 SETTABLEKS                       R13 R26 K73 ["Results"]
      269 SETTABLEKS                       R10 R26 K9 ["Is17PlusGame"]
      271 CALL                             R24 2 1
      272 SETTABLEKS                       R24 R23 K31 ["Searchbar"]
      274 CALL                             R20 3 -1
      275 RETURN                           R20 -1

PROTO_15:
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

PROTO_16:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R1 -1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_17:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R1 -1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_18:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R1 -1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["LoadFriends"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_20:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R1 -1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_21:
        0 DUPTABLE                         R1 K5 [{"AddUserCollaborator", "AddGroupCollaborator", "SearchCollaborators", "LoadFriends", "AddSearchItemLog"}]
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
       22 JUMPIFNOT                        R3 ; [+4]
       23 NEWCLOSURE                       R2 P4
       24 CAPTURE                          VAL R0
       25 CAPTURE                          UPVAL U5
       26 JUMP                             ; [+1]
       27 LOADNIL                          R2
       28 SETTABLEKS                       R2 R1 K4 ["AddSearchItemLog"]
       30 RETURN                           R1 1

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
       49 GETTABLEKS                       R10 R0 K15 ["Src"]
       51 GETTABLEKS                       R10 R10 K16 ["Util"]
       53 GETTABLEKS                       R10 R10 K17 ["PermissionsConstants"]
       55 CALL                             R9 1 1
       56 GETIMPORT                        R10 K4 [require]
       58 GETTABLEKS                       R11 R0 K15 ["Src"]
       60 GETTABLEKS                       R11 R11 K18 ["Keys"]
       62 GETTABLEKS                       R11 R11 K19 ["loadingInProgress"]
       64 CALL                             R10 1 1
       65 GETTABLEKS                       R11 R9 K20 ["PlayKey"]
       67 GETTABLEKS                       R12 R9 K21 ["EditKey"]
       69 GETIMPORT                        R13 K4 [require]
       71 GETTABLEKS                       R14 R0 K15 ["Src"]
       73 GETTABLEKS                       R14 R14 K16 ["Util"]
       75 GETTABLEKS                       R14 R14 K22 ["Constants"]
       77 CALL                             R13 1 1
       78 GETTABLEKS                       R14 R13 K23 ["COLLABORATORTYPE_USER"]
       80 GETTABLEKS                       R15 R13 K24 ["COLLABORATORTYPE_GROUP"]
       82 GETIMPORT                        R16 K4 [require]
       84 GETTABLEKS                       R17 R0 K15 ["Src"]
       86 GETTABLEKS                       R17 R17 K25 ["Components"]
       88 GETTABLEKS                       R17 R17 K26 ["Thumbnails"]
       90 GETTABLEKS                       R17 R17 K27 ["UserHeadshotThumbnail"]
       92 CALL                             R16 1 1
       93 GETIMPORT                        R17 K4 [require]
       95 GETTABLEKS                       R18 R0 K15 ["Src"]
       97 GETTABLEKS                       R18 R18 K25 ["Components"]
       99 GETTABLEKS                       R18 R18 K26 ["Thumbnails"]
      101 GETTABLEKS                       R18 R18 K28 ["GroupIconThumbnail"]
      103 CALL                             R17 1 1
      104 GETIMPORT                        R18 K4 [require]
      106 GETTABLEKS                       R19 R0 K15 ["Src"]
      108 GETTABLEKS                       R19 R19 K25 ["Components"]
      110 GETTABLEKS                       R19 R19 K29 ["SearchBar"]
      112 CALL                             R18 1 1
      113 GETIMPORT                        R19 K4 [require]
      115 GETTABLEKS                       R20 R0 K15 ["Src"]
      117 GETTABLEKS                       R20 R20 K16 ["Util"]
      119 GETTABLEKS                       R20 R20 K30 ["CreateFitToContent"]
      121 CALL                             R19 1 1
      122 GETIMPORT                        R20 K4 [require]
      124 GETTABLEKS                       R21 R0 K15 ["Src"]
      126 GETTABLEKS                       R21 R21 K31 ["Selectors"]
      128 GETTABLEKS                       R21 R21 K32 ["GetUserCollaborators"]
      130 CALL                             R20 1 1
      131 GETIMPORT                        R21 K4 [require]
      133 GETTABLEKS                       R22 R0 K15 ["Src"]
      135 GETTABLEKS                       R22 R22 K31 ["Selectors"]
      137 GETTABLEKS                       R22 R22 K33 ["GetGroupCollaborators"]
      139 CALL                             R21 1 1
      140 GETIMPORT                        R22 K4 [require]
      142 GETTABLEKS                       R23 R0 K15 ["Src"]
      144 GETTABLEKS                       R23 R23 K34 ["Thunks"]
      146 GETTABLEKS                       R23 R23 K35 ["AddUserCollaborator"]
      148 CALL                             R22 1 1
      149 GETIMPORT                        R23 K4 [require]
      151 GETTABLEKS                       R24 R0 K15 ["Src"]
      153 GETTABLEKS                       R24 R24 K34 ["Thunks"]
      155 GETTABLEKS                       R24 R24 K36 ["AddGroupCollaborator"]
      157 CALL                             R23 1 1
      158 GETIMPORT                        R24 K4 [require]
      160 GETTABLEKS                       R25 R0 K15 ["Src"]
      162 GETTABLEKS                       R25 R25 K34 ["Thunks"]
      164 GETTABLEKS                       R25 R25 K37 ["SearchCollaborators"]
      166 CALL                             R24 1 1
      167 GETIMPORT                        R25 K4 [require]
      169 GETTABLEKS                       R26 R0 K15 ["Src"]
      171 GETTABLEKS                       R26 R26 K34 ["Thunks"]
      173 GETTABLEKS                       R26 R26 K38 ["PermissionsLoader"]
      175 CALL                             R25 1 1
      176 LOADNIL                          R26
      177 GETIMPORT                        R27 K4 [require]
      179 GETTABLEKS                       R28 R0 K15 ["Src"]
      181 GETTABLEKS                       R28 R28 K31 ["Selectors"]
      183 GETTABLEKS                       R28 R28 K39 ["IsGroupGame"]
      185 CALL                             R27 1 1
      186 GETIMPORT                        R28 K4 [require]
      188 GETTABLEKS                       R29 R0 K15 ["Src"]
      190 GETTABLEKS                       R29 R29 K31 ["Selectors"]
      192 GETTABLEKS                       R29 R29 K40 ["IsGame17Plus"]
      194 CALL                             R28 1 1
      195 GETIMPORT                        R29 K42 [game]
      197 LOADK                            R31 K43 ["StudioFriendToConnection"]
      198 NAMECALL                         R29 R29 K44 ["GetFastFlag"]
      200 CALL                             R29 2 1
      201 MOVE                             R30 R19
      202 LOADK                            R31 K45 ["Frame"]
      203 LOADK                            R32 K46 ["UIListLayout"]
      204 DUPTABLE                         R33 K50 [{"SortOrder", "Padding", "HorizontalAlignment"}]
      205 GETIMPORT                        R34 K53 [Enum.SortOrder.LayoutOrder]
      207 SETTABLEKS                       R34 R33 K47 ["SortOrder"]
      209 GETIMPORT                        R34 K56 [UDim.new]
      211 LOADN                            R35 0
      212 LOADN                            R36 32
      213 CALL                             R34 2 1
      214 SETTABLEKS                       R34 R33 K48 ["Padding"]
      216 GETIMPORT                        R34 K58 [Enum.HorizontalAlignment.Center]
      218 SETTABLEKS                       R34 R33 K49 ["HorizontalAlignment"]
      220 CALL                             R30 3 1
      221 LOADNIL                          R31
      222 GETIMPORT                        R32 K42 [game]
      224 LOADK                            R34 K59 ["Collab8766_LogCollabSearchItemClickedEventV4"]
      225 NAMECALL                         R32 R32 K44 ["GetFastFlag"]
      227 CALL                             R32 2 1
      228 JUMPIFNOT                        R32 ; [+17]
      229 GETIMPORT                        R33 K4 [require]
      231 GETTABLEKS                       R34 R0 K15 ["Src"]
      233 GETTABLEKS                       R34 R34 K34 ["Thunks"]
      235 GETTABLEKS                       R34 R34 K60 ["AddSearchItemLog"]
      237 CALL                             R33 1 1
      238 MOVE                             R26 R33
      239 GETIMPORT                        R33 K42 [game]
      241 LOADK                            R35 K61 ["StudioService"]
      242 NAMECALL                         R33 R33 K62 ["GetService"]
      244 CALL                             R33 2 1
      245 MOVE                             R31 R33
      246 GETIMPORT                        R33 K42 [game]
      248 LOADK                            R35 K63 ["Collab8818_ShowSearchItemDisplayName"]
      249 NAMECALL                         R33 R33 K44 ["GetFastFlag"]
      251 CALL                             R33 2 1
      252 OR                               R34 R32 R33
      253 GETIMPORT                        R35 K4 [require]
      255 GETTABLEKS                       R36 R0 K15 ["Src"]
      257 GETTABLEKS                       R36 R36 K16 ["Util"]
      259 GETTABLEKS                       R36 R36 K64 ["IsLikelyCollaboratorPrefetchEnabled"]
      261 CALL                             R35 1 1
      262 MOVE                             R36 R35
      263 CALL                             R36 0 1
      264 GETTABLEKS                       R37 R1 K65 ["PureComponent"]
      266 LOADK                            R39 K66 ["CollaboratorSearchWidget"]
      267 NAMECALL                         R37 R37 K67 ["extend"]
      269 CALL                             R37 2 1
      270 JUMPIFNOT                        R32 ; [+4]
      271 DUPCLOSURE                       R38 K68 [PROTO_0]
      272 CAPTURE                          VAL R1
      273 SETTABLEKS                       R38 R37 K69 ["init"]
      275 DUPCLOSURE                       R38 K70 [PROTO_1]
      276 CAPTURE                          VAL R10
      277 SETTABLEKS                       R38 R37 K71 ["isLoading"]
      279 DUPCLOSURE                       R38 K72 [PROTO_2]
      280 SETTABLEKS                       R38 R37 K73 ["isFriend"]
      282 DUPCLOSURE                       R38 K74 [PROTO_7]
      283 CAPTURE                          VAL R36
      284 CAPTURE                          VAL R9
      285 CAPTURE                          VAL R10
      286 CAPTURE                          VAL R3
      287 SETTABLEKS                       R38 R37 K75 ["getMatches"]
      289 DUPCLOSURE                       R38 K76 [PROTO_8]
      290 CAPTURE                          VAL R36
      291 CAPTURE                          VAL R9
      292 CAPTURE                          VAL R1
      293 CAPTURE                          VAL R16
      294 CAPTURE                          VAL R34
      295 CAPTURE                          VAL R14
      296 CAPTURE                          VAL R17
      297 CAPTURE                          VAL R15
      298 SETTABLEKS                       R38 R37 K77 ["getResults"]
      300 NEWCLOSURE                       R38 P5
      301 CAPTURE                          VAL R32
      302 CAPTURE                          VAL R29
      303 CAPTURE                          VAL R1
      304 CAPTURE                          VAL R30
      305 CAPTURE                          VAL R3
      306 CAPTURE                          VAL R18
      307 CAPTURE                          VAL R9
      308 CAPTURE                          VAL R36
      309 CAPTURE                          REF R31
      310 CAPTURE                          VAL R12
      311 CAPTURE                          VAL R11
      312 CAPTURE                          VAL R14
      313 CAPTURE                          VAL R15
      314 SETTABLEKS                       R38 R37 K78 ["render"]
      316 MOVE                             R38 R7
      317 DUPTABLE                         R39 K80 [{"Stylizer", "Localization", "Mouse"}]
      318 SETTABLEKS                       R5 R39 K11 ["Stylizer"]
      320 SETTABLEKS                       R8 R39 K14 ["Localization"]
      322 GETTABLEKS                       R40 R6 K79 ["Mouse"]
      324 SETTABLEKS                       R40 R39 K79 ["Mouse"]
      326 CALL                             R38 1 1
      327 MOVE                             R39 R37
      328 CALL                             R38 1 1
      329 MOVE                             R37 R38
      330 GETTABLEKS                       R38 R2 K81 ["connect"]
      332 DUPCLOSURE                       R39 K82 [PROTO_15]
      333 CAPTURE                          VAL R20
      334 CAPTURE                          VAL R21
      335 CAPTURE                          VAL R36
      336 CAPTURE                          VAL R3
      337 CAPTURE                          VAL R27
      338 CAPTURE                          VAL R28
      339 NEWCLOSURE                       R40 P7
      340 CAPTURE                          VAL R22
      341 CAPTURE                          VAL R23
      342 CAPTURE                          VAL R24
      343 CAPTURE                          VAL R25
      344 CAPTURE                          VAL R32
      345 CAPTURE                          REF R26
      346 CALL                             R38 2 1
      347 MOVE                             R39 R37
      348 CALL                             R38 1 1
      349 MOVE                             R37 R38
      350 CLOSEUPVALS                      R26
      351 RETURN                           R37 1
