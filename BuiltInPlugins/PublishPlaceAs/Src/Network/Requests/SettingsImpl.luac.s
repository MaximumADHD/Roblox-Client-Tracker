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
       28 GETUPVAL                         R8 2
       29 GETTABLEKS                       R10 R0 K2 ["teamCreateEnabled"]
       31 JUMPIFNOT                        R10 ; [+13]
       32 GETUPVAL                         R11 3
       33 CALL                             R11 0 1
       34 JUMPIFNOT                        R11 ; [+9]
       35 GETUPVAL                         R11 4
       36 GETTABLEKS                       R11 R11 K3 ["isFirstPublish"]
       38 MOVE                             R12 R4
       39 GETIMPORT                        R13 K5 [game]
       41 GETTABLEKS                       R13 R13 K6 ["GameId"]
       43 CALL                             R11 2 1
       44 NOT                              R10 R11
       45 GETTABLEKS                       R11 R6 K7 ["name"]
       47 NAMECALL                         R8 R8 K8 ["SetTeamCreateOnPublishInfo"]
       49 CALL                             R8 3 0
       50 GETUPVAL                         R8 2
       51 GETTABLEKS                       R10 R6 K7 ["name"]
       53 GETTABLEKS                       R11 R6 K7 ["name"]
       55 NAMECALL                         R8 R8 K9 ["setUploadNames"]
       57 CALL                             R8 3 0
       58 GETUPVAL                         R8 2
       59 LOADN                            R10 0
       60 LOADN                            R11 0
       61 GETTABLEKS                       R12 R0 K10 ["creatorId"]
       63 MOVE                             R13 R4
       64 LOADNIL                          R14
       65 NAMECALL                         R8 R8 K11 ["publishAs"]
       67 CALL                             R8 6 0
       68 LOADNIL                          R8
       69 LOADNIL                          R9
       70 GETUPVAL                         R10 2
       71 GETTABLEKS                       R10 R10 K12 ["GamePublishFinished"]
       73 NAMECALL                         R10 R10 K13 ["wait"]
       75 CALL                             R10 1 2
       76 MOVE                             R8 R10
       77 MOVE                             R9 R11
       78 JUMPIF                           R8 ; [+1]
       79 RETURN                           R0 0
       80 GETTABLEKS                       R10 R6 K14 ["playableDevices"]
       82 JUMPIFNOT                        R10 ; [+20]
       83 NEWTABLE                         R10 0 0
       85 GETIMPORT                        R11 K1 [pairs]
       87 GETTABLEKS                       R12 R6 K14 ["playableDevices"]
       89 CALL                             R11 1 3
       90 FORGPREP_NEXT                    R11
       91 JUMPIFNOT                        R15 ; [+7]
       92 FASTCALL2                        TABLE_INSERT R10 R14 ; [+5]
       94 MOVE                             R17 R10
       95 MOVE                             R18 R14
       96 GETIMPORT                        R16 K17 [table.insert]
       98 CALL                             R16 2 0
       99 FORGLOOP                         R11 2 ; [-9]
      101 SETTABLEKS                       R10 R6 K14 ["playableDevices"]
      103 GETUPVAL                         R10 5
      104 CALL                             R10 0 1
      105 JUMPIFNOT                        R10 ; [+59]
      106 JUMPIFEQKNIL                     R3 ; [+58]
      108 GETUPVAL                         R10 6
      109 MOVE                             R11 R2
      110 MOVE                             R12 R3
      111 MOVE                             R13 R9
      112 CALL                             R10 3 1
      113 JUMPIFNOTEQKN                    R10 K18 [200] ; [+40]
      115 GETTABLEKS                       R12 R6 K19 ["OptInLocations"]
      117 FASTCALL1                        ASSERT R12 ; [+2]
      118 GETIMPORT                        R11 K21 [assert]
      120 CALL                             R11 1 0
      121 NEWTABLE                         R11 0 0
      123 NEWTABLE                         R12 0 0
      125 GETIMPORT                        R13 K1 [pairs]
      127 GETTABLEKS                       R14 R6 K19 ["OptInLocations"]
      129 CALL                             R13 1 3
      130 FORGPREP_NEXT                    R13
      131 JUMPIFNOT                        R17 ; [+8]
      132 FASTCALL2                        TABLE_INSERT R11 R16 ; [+5]
      134 MOVE                             R19 R11
      135 MOVE                             R20 R16
      136 GETIMPORT                        R18 K17 [table.insert]
      138 CALL                             R18 2 0
      139 JUMP                             ; [+7]
      140 FASTCALL2                        TABLE_INSERT R12 R16 ; [+5]
      142 MOVE                             R19 R12
      143 MOVE                             R20 R16
      144 GETIMPORT                        R18 K17 [table.insert]
      146 CALL                             R18 2 0
      147 FORGLOOP                         R13 2 ; [-17]
      149 SETTABLEKS                       R11 R6 K22 ["optInRegions"]
      151 SETTABLEKS                       R12 R6 K23 ["optOutRegions"]
      153 JUMP                             ; [+8]
      154 GETIMPORT                        R11 K25 [warn]
      156 GETUPVAL                         R14 7
      157 LOADK                            R15 K26 ["EmailSubmitFailure"]
      158 NAMECALL                         R12 R1 K27 ["getText"]
      160 CALL                             R12 3 -1
      161 CALL                             R11 -1 0
      162 LOADNIL                          R11
      163 SETTABLEKS                       R11 R6 K19 ["OptInLocations"]
      165 GETTABLEKS                       R10 R2 K28 ["Develop"]
      167 GETTABLEKS                       R10 R10 K29 ["V2"]
      169 GETTABLEKS                       R10 R10 K30 ["Universes"]
      171 GETTABLEKS                       R10 R10 K31 ["configuration"]
      173 MOVE                             R11 R9
      174 MOVE                             R12 R6
      175 CALL                             R10 2 1
      176 NAMECALL                         R10 R10 K32 ["makeRequest"]
      178 CALL                             R10 1 1
      179 NEWCLOSURE                       R12 P0
      180 CAPTURE                          UPVAL U2
      181 CAPTURE                          VAL R6
      182 NEWCLOSURE                       R13 P1
      183 CAPTURE                          UPVAL U8
      184 CAPTURE                          VAL R1
      185 NAMECALL                         R10 R10 K33 ["andThen"]
      187 CALL                             R10 3 0
      188 GETUPVAL                         R10 9
      189 CALL                             R10 0 1
      190 JUMPIF                           R10 ; [+42]
      191 GETTABLEKS                       R10 R7 K34 ["isActive"]
      193 JUMPIFNOT                        R10 ; [+20]
      194 GETTABLEKS                       R10 R2 K28 ["Develop"]
      196 GETTABLEKS                       R10 R10 K35 ["V1"]
      198 GETTABLEKS                       R10 R10 K30 ["Universes"]
      200 GETTABLEKS                       R10 R10 K36 ["activate"]
      202 MOVE                             R11 R9
      203 CALL                             R10 1 1
      204 NAMECALL                         R10 R10 K32 ["makeRequest"]
      206 CALL                             R10 1 1
      207 NEWCLOSURE                       R12 P2
      208 CAPTURE                          UPVAL U8
      209 CAPTURE                          VAL R1
      210 NAMECALL                         R10 R10 K37 ["catch"]
      212 CALL                             R10 2 0
      213 JUMP                             ; [+19]
      214 GETTABLEKS                       R10 R2 K28 ["Develop"]
      216 GETTABLEKS                       R10 R10 K35 ["V1"]
      218 GETTABLEKS                       R10 R10 K30 ["Universes"]
      220 GETTABLEKS                       R10 R10 K38 ["deactivate"]
      222 MOVE                             R11 R9
      223 CALL                             R10 1 1
      224 NAMECALL                         R10 R10 K32 ["makeRequest"]
      226 CALL                             R10 1 1
      227 NEWCLOSURE                       R12 P3
      228 CAPTURE                          UPVAL U8
      229 CAPTURE                          VAL R1
      230 NAMECALL                         R10 R10 K37 ["catch"]
      232 CALL                             R10 2 0
      233 FASTCALL1                        ASSERT R5 ; [+3]
      234 MOVE                             R11 R5
      235 GETIMPORT                        R10 K21 [assert]
      237 CALL                             R10 1 0
      238 LOADB                            R10 1
      239 GETTABLEKS                       R11 R0 K10 ["creatorId"]
      241 JUMPIFEQKN                       R11 K39 [0] ; [+14]
      243 GETUPVAL                         R11 10
      244 GETTABLEKS                       R11 R11 K40 ["List"]
      246 GETTABLEKS                       R11 R11 K41 ["find"]
      248 MOVE                             R12 R5
      249 GETTABLEKS                       R13 R0 K10 ["creatorId"]
      251 CALL                             R11 2 1
      252 JUMPIFNOTEQKNIL                  R11 ; [+2]
      254 LOADB                            R10 0 +1
      255 LOADB                            R10 1
      256 MOVE                             R11 R10
      257 JUMPIFNOT                        R11 ; [+6]
      258 GETTABLEKS                       R12 R0 K42 ["dataSharingEnabled"]
      260 JUMPIFEQKB                       R12 TRUE ; [+2]
      262 LOADB                            R11 0 +1
      263 LOADB                            R11 1
      264 JUMPIFNOT                        R11 ; [+3]
      265 GETUPVAL                         R12 11
      266 MOVE                             R13 R9
      267 CALL                             R12 1 0
      268 GETUPVAL                         R12 12
      269 LOADK                            R13 K43 ["PublishPlaceAsDataSharing"]
      270 GETUPVAL                         R14 13
      271 CALL                             R14 0 1
      272 LOADK                            R15 K44 ["saveAll"]
      273 DUPTABLE                         R16 K47 [{"dataSharingEnabled", "dataSharingDefault", "isOwner"}]
      274 GETTABLEKS                       R17 R0 K42 ["dataSharingEnabled"]
      276 SETTABLEKS                       R17 R16 K42 ["dataSharingEnabled"]
      278 GETTABLEKS                       R17 R0 K45 ["dataSharingDefault"]
      280 SETTABLEKS                       R17 R16 K45 ["dataSharingDefault"]
      282 SETTABLEKS                       R10 R16 K46 ["isOwner"]
      284 CALL                             R12 4 0
      285 GETTABLEKS                       R13 R0 K10 ["creatorId"]
      287 JUMPIFEQKN                       R13 K39 [0] ; [+4]
      289 GETTABLEKS                       R12 R0 K10 ["creatorId"]
      291 JUMPIF                           R12 ; [+1]
      292 LOADNIL                          R12
      293 GETUPVAL                         R13 14
      294 GETTABLEKS                       R13 R13 K48 ["reportDataSharingToEventIngest"]
      296 GETTABLEKS                       R14 R0 K45 ["dataSharingDefault"]
      298 MOVE                             R15 R11
      299 MOVE                             R16 R9
      300 MOVE                             R17 R12
      301 CALL                             R13 4 0
      302 RETURN                           R0 0

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
       91 GETTABLEKS                       R11 R11 K21 ["Flags"]
       93 GETTABLEKS                       R11 R11 K24 ["getEngineFeatureStudioUnifiedPublishAction"]
       95 CALL                             R10 1 1
       96 GETIMPORT                        R11 K8 [require]
       98 GETTABLEKS                       R12 R1 K9 ["Src"]
      100 GETTABLEKS                       R12 R12 K12 ["Util"]
      102 GETTABLEKS                       R12 R12 K25 ["FirstPublishFlow"]
      104 CALL                             R11 1 1
      105 GETIMPORT                        R12 K8 [require]
      107 GETTABLEKS                       R13 R1 K9 ["Src"]
      109 GETTABLEKS                       R13 R13 K12 ["Util"]
      111 GETTABLEKS                       R13 R13 K16 ["PublishPlaceAsUtilities"]
      113 CALL                             R12 1 1
      114 GETTABLEKS                       R12 R12 K26 ["sendAnalyticsToKibana"]
      116 GETIMPORT                        R13 K8 [require]
      118 GETTABLEKS                       R14 R1 K27 ["Packages"]
      120 GETTABLEKS                       R14 R14 K28 ["Cryo"]
      122 CALL                             R13 1 1
      123 DUPTABLE                         R14 K31 [{["isActive"] = True}]
      124 MOVE                             R16 R9
      125 CALL                             R16 0 1
      126 JUMPIFNOT                        R16 ; [+2]
      127 DUPTABLE                         R15 K37 [{["description"] = True, ["genre"] = True, ["name"] = True, ["playableDevices"] = True, ["audiences"] = True}]
      128 JUMP                             ; [+1]
      129 DUPTABLE                         R15 K39 [{["description"] = True, ["genre"] = True, ["name"] = True, ["playableDevices"] = True, ["isFriendsOnly"] = True}]
      130 MOVE                             R16 R6
      131 CALL                             R16 0 1
      132 JUMPIFNOT                        R16 ; [+3]
      133 LOADB                            R16 1
      134 SETTABLEKS                       R16 R15 K40 ["OptInLocations"]
      136 DUPCLOSURE                       R16 K41 [PROTO_0]
      137 CAPTURE                          VAL R14
      138 DUPCLOSURE                       R17 K42 [PROTO_1]
      139 CAPTURE                          VAL R15
      140 DUPCLOSURE                       R18 K43 [PROTO_2]
      141 DUPCLOSURE                       R19 K44 [PROTO_7]
      142 CAPTURE                          VAL R15
      143 CAPTURE                          VAL R14
      144 CAPTURE                          VAL R0
      145 CAPTURE                          VAL R10
      146 CAPTURE                          VAL R11
      147 CAPTURE                          VAL R6
      148 CAPTURE                          VAL R2
      149 CAPTURE                          VAL R5
      150 CAPTURE                          VAL R18
      151 CAPTURE                          VAL R9
      152 CAPTURE                          VAL R13
      153 CAPTURE                          VAL R7
      154 CAPTURE                          VAL R12
      155 CAPTURE                          VAL R8
      156 CAPTURE                          VAL R3
      157 DUPTABLE                         R20 K46 [{"saveAll"}]
      158 SETTABLEKS                       R19 R20 K45 ["saveAll"]
      160 RETURN                           R20 1
