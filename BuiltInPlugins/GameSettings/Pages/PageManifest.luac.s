MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["AvatarPage"]
        9 GETTABLEKS                       R1 R1 K6 ["Avatar"]
       11 CALL                             R0 1 1
       12 GETIMPORT                        R1 K1 [require]
       14 GETIMPORT                        R2 K3 [script]
       16 GETTABLEKS                       R2 R2 K4 ["Parent"]
       18 GETTABLEKS                       R2 R2 K7 ["BasicInfoPage"]
       20 GETTABLEKS                       R2 R2 K8 ["BasicInfo"]
       22 CALL                             R1 1 1
       23 GETIMPORT                        R2 K1 [require]
       25 GETIMPORT                        R3 K3 [script]
       27 GETTABLEKS                       R3 R3 K4 ["Parent"]
       29 GETTABLEKS                       R3 R3 K9 ["MonetizationPage"]
       31 GETTABLEKS                       R3 R3 K10 ["Monetization"]
       33 CALL                             R2 1 1
       34 GETIMPORT                        R3 K1 [require]
       36 GETIMPORT                        R4 K3 [script]
       38 GETTABLEKS                       R4 R4 K4 ["Parent"]
       40 GETTABLEKS                       R4 R4 K11 ["OptionsPage"]
       42 GETTABLEKS                       R4 R4 K12 ["Options"]
       44 CALL                             R3 1 1
       45 GETIMPORT                        R4 K1 [require]
       47 GETIMPORT                        R5 K3 [script]
       49 GETTABLEKS                       R5 R5 K4 ["Parent"]
       51 GETTABLEKS                       R5 R5 K13 ["PlacesPage"]
       53 GETTABLEKS                       R5 R5 K14 ["Places"]
       55 CALL                             R4 1 1
       56 GETIMPORT                        R5 K1 [require]
       58 GETIMPORT                        R6 K3 [script]
       60 GETTABLEKS                       R6 R6 K4 ["Parent"]
       62 GETTABLEKS                       R6 R6 K15 ["SecurityPage"]
       64 GETTABLEKS                       R6 R6 K16 ["Security"]
       66 CALL                             R5 1 1
       67 GETIMPORT                        R6 K1 [require]
       69 GETIMPORT                        R7 K3 [script]
       71 GETTABLEKS                       R7 R7 K4 ["Parent"]
       73 GETTABLEKS                       R7 R7 K17 ["WorldPage"]
       75 GETTABLEKS                       R7 R7 K18 ["World"]
       77 CALL                             R6 1 1
       78 GETIMPORT                        R7 K1 [require]
       80 GETIMPORT                        R8 K3 [script]
       82 GETTABLEKS                       R8 R8 K4 ["Parent"]
       84 GETTABLEKS                       R8 R8 K19 ["LocalizationPage"]
       86 GETTABLEKS                       R8 R8 K20 ["Localization"]
       88 CALL                             R7 1 1
       89 GETIMPORT                        R8 K1 [require]
       91 GETIMPORT                        R9 K3 [script]
       93 GETTABLEKS                       R9 R9 K4 ["Parent"]
       95 GETTABLEKS                       R9 R9 K21 ["CommunicationPage"]
       97 GETTABLEKS                       R9 R9 K22 ["Communication"]
       99 CALL                             R8 1 1
      100 GETIMPORT                        R9 K1 [require]
      102 GETIMPORT                        R10 K3 [script]
      104 GETTABLEKS                       R10 R10 K4 ["Parent"]
      106 GETTABLEKS                       R10 R10 K23 ["CreatorHubPage"]
      108 GETTABLEKS                       R10 R10 K24 ["CreatorHub"]
      110 CALL                             R9 1 1
      111 GETIMPORT                        R10 K26 [game]
      113 LOADK                            R12 K27 ["RemoveGameSettingsMonetizationPage"]
      114 NAMECALL                         R10 R10 K28 ["GetFastFlag"]
      116 CALL                             R10 2 1
      117 GETIMPORT                        R11 K26 [game]
      119 LOADK                            R13 K29 ["RemoveGameSettingsAvatarPage"]
      120 NAMECALL                         R11 R11 K28 ["GetFastFlag"]
      122 CALL                             R11 2 1
      123 GETIMPORT                        R12 K1 [require]
      125 GETIMPORT                        R13 K3 [script]
      127 GETTABLEKS                       R13 R13 K4 ["Parent"]
      129 GETTABLEKS                       R13 R13 K4 ["Parent"]
      131 GETTABLEKS                       R13 R13 K30 ["Src"]
      133 GETTABLEKS                       R13 R13 K31 ["Flags"]
      135 GETTABLEKS                       R13 R13 K32 ["getFFlagPruneGameSettings"]
      137 CALL                             R12 1 1
      138 CALL                             R12 0 1
      139 NEWTABLE                         R13 0 0
      141 JUMPIFNOT                        R12 ; [+10]
      142 NEWTABLE                         R14 0 4
      144 MOVE                             R15 R1
      145 MOVE                             R16 R8
      146 MOVE                             R17 R5
      147 MOVE                             R18 R9
      148 SETLIST                          R14 R15 4 [1]
      150 MOVE                             R13 R14
      151 RETURN                           R13 1
      152 JUMPIFNOT                        R10 ; [+28]
      153 JUMPIFNOT                        R11 ; [+13]
      154 NEWTABLE                         R14 0 7
      156 MOVE                             R15 R1
      157 MOVE                             R16 R8
      158 MOVE                             R17 R5
      159 MOVE                             R18 R4
      160 MOVE                             R19 R7
      161 MOVE                             R20 R6
      162 MOVE                             R21 R3
      163 SETLIST                          R14 R15 7 [1]
      165 MOVE                             R13 R14
      166 RETURN                           R13 1
      167 NEWTABLE                         R14 0 8
      169 MOVE                             R15 R1
      170 MOVE                             R16 R8
      171 MOVE                             R17 R5
      172 MOVE                             R18 R4
      173 MOVE                             R19 R7
      174 MOVE                             R20 R0
      175 MOVE                             R21 R6
      176 MOVE                             R22 R3
      177 SETLIST                          R14 R15 8 [1]
      179 MOVE                             R13 R14
      180 RETURN                           R13 1
      181 JUMPIFNOT                        R11 ; [+14]
      182 NEWTABLE                         R14 0 8
      184 MOVE                             R15 R1
      185 MOVE                             R16 R8
      186 MOVE                             R17 R2
      187 MOVE                             R18 R5
      188 MOVE                             R19 R4
      189 MOVE                             R20 R7
      190 MOVE                             R21 R6
      191 MOVE                             R22 R3
      192 SETLIST                          R14 R15 8 [1]
      194 MOVE                             R13 R14
      195 RETURN                           R13 1
      196 NEWTABLE                         R14 0 9
      198 MOVE                             R15 R1
      199 MOVE                             R16 R8
      200 MOVE                             R17 R2
      201 MOVE                             R18 R5
      202 MOVE                             R19 R4
      203 MOVE                             R20 R7
      204 MOVE                             R21 R0
      205 MOVE                             R22 R6
      206 MOVE                             R23 R3
      207 SETLIST                          R14 R15 9 [1]
      209 MOVE                             R13 R14
      210 RETURN                           R13 1
