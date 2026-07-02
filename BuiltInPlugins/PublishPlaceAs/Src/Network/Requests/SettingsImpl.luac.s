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
       11 GETTABLEKS                       R4 R0 K6 ["responseBody"]
       13 GETTABLEKS                       R4 R4 K7 ["errors"]
       15 CALL                             R3 1 3
       16 FORGPREP_NEXT                    R3
       17 GETIMPORT                        R8 K3 [warn]
       19 GETTABLEKS                       R9 R7 K8 ["userFacingMessage"]
       21 CALL                             R8 1 0
       22 FORGLOOP                         R3 2 ; [-6]
       24 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["name"]
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
       61 GETUPVAL                         R10 2
       62 GETTABLEKS                       R10 R10 K12 ["GamePublishFinished"]
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
      156 GETTABLEKS                       R10 R2 K28 ["Develop"]
      158 GETTABLEKS                       R10 R10 K29 ["V2"]
      160 GETTABLEKS                       R10 R10 K30 ["Universes"]
      162 GETTABLEKS                       R10 R10 K31 ["configuration"]
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
      179 GETUPVAL                         R10 7
      180 CALL                             R10 0 1
      181 JUMPIF                           R10 ; [+42]
      182 GETTABLEKS                       R10 R7 K34 ["isActive"]
      184 JUMPIFNOT                        R10 ; [+20]
      185 GETTABLEKS                       R10 R2 K28 ["Develop"]
      187 GETTABLEKS                       R10 R10 K35 ["V1"]
      189 GETTABLEKS                       R10 R10 K30 ["Universes"]
      191 GETTABLEKS                       R10 R10 K36 ["activate"]
      193 MOVE                             R11 R9
      194 CALL                             R10 1 1
      195 NAMECALL                         R10 R10 K32 ["makeRequest"]
      197 CALL                             R10 1 1
      198 NEWCLOSURE                       R12 P2
      199 CAPTURE                          UPVAL U6
      200 CAPTURE                          VAL R1
      201 NAMECALL                         R10 R10 K37 ["catch"]
      203 CALL                             R10 2 0
      204 JUMP                             ; [+19]
      205 GETTABLEKS                       R10 R2 K28 ["Develop"]
      207 GETTABLEKS                       R10 R10 K35 ["V1"]
      209 GETTABLEKS                       R10 R10 K30 ["Universes"]
      211 GETTABLEKS                       R10 R10 K38 ["deactivate"]
      213 MOVE                             R11 R9
      214 CALL                             R10 1 1
      215 NAMECALL                         R10 R10 K32 ["makeRequest"]
      217 CALL                             R10 1 1
      218 NEWCLOSURE                       R12 P3
      219 CAPTURE                          UPVAL U6
      220 CAPTURE                          VAL R1
      221 NAMECALL                         R10 R10 K37 ["catch"]
      223 CALL                             R10 2 0
      224 FASTCALL1                        ASSERT R5 ; [+3]
      225 MOVE                             R11 R5
      226 GETIMPORT                        R10 K21 [assert]
      228 CALL                             R10 1 0
      229 LOADB                            R10 1
      230 GETTABLEKS                       R11 R0 K10 ["creatorId"]
      232 JUMPIFEQKN                       R11 K39 [0] ; [+14]
      234 GETUPVAL                         R11 8
      235 GETTABLEKS                       R11 R11 K40 ["List"]
      237 GETTABLEKS                       R11 R11 K41 ["find"]
      239 MOVE                             R12 R5
      240 GETTABLEKS                       R13 R0 K10 ["creatorId"]
      242 CALL                             R11 2 1
      243 JUMPIFNOTEQKNIL                  R11 ; [+2]
      245 LOADB                            R10 0 +1
      246 LOADB                            R10 1
      247 MOVE                             R11 R10
      248 JUMPIFNOT                        R11 ; [+6]
      249 GETTABLEKS                       R12 R0 K42 ["dataSharingEnabled"]
      251 JUMPIFEQKB                       R12 TRUE ; [+2]
      253 LOADB                            R11 0 +1
      254 LOADB                            R11 1
      255 JUMPIFNOT                        R11 ; [+3]
      256 GETUPVAL                         R12 9
      257 MOVE                             R13 R9
      258 CALL                             R12 1 0
      259 GETUPVAL                         R12 10
      260 LOADK                            R13 K43 ["PublishPlaceAsDataSharing"]
      261 GETUPVAL                         R14 11
      262 CALL                             R14 0 1
      263 LOADK                            R15 K44 ["saveAll"]
      264 DUPTABLE                         R16 K47 [{"dataSharingEnabled", "dataSharingDefault", "isOwner"}]
      265 GETTABLEKS                       R17 R0 K42 ["dataSharingEnabled"]
      267 SETTABLEKS                       R17 R16 K42 ["dataSharingEnabled"]
      269 GETTABLEKS                       R17 R0 K45 ["dataSharingDefault"]
      271 SETTABLEKS                       R17 R16 K45 ["dataSharingDefault"]
      273 SETTABLEKS                       R10 R16 K46 ["isOwner"]
      275 CALL                             R12 4 0
      276 GETTABLEKS                       R13 R0 K10 ["creatorId"]
      278 JUMPIFEQKN                       R13 K39 [0] ; [+4]
      280 GETTABLEKS                       R12 R0 K10 ["creatorId"]
      282 JUMPIF                           R12 ; [+1]
      283 LOADNIL                          R12
      284 GETUPVAL                         R13 12
      285 GETTABLEKS                       R13 R13 K48 ["reportDataSharingToEventIngest"]
      287 GETTABLEKS                       R14 R0 K45 ["dataSharingDefault"]
      289 MOVE                             R15 R11
      290 MOVE                             R16 R9
      291 MOVE                             R17 R12
      292 CALL                             R13 4 0
      293 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioPublishService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETTABLEKS                       R1 R1 K6 ["Parent"]
       17 GETIMPORT                        R2 K8 [require]
       19 GETTABLEKS                       R3 R1 K9 ["Src"]
       21 GETTABLEKS                       R3 R3 K10 ["Thunks"]
       23 GETTABLEKS                       R3 R3 K11 ["PostContactEmail"]
       25 CALL                             R2 1 1
       26 GETIMPORT                        R3 K8 [require]
       28 GETTABLEKS                       R4 R1 K9 ["Src"]
       30 GETTABLEKS                       R4 R4 K12 ["Util"]
       32 GETTABLEKS                       R4 R4 K13 ["Analytics"]
       34 CALL                             R3 1 1
       35 GETIMPORT                        R4 K8 [require]
       37 GETTABLEKS                       R5 R1 K9 ["Src"]
       39 GETTABLEKS                       R5 R5 K12 ["Util"]
       41 GETTABLEKS                       R5 R5 K14 ["KeyProvider"]
       43 CALL                             R4 1 1
       44 GETTABLEKS                       R5 R4 K15 ["getOptInLocationsKeyName"]
       46 CALL                             R5 0 1
       47 GETIMPORT                        R6 K8 [require]
       49 GETTABLEKS                       R7 R1 K9 ["Src"]
       51 GETTABLEKS                       R7 R7 K12 ["Util"]
       53 GETTABLEKS                       R7 R7 K16 ["PublishPlaceAsUtilities"]
       55 CALL                             R6 1 1
       56 GETTABLEKS                       R6 R6 K17 ["shouldShowDevPublishLocations"]
       58 GETIMPORT                        R7 K8 [require]
       60 GETTABLEKS                       R8 R1 K9 ["Src"]
       62 GETTABLEKS                       R8 R8 K18 ["Network"]
       64 GETTABLEKS                       R8 R8 K19 ["Requests"]
       66 GETTABLEKS                       R8 R8 K20 ["ApiSetUniverseDataSharing"]
       68 CALL                             R7 1 1
       69 GETIMPORT                        R8 K8 [require]
       71 GETTABLEKS                       R9 R1 K9 ["Src"]
       73 GETTABLEKS                       R9 R9 K21 ["Flags"]
       75 GETTABLEKS                       R9 R9 K22 ["getFIntCAP1107ThrottleHundredthsPercentage"]
       77 CALL                             R8 1 1
       78 GETIMPORT                        R9 K8 [require]
       80 GETTABLEKS                       R10 R1 K9 ["Src"]
       82 GETTABLEKS                       R10 R10 K21 ["Flags"]
       84 GETTABLEKS                       R10 R10 K23 ["getFFlagPublishPlaceAsAudiencesReplacement"]
       86 CALL                             R9 1 1
       87 GETIMPORT                        R10 K8 [require]
       89 GETTABLEKS                       R11 R1 K9 ["Src"]
       91 GETTABLEKS                       R11 R11 K12 ["Util"]
       93 GETTABLEKS                       R11 R11 K16 ["PublishPlaceAsUtilities"]
       95 CALL                             R10 1 1
       96 GETTABLEKS                       R10 R10 K24 ["sendAnalyticsToKibana"]
       98 GETIMPORT                        R11 K8 [require]
      100 GETTABLEKS                       R12 R1 K25 ["Packages"]
      102 GETTABLEKS                       R12 R12 K26 ["Cryo"]
      104 CALL                             R11 1 1
      105 DUPTABLE                         R12 K29 [{["isActive"] = True}]
      106 MOVE                             R14 R9
      107 CALL                             R14 0 1
      108 JUMPIFNOT                        R14 ; [+2]
      109 DUPTABLE                         R13 K35 [{["description"] = True, ["genre"] = True, ["name"] = True, ["playableDevices"] = True, ["audiences"] = True}]
      110 JUMP                             ; [+1]
      111 DUPTABLE                         R13 K37 [{["description"] = True, ["genre"] = True, ["name"] = True, ["playableDevices"] = True, ["isFriendsOnly"] = True}]
      112 MOVE                             R14 R6
      113 CALL                             R14 0 1
      114 JUMPIFNOT                        R14 ; [+3]
      115 LOADB                            R14 1
      116 SETTABLEKS                       R14 R13 K38 ["OptInLocations"]
      118 DUPCLOSURE                       R14 K39 [PROTO_0]
      119 CAPTURE                          VAL R12
      120 DUPCLOSURE                       R15 K40 [PROTO_1]
      121 CAPTURE                          VAL R13
      122 DUPCLOSURE                       R16 K41 [PROTO_2]
      123 DUPCLOSURE                       R17 K42 [PROTO_7]
      124 CAPTURE                          VAL R13
      125 CAPTURE                          VAL R12
      126 CAPTURE                          VAL R0
      127 CAPTURE                          VAL R6
      128 CAPTURE                          VAL R2
      129 CAPTURE                          VAL R5
      130 CAPTURE                          VAL R16
      131 CAPTURE                          VAL R9
      132 CAPTURE                          VAL R11
      133 CAPTURE                          VAL R7
      134 CAPTURE                          VAL R10
      135 CAPTURE                          VAL R8
      136 CAPTURE                          VAL R3
      137 DUPTABLE                         R18 K44 [{"saveAll"}]
      138 SETTABLEKS                       R17 R18 K43 ["saveAll"]
      140 RETURN                           R18 1
