PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOTEQKNIL                  R2 ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOTEQKNIL                  R2 ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_2:
        0 MOVE                             R3 R1
        1 LOADK                            R4 K0 [" HTTP "]
        2 GETTABLEKS                       R5 R0 K1 ["responseCode"]
        4 CONCAT                           R2 R3 R5
        5 GETIMPORT                        R3 K3 [warn]
        7 MOVE                             R4 R2
        8 CALL                             R3 1 0
        9 GETIMPORT                        R3 K5 [pairs]
       11 GETTABLEKS                       R6 R0 K6 ["responseBody"]
       13 GETTABLEKS                       R4 R6 K7 ["errors"]
       15 CALL                             R3 1 3
       16 FORGPREP_NEXT                    R3
       17 GETIMPORT                        R8 K3 [warn]
       19 GETTABLEKS                       R9 R7 K8 ["userFacingMessage"]
       21 CALL                             R8 1 0
       22 FORGLOOP                         R3 2 ; [-6]
       24 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["name"]
        4 NAMECALL                         R0 R0 K1 ["SetUniverseDisplayName"]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 0
        8 NAMECALL                         R0 R0 K2 ["RefreshDocumentDisplayName"]
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 0
       12 NAMECALL                         R0 R0 K3 ["EmitPlacePublishedSignal"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 LOADK                            R5 K0 ["Error"]
        4 LOADK                            R6 K1 ["SetConfiguration"]
        5 NAMECALL                         R3 R3 K2 ["getText"]
        7 CALL                             R3 3 -1
        8 CALL                             R1 -1 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 LOADK                            R5 K0 ["Error"]
        4 LOADK                            R6 K1 ["ActivatingUniverse"]
        5 NAMECALL                         R3 R3 K2 ["getText"]
        7 CALL                             R3 3 -1
        8 CALL                             R1 -1 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 LOADK                            R5 K0 ["Error"]
        4 LOADK                            R6 K1 ["DeactivatingUniverse"]
        5 NAMECALL                         R3 R3 K2 ["getText"]
        7 CALL                             R3 3 -1
        8 CALL                             R1 -1 0
        9 RETURN                           R0 0

PROTO_7:
        0 NEWTABLE                         R6 4 0
        2 NEWTABLE                         R7 0 0
        4 GETIMPORT                        R8 K1 [pairs]
        6 MOVE                             R9 R0
        7 CALL                             R8 1 3
        8 FORGPREP_NEXT                    R8
        9 GETUPVAL                         R15 0
       10 GETTABLE                         R14 R15 R11
       11 JUMPIFNOTEQKNIL                  R14 ; [+2]
       13 LOADB                            R13 0 +1
       14 LOADB                            R13 1
       15 JUMPIFNOT                        R13 ; [+2]
       16 SETTABLE                         R12 R6 R11
       17 JUMP                             ; [+8]
       18 GETUPVAL                         R15 1
       19 GETTABLE                         R14 R15 R11
       20 JUMPIFNOTEQKNIL                  R14 ; [+2]
       22 LOADB                            R13 0 +1
       23 LOADB                            R13 1
       24 JUMPIFNOT                        R13 ; [+1]
       25 SETTABLE                         R12 R7 R11
       26 FORGLOOP                         R8 2 ; [-18]
       28 GETIMPORT                        R8 K3 [game]
       30 LOADK                            R10 K4 ["StudioPublishService"]
       31 NAMECALL                         R8 R8 K5 ["GetService"]
       33 CALL                             R8 2 1
       34 GETTABLEKS                       R10 R0 K6 ["teamCreateEnabled"]
       36 GETTABLEKS                       R11 R6 K7 ["name"]
       38 NAMECALL                         R8 R8 K8 ["SetTeamCreateOnPublishInfo"]
       40 CALL                             R8 3 0
       41 GETUPVAL                         R8 2
       42 GETTABLEKS                       R10 R6 K7 ["name"]
       44 GETTABLEKS                       R11 R6 K7 ["name"]
       46 NAMECALL                         R8 R8 K9 ["setUploadNames"]
       48 CALL                             R8 3 0
       49 GETUPVAL                         R8 2
       50 LOADN                            R10 0
       51 LOADN                            R11 0
       52 GETTABLEKS                       R12 R0 K10 ["creatorId"]
       54 MOVE                             R13 R4
       55 LOADNIL                          R14
       56 NAMECALL                         R8 R8 K11 ["publishAs"]
       58 CALL                             R8 6 0
       59 LOADNIL                          R8
       60 LOADNIL                          R9
       61 GETUPVAL                         R11 2
       62 GETTABLEKS                       R10 R11 K12 ["GamePublishFinished"]
       64 NAMECALL                         R10 R10 K13 ["wait"]
       66 CALL                             R10 1 2
       67 MOVE                             R8 R10
       68 MOVE                             R9 R11
       69 JUMPIF                           R8 ; [+1]
       70 RETURN                           R0 0
       71 GETTABLEKS                       R10 R6 K14 ["playableDevices"]
       73 JUMPIFNOT                        R10 ; [+20]
       74 NEWTABLE                         R10 0 0
       76 GETIMPORT                        R11 K1 [pairs]
       78 GETTABLEKS                       R12 R6 K14 ["playableDevices"]
       80 CALL                             R11 1 3
       81 FORGPREP_NEXT                    R11
       82 JUMPIFNOT                        R15 ; [+7]
       83 FASTCALL2                        TABLE_INSERT R10 R14 ; [+5]
       85 MOVE                             R17 R10
       86 MOVE                             R18 R14
       87 GETIMPORT                        R16 K17 [table.insert]
       89 CALL                             R16 2 0
       90 FORGLOOP                         R11 2 ; [-9]
       92 SETTABLEKS                       R10 R6 K14 ["playableDevices"]
       94 GETUPVAL                         R10 3
       95 CALL                             R10 0 1
       96 JUMPIFNOT                        R10 ; [+59]
       97 JUMPIFEQKNIL                     R3 ; [+58]
       99 GETUPVAL                         R10 4
      100 MOVE                             R11 R2
      101 MOVE                             R12 R3
      102 MOVE                             R13 R9
      103 CALL                             R10 3 1
      104 JUMPIFNOTEQKN                    R10 K18 [200] ; [+40]
      106 GETTABLEKS                       R12 R6 K19 ["OptInLocations"]
      108 FASTCALL1                        ASSERT R12 ; [+2]
      109 GETIMPORT                        R11 K21 [assert]
      111 CALL                             R11 1 0
      112 NEWTABLE                         R11 0 0
      114 NEWTABLE                         R12 0 0
      116 GETIMPORT                        R13 K1 [pairs]
      118 GETTABLEKS                       R14 R6 K19 ["OptInLocations"]
      120 CALL                             R13 1 3
      121 FORGPREP_NEXT                    R13
      122 JUMPIFNOT                        R17 ; [+8]
      123 FASTCALL2                        TABLE_INSERT R11 R16 ; [+5]
      125 MOVE                             R19 R11
      126 MOVE                             R20 R16
      127 GETIMPORT                        R18 K17 [table.insert]
      129 CALL                             R18 2 0
      130 JUMP                             ; [+7]
      131 FASTCALL2                        TABLE_INSERT R12 R16 ; [+5]
      133 MOVE                             R19 R12
      134 MOVE                             R20 R16
      135 GETIMPORT                        R18 K17 [table.insert]
      137 CALL                             R18 2 0
      138 FORGLOOP                         R13 2 ; [-17]
      140 SETTABLEKS                       R11 R6 K22 ["optInRegions"]
      142 SETTABLEKS                       R12 R6 K23 ["optOutRegions"]
      144 JUMP                             ; [+8]
      145 GETIMPORT                        R11 K25 [warn]
      147 GETUPVAL                         R14 5
      148 LOADK                            R15 K26 ["EmailSubmitFailure"]
      149 NAMECALL                         R12 R1 K27 ["getText"]
      151 CALL                             R12 3 -1
      152 CALL                             R11 -1 0
      153 LOADNIL                          R11
      154 SETTABLEKS                       R11 R6 K19 ["OptInLocations"]
      156 GETTABLEKS                       R13 R2 K28 ["Develop"]
      158 GETTABLEKS                       R12 R13 K29 ["V2"]
      160 GETTABLEKS                       R11 R12 K30 ["Universes"]
      162 GETTABLEKS                       R10 R11 K31 ["configuration"]
      164 MOVE                             R11 R9
      165 MOVE                             R12 R6
      166 CALL                             R10 2 1
      167 NAMECALL                         R10 R10 K32 ["makeRequest"]
      169 CALL                             R10 1 1
      170 NEWCLOSURE                       R12 P0
      171 CAPTURE                          UPVAL U2
      172 CAPTURE                          VAL R6
      173 NEWCLOSURE                       R13 P1
      174 CAPTURE                          UPVAL U6
      175 CAPTURE                          VAL R1
      176 NAMECALL                         R10 R10 K33 ["andThen"]
      178 CALL                             R10 3 0
      179 GETTABLEKS                       R10 R7 K34 ["isActive"]
      181 JUMPIFNOT                        R10 ; [+20]
      182 GETTABLEKS                       R13 R2 K28 ["Develop"]
      184 GETTABLEKS                       R12 R13 K35 ["V1"]
      186 GETTABLEKS                       R11 R12 K30 ["Universes"]
      188 GETTABLEKS                       R10 R11 K36 ["activate"]
      190 MOVE                             R11 R9
      191 CALL                             R10 1 1
      192 NAMECALL                         R10 R10 K32 ["makeRequest"]
      194 CALL                             R10 1 1
      195 NEWCLOSURE                       R12 P2
      196 CAPTURE                          UPVAL U6
      197 CAPTURE                          VAL R1
      198 NAMECALL                         R10 R10 K37 ["catch"]
      200 CALL                             R10 2 0
      201 JUMP                             ; [+19]
      202 GETTABLEKS                       R13 R2 K28 ["Develop"]
      204 GETTABLEKS                       R12 R13 K35 ["V1"]
      206 GETTABLEKS                       R11 R12 K30 ["Universes"]
      208 GETTABLEKS                       R10 R11 K38 ["deactivate"]
      210 MOVE                             R11 R9
      211 CALL                             R10 1 1
      212 NAMECALL                         R10 R10 K32 ["makeRequest"]
      214 CALL                             R10 1 1
      215 NEWCLOSURE                       R12 P3
      216 CAPTURE                          UPVAL U6
      217 CAPTURE                          VAL R1
      218 NAMECALL                         R10 R10 K37 ["catch"]
      220 CALL                             R10 2 0
      221 FASTCALL1                        ASSERT R5 ; [+3]
      222 MOVE                             R11 R5
      223 GETIMPORT                        R10 K21 [assert]
      225 CALL                             R10 1 0
      226 LOADB                            R10 1
      227 GETTABLEKS                       R11 R0 K10 ["creatorId"]
      229 JUMPIFEQKN                       R11 K39 [0] ; [+14]
      231 GETUPVAL                         R13 7
      232 GETTABLEKS                       R12 R13 K40 ["List"]
      234 GETTABLEKS                       R11 R12 K41 ["find"]
      236 MOVE                             R12 R5
      237 GETTABLEKS                       R13 R0 K10 ["creatorId"]
      239 CALL                             R11 2 1
      240 JUMPIFNOTEQKNIL                  R11 ; [+2]
      242 LOADB                            R10 0 +1
      243 LOADB                            R10 1
      244 MOVE                             R11 R10
      245 JUMPIFNOT                        R11 ; [+6]
      246 GETTABLEKS                       R12 R0 K42 ["dataSharingEnabled"]
      248 JUMPIFEQKB                       R12 TRUE ; [+2]
      250 LOADB                            R11 0 +1
      251 LOADB                            R11 1
      252 JUMPIFNOT                        R11 ; [+3]
      253 GETUPVAL                         R12 8
      254 MOVE                             R13 R9
      255 CALL                             R12 1 0
      256 GETUPVAL                         R12 9
      257 LOADK                            R13 K43 ["PublishPlaceAsDataSharing"]
      258 GETUPVAL                         R14 10
      259 CALL                             R14 0 1
      260 LOADK                            R15 K44 ["saveAll"]
      261 DUPTABLE                         R16 K47 [{"dataSharingEnabled", "dataSharingDefault", "isOwner"}]
      262 GETTABLEKS                       R17 R0 K42 ["dataSharingEnabled"]
      264 SETTABLEKS                       R17 R16 K42 ["dataSharingEnabled"]
      266 GETTABLEKS                       R17 R0 K45 ["dataSharingDefault"]
      268 SETTABLEKS                       R17 R16 K45 ["dataSharingDefault"]
      270 SETTABLEKS                       R10 R16 K46 ["isOwner"]
      272 CALL                             R12 4 0
      273 GETTABLEKS                       R13 R0 K10 ["creatorId"]
      275 JUMPIFEQKN                       R13 K39 [0] ; [+4]
      277 GETTABLEKS                       R12 R0 K10 ["creatorId"]
      279 JUMPIF                           R12 ; [+1]
      280 LOADNIL                          R12
      281 GETUPVAL                         R14 11
      282 GETTABLEKS                       R13 R14 K48 ["reportDataSharingToEventIngest"]
      284 GETTABLEKS                       R14 R0 K45 ["dataSharingDefault"]
      286 MOVE                             R15 R11
      287 MOVE                             R16 R9
      288 MOVE                             R17 R12
      289 CALL                             R13 4 0
      290 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioPublishService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R5 K5 [script]
        9 GETTABLEKS                       R4 R5 K6 ["Parent"]
       11 GETTABLEKS                       R3 R4 K6 ["Parent"]
       13 GETTABLEKS                       R2 R3 K6 ["Parent"]
       15 GETTABLEKS                       R1 R2 K6 ["Parent"]
       17 GETIMPORT                        R2 K8 [require]
       19 GETTABLEKS                       R5 R1 K9 ["Src"]
       21 GETTABLEKS                       R4 R5 K10 ["Thunks"]
       23 GETTABLEKS                       R3 R4 K11 ["PostContactEmail"]
       25 CALL                             R2 1 1
       26 GETIMPORT                        R3 K8 [require]
       28 GETTABLEKS                       R6 R1 K9 ["Src"]
       30 GETTABLEKS                       R5 R6 K12 ["Util"]
       32 GETTABLEKS                       R4 R5 K13 ["Analytics"]
       34 CALL                             R3 1 1
       35 GETIMPORT                        R4 K8 [require]
       37 GETTABLEKS                       R7 R1 K9 ["Src"]
       39 GETTABLEKS                       R6 R7 K12 ["Util"]
       41 GETTABLEKS                       R5 R6 K14 ["KeyProvider"]
       43 CALL                             R4 1 1
       44 GETTABLEKS                       R5 R4 K15 ["getOptInLocationsKeyName"]
       46 CALL                             R5 0 1
       47 GETIMPORT                        R7 K8 [require]
       49 GETTABLEKS                       R10 R1 K9 ["Src"]
       51 GETTABLEKS                       R9 R10 K12 ["Util"]
       53 GETTABLEKS                       R8 R9 K16 ["PublishPlaceAsUtilities"]
       55 CALL                             R7 1 1
       56 GETTABLEKS                       R6 R7 K17 ["shouldShowDevPublishLocations"]
       58 GETIMPORT                        R7 K8 [require]
       60 GETTABLEKS                       R11 R1 K9 ["Src"]
       62 GETTABLEKS                       R10 R11 K18 ["Network"]
       64 GETTABLEKS                       R9 R10 K19 ["Requests"]
       66 GETTABLEKS                       R8 R9 K20 ["ApiSetUniverseDataSharing"]
       68 CALL                             R7 1 1
       69 GETIMPORT                        R8 K8 [require]
       71 GETTABLEKS                       R11 R1 K9 ["Src"]
       73 GETTABLEKS                       R10 R11 K21 ["Flags"]
       75 GETTABLEKS                       R9 R10 K22 ["getFIntCAP1107ThrottleHundredthsPercentage"]
       77 CALL                             R8 1 1
       78 GETIMPORT                        R10 K8 [require]
       80 GETTABLEKS                       R13 R1 K9 ["Src"]
       82 GETTABLEKS                       R12 R13 K12 ["Util"]
       84 GETTABLEKS                       R11 R12 K16 ["PublishPlaceAsUtilities"]
       86 CALL                             R10 1 1
       87 GETTABLEKS                       R9 R10 K23 ["sendAnalyticsToKibana"]
       89 GETIMPORT                        R10 K8 [require]
       91 GETTABLEKS                       R12 R1 K24 ["Packages"]
       93 GETTABLEKS                       R11 R12 K25 ["Cryo"]
       95 CALL                             R10 1 1
       96 DUPTABLE                         R11 K27 [{"isActive"}]
       97 LOADB                            R12 1
       98 SETTABLEKS                       R12 R11 K26 ["isActive"]
      100 DUPTABLE                         R12 K33 [{"description", "genre", "name", "playableDevices", "isFriendsOnly"}]
      101 LOADB                            R13 1
      102 SETTABLEKS                       R13 R12 K28 ["description"]
      104 LOADB                            R13 1
      105 SETTABLEKS                       R13 R12 K29 ["genre"]
      107 LOADB                            R13 1
      108 SETTABLEKS                       R13 R12 K30 ["name"]
      110 LOADB                            R13 1
      111 SETTABLEKS                       R13 R12 K31 ["playableDevices"]
      113 LOADB                            R13 1
      114 SETTABLEKS                       R13 R12 K32 ["isFriendsOnly"]
      116 MOVE                             R13 R6
      117 CALL                             R13 0 1
      118 JUMPIFNOT                        R13 ; [+3]
      119 LOADB                            R13 1
      120 SETTABLEKS                       R13 R12 K34 ["OptInLocations"]
      122 DUPCLOSURE                       R13 K35 [PROTO_0]
      123 CAPTURE                          VAL R11
      124 DUPCLOSURE                       R14 K36 [PROTO_1]
      125 CAPTURE                          VAL R12
      126 DUPCLOSURE                       R15 K37 [PROTO_2]
      127 DUPCLOSURE                       R16 K38 [PROTO_7]
      128 CAPTURE                          VAL R12
      129 CAPTURE                          VAL R11
      130 CAPTURE                          VAL R0
      131 CAPTURE                          VAL R6
      132 CAPTURE                          VAL R2
      133 CAPTURE                          VAL R5
      134 CAPTURE                          VAL R15
      135 CAPTURE                          VAL R10
      136 CAPTURE                          VAL R7
      137 CAPTURE                          VAL R9
      138 CAPTURE                          VAL R8
      139 CAPTURE                          VAL R3
      140 DUPTABLE                         R17 K40 [{"saveAll"}]
      141 SETTABLEKS                       R16 R17 K39 ["saveAll"]
      143 RETURN                           R17 1
