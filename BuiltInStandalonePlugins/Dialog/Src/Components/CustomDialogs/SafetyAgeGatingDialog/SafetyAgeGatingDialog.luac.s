PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["fromAction"]
        4 LOADK                            R3 K1 ["TeamCreateCollaborators"]
        5 LOADK                            R4 K2 ["Toggle"]
        6 CALL                             R2 2 -1
        7 NAMECALL                         R0 R0 K3 ["ActivateAsync"]
        9 CALL                             R0 -1 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["BaseUrl"]
        4 GETUPVAL                         R4 2
        5 CALL                             R4 0 1
        6 CONCAT                           R2 R3 R4
        7 NAMECALL                         R0 R0 K1 ["OpenBrowserWindow"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["BaseUrl"]
        4 GETUPVAL                         R4 2
        5 CALL                             R4 0 1
        6 CONCAT                           R2 R3 R4
        7 NAMECALL                         R0 R0 K1 ["OpenBrowserWindow"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 CALL                             R2 0 -1
        3 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_5:
        0 LOADNIL                          R6
        1 LOADNIL                          R7
        2 LOADNIL                          R8
        3 LOADNIL                          R9
        4 LOADNIL                          R10
        5 LOADB                            R11 0
        6 NEWCLOSURE                       R12 P0
        7 CAPTURE                          VAL R2
        8 CAPTURE                          UPVAL U0
        9 NEWCLOSURE                       R13 P1
       10 CAPTURE                          VAL R3
       11 CAPTURE                          VAL R5
       12 CAPTURE                          UPVAL U1
       13 NEWCLOSURE                       R14 P2
       14 CAPTURE                          VAL R3
       15 CAPTURE                          VAL R5
       16 CAPTURE                          UPVAL U2
       17 NEWCLOSURE                       R15 P3
       18 CAPTURE                          VAL R3
       19 CAPTURE                          UPVAL U3
       20 GETUPVAL                         R16 4
       21 GETTABLEKS                       R16 R16 K0 ["NOTAGEVERIFIED"]
       23 JUMPIFNOTEQ                      R0 R16 ; [+37]
       25 LOADK                            R18 K1 ["SafetyAgeCheckDialog"]
       26 LOADK                            R19 K2 ["Title"]
       27 NAMECALL                         R16 R1 K3 ["getText"]
       29 CALL                             R16 3 1
       30 MOVE                             R6 R16
       31 LOADK                            R18 K1 ["SafetyAgeCheckDialog"]
       32 LOADK                            R19 K4 ["Body"]
       33 NAMECALL                         R16 R1 K3 ["getText"]
       35 CALL                             R16 3 1
       36 MOVE                             R7 R16
       37 DUPTABLE                         R16 K7 [{"label", "onActivated"}]
       38 LOADK                            R19 K8 ["DialogButton"]
       39 LOADK                            R20 K9 ["Continue"]
       40 NAMECALL                         R17 R1 K3 ["getText"]
       42 CALL                             R17 3 1
       43 SETTABLEKS                       R17 R16 K5 ["label"]
       45 SETTABLEKS                       R13 R16 K6 ["onActivated"]
       47 MOVE                             R8 R16
       48 DUPTABLE                         R16 K7 [{"label", "onActivated"}]
       49 LOADK                            R19 K8 ["DialogButton"]
       50 LOADK                            R20 K10 ["Cancel"]
       51 NAMECALL                         R17 R1 K3 ["getText"]
       53 CALL                             R17 3 1
       54 SETTABLEKS                       R17 R16 K5 ["label"]
       56 SETTABLEKS                       R14 R16 K6 ["onActivated"]
       58 MOVE                             R9 R16
       59 LOADK                            R10 K11 ["Critical"]
       60 JUMP                             ; [+284]
       61 GETUPVAL                         R16 4
       62 GETTABLEKS                       R16 R16 K12 ["OUTSIDEAGEBUCKET"]
       64 JUMPIFEQ                         R0 R16 ; [+11]
       66 GETUPVAL                         R16 4
       67 GETTABLEKS                       R16 R16 K13 ["OUTSIDEAGEBUCKETTCPC"]
       69 JUMPIFEQ                         R0 R16 ; [+6]
       71 GETUPVAL                         R16 4
       72 GETTABLEKS                       R16 R16 K14 ["OUTSIDEOWNERAGEBUCKET"]
       74 JUMPIFNOTEQ                      R0 R16 ; [+39]
       76 LOADK                            R18 K15 ["SafetyEstablishTrustDialog"]
       77 LOADK                            R19 K2 ["Title"]
       78 NAMECALL                         R16 R1 K3 ["getText"]
       80 CALL                             R16 3 1
       81 MOVE                             R6 R16
       82 LOADK                            R18 K15 ["SafetyEstablishTrustDialog"]
       83 LOADK                            R19 K4 ["Body"]
       84 NAMECALL                         R16 R1 K3 ["getText"]
       86 CALL                             R16 3 1
       87 MOVE                             R7 R16
       88 DUPTABLE                         R16 K7 [{"label", "onActivated"}]
       89 LOADK                            R19 K8 ["DialogButton"]
       90 LOADK                            R20 K16 ["Add"]
       91 NAMECALL                         R17 R1 K3 ["getText"]
       93 CALL                             R17 3 1
       94 SETTABLEKS                       R17 R16 K5 ["label"]
       96 SETTABLEKS                       R12 R16 K6 ["onActivated"]
       98 MOVE                             R8 R16
       99 DUPTABLE                         R16 K7 [{"label", "onActivated"}]
      100 LOADK                            R19 K8 ["DialogButton"]
      101 LOADK                            R20 K17 ["GetPermission"]
      102 NAMECALL                         R17 R1 K3 ["getText"]
      104 CALL                             R17 3 1
      105 SETTABLEKS                       R17 R16 K5 ["label"]
      107 SETTABLEKS                       R14 R16 K6 ["onActivated"]
      109 MOVE                             R9 R16
      110 GETUPVAL                         R16 5
      111 CALL                             R16 0 1
      112 MOVE                             R11 R16
      113 JUMP                             ; [+231]
      114 GETUPVAL                         R16 4
      115 GETTABLEKS                       R16 R16 K18 ["OTHERCOLLABORATORSETTINGSPREVENTTRUST"]
      117 JUMPIFNOTEQ                      R0 R16 ; [+34]
      119 LOADK                            R18 K19 ["SafetyOtherCollaboratorsPreventTrustDialog"]
      120 LOADK                            R19 K2 ["Title"]
      121 NAMECALL                         R16 R1 K3 ["getText"]
      123 CALL                             R16 3 1
      124 MOVE                             R6 R16
      125 LOADK                            R18 K19 ["SafetyOtherCollaboratorsPreventTrustDialog"]
      126 LOADK                            R19 K4 ["Body"]
      127 NAMECALL                         R16 R1 K3 ["getText"]
      129 CALL                             R16 3 1
      130 MOVE                             R7 R16
      131 GETUPVAL                         R16 5
      132 CALL                             R16 0 1
      133 JUMPIFNOT                        R16 ; [+13]
      134 DUPTABLE                         R16 K7 [{"label", "onActivated"}]
      135 LOADK                            R19 K8 ["DialogButton"]
      136 LOADK                            R20 K20 ["Close"]
      137 NAMECALL                         R17 R1 K3 ["getText"]
      139 CALL                             R17 3 1
      140 SETTABLEKS                       R17 R16 K5 ["label"]
      142 LOADNIL                          R17
      143 SETTABLEKS                       R17 R16 K6 ["onActivated"]
      145 MOVE                             R8 R16
      146 JUMP                             ; [+1]
      147 LOADNIL                          R8
      148 GETUPVAL                         R16 5
      149 CALL                             R16 0 1
      150 MOVE                             R11 R16
      151 JUMP                             ; [+193]
      152 GETUPVAL                         R16 4
      153 GETTABLEKS                       R16 R16 K21 ["TOOMANYCOLLABORATORS"]
      155 JUMPIFNOTEQ                      R0 R16 ; [+28]
      157 LOADK                            R18 K22 ["SafetyGroupTooLargeDialog"]
      158 LOADK                            R19 K2 ["Title"]
      159 NAMECALL                         R16 R1 K3 ["getText"]
      161 CALL                             R16 3 1
      162 MOVE                             R6 R16
      163 LOADK                            R18 K22 ["SafetyGroupTooLargeDialog"]
      164 LOADK                            R19 K4 ["Body"]
      165 NAMECALL                         R16 R1 K3 ["getText"]
      167 CALL                             R16 3 1
      168 MOVE                             R7 R16
      169 DUPTABLE                         R16 K7 [{"label", "onActivated"}]
      170 LOADK                            R19 K8 ["DialogButton"]
      171 LOADK                            R20 K23 ["AskParent"]
      172 NAMECALL                         R17 R1 K3 ["getText"]
      174 CALL                             R17 3 1
      175 SETTABLEKS                       R17 R16 K5 ["label"]
      177 SETTABLEKS                       R14 R16 K6 ["onActivated"]
      179 MOVE                             R8 R16
      180 GETUPVAL                         R16 5
      181 CALL                             R16 0 1
      182 MOVE                             R11 R16
      183 JUMP                             ; [+161]
      184 GETUPVAL                         R16 4
      185 GETTABLEKS                       R16 R16 K24 ["PARENTALCONSENTBLOCK"]
      187 JUMPIFNOTEQ                      R0 R16 ; [+28]
      189 LOADK                            R18 K25 ["SafetyParentalConsentBlockedDialog"]
      190 LOADK                            R19 K2 ["Title"]
      191 NAMECALL                         R16 R1 K3 ["getText"]
      193 CALL                             R16 3 1
      194 MOVE                             R6 R16
      195 LOADK                            R18 K25 ["SafetyParentalConsentBlockedDialog"]
      196 LOADK                            R19 K4 ["Body"]
      197 NAMECALL                         R16 R1 K3 ["getText"]
      199 CALL                             R16 3 1
      200 MOVE                             R7 R16
      201 DUPTABLE                         R16 K7 [{"label", "onActivated"}]
      202 LOADK                            R19 K8 ["DialogButton"]
      203 LOADK                            R20 K26 ["AskAgain"]
      204 NAMECALL                         R17 R1 K3 ["getText"]
      206 CALL                             R17 3 1
      207 SETTABLEKS                       R17 R16 K5 ["label"]
      209 SETTABLEKS                       R14 R16 K6 ["onActivated"]
      211 MOVE                             R8 R16
      212 GETUPVAL                         R16 5
      213 CALL                             R16 0 1
      214 MOVE                             R11 R16
      215 JUMP                             ; [+129]
      216 GETUPVAL                         R16 4
      217 GETTABLEKS                       R16 R16 K27 ["OWNERNOTAGEVERIFIED"]
      219 JUMPIFNOTEQ                      R0 R16 ; [+29]
      221 LOADK                            R18 K28 ["SafetyOwnerAgeCheckDialog"]
      222 LOADK                            R19 K2 ["Title"]
      223 NAMECALL                         R16 R1 K3 ["getText"]
      225 CALL                             R16 3 1
      226 MOVE                             R6 R16
      227 LOADK                            R18 K28 ["SafetyOwnerAgeCheckDialog"]
      228 LOADK                            R19 K4 ["Body"]
      229 NAMECALL                         R16 R1 K3 ["getText"]
      231 CALL                             R16 3 1
      232 MOVE                             R7 R16
      233 DUPTABLE                         R16 K7 [{"label", "onActivated"}]
      234 LOADK                            R19 K8 ["DialogButton"]
      235 LOADK                            R20 K20 ["Close"]
      236 NAMECALL                         R17 R1 K3 ["getText"]
      238 CALL                             R17 3 1
      239 SETTABLEKS                       R17 R16 K5 ["label"]
      241 LOADNIL                          R17
      242 SETTABLEKS                       R17 R16 K6 ["onActivated"]
      244 MOVE                             R8 R16
      245 GETUPVAL                         R16 5
      246 CALL                             R16 0 1
      247 MOVE                             R11 R16
      248 JUMP                             ; [+96]
      249 GETUPVAL                         R16 4
      250 GETTABLEKS                       R16 R16 K29 ["OCCRETRIESEXHAUSTED"]
      252 JUMPIFNOTEQ                      R0 R16 ; [+26]
      254 LOADK                            R18 K30 ["SafetyServerErrorDialog"]
      255 LOADK                            R19 K2 ["Title"]
      256 NAMECALL                         R16 R1 K3 ["getText"]
      258 CALL                             R16 3 1
      259 MOVE                             R6 R16
      260 LOADK                            R18 K30 ["SafetyServerErrorDialog"]
      261 LOADK                            R19 K4 ["Body"]
      262 NAMECALL                         R16 R1 K3 ["getText"]
      264 CALL                             R16 3 1
      265 MOVE                             R7 R16
      266 DUPTABLE                         R16 K7 [{"label", "onActivated"}]
      267 LOADK                            R19 K8 ["DialogButton"]
      268 LOADK                            R20 K31 ["OK"]
      269 NAMECALL                         R17 R1 K3 ["getText"]
      271 CALL                             R17 3 1
      272 SETTABLEKS                       R17 R16 K5 ["label"]
      274 LOADNIL                          R17
      275 SETTABLEKS                       R17 R16 K6 ["onActivated"]
      277 MOVE                             R8 R16
      278 JUMP                             ; [+66]
      279 GETUPVAL                         R16 4
      280 GETTABLEKS                       R16 R16 K32 ["AGEVERIFICATIONCOUNTRYBLOCKED"]
      282 JUMPIFNOTEQ                      R0 R16 ; [+38]
      284 LOADK                            R18 K33 ["SafetyCountryAgeCheckBlocked"]
      285 LOADK                            R19 K2 ["Title"]
      286 NAMECALL                         R16 R1 K3 ["getText"]
      288 CALL                             R16 3 1
      289 MOVE                             R6 R16
      290 LOADK                            R18 K33 ["SafetyCountryAgeCheckBlocked"]
      291 LOADK                            R19 K4 ["Body"]
      292 NAMECALL                         R16 R1 K3 ["getText"]
      294 CALL                             R16 3 1
      295 MOVE                             R7 R16
      296 DUPTABLE                         R16 K7 [{"label", "onActivated"}]
      297 LOADK                            R19 K8 ["DialogButton"]
      298 LOADK                            R20 K31 ["OK"]
      299 NAMECALL                         R17 R1 K3 ["getText"]
      301 CALL                             R17 3 1
      302 SETTABLEKS                       R17 R16 K5 ["label"]
      304 LOADNIL                          R17
      305 SETTABLEKS                       R17 R16 K6 ["onActivated"]
      307 MOVE                             R8 R16
      308 DUPTABLE                         R16 K7 [{"label", "onActivated"}]
      309 LOADK                            R19 K8 ["DialogButton"]
      310 LOADK                            R20 K34 ["ViewDetails"]
      311 NAMECALL                         R17 R1 K3 ["getText"]
      313 CALL                             R17 3 1
      314 SETTABLEKS                       R17 R16 K5 ["label"]
      316 SETTABLEKS                       R15 R16 K6 ["onActivated"]
      318 MOVE                             R9 R16
      319 LOADK                            R10 K35 ["Warning"]
      320 JUMP                             ; [+24]
      321 LOADK                            R18 K36 ["SafetyDefaultBlockedDialog"]
      322 LOADK                            R19 K2 ["Title"]
      323 NAMECALL                         R16 R1 K3 ["getText"]
      325 CALL                             R16 3 1
      326 MOVE                             R6 R16
      327 LOADK                            R18 K36 ["SafetyDefaultBlockedDialog"]
      328 LOADK                            R19 K4 ["Body"]
      329 NAMECALL                         R16 R1 K3 ["getText"]
      331 CALL                             R16 3 1
      332 MOVE                             R7 R16
      333 DUPTABLE                         R16 K7 [{"label", "onActivated"}]
      334 LOADK                            R19 K8 ["DialogButton"]
      335 LOADK                            R20 K31 ["OK"]
      336 NAMECALL                         R17 R1 K3 ["getText"]
      338 CALL                             R17 3 1
      339 SETTABLEKS                       R17 R16 K5 ["label"]
      341 LOADNIL                          R17
      342 SETTABLEKS                       R17 R16 K6 ["onActivated"]
      344 MOVE                             R8 R16
      345 MOVE                             R16 R10
      346 MOVE                             R17 R6
      347 MOVE                             R18 R7
      348 MOVE                             R19 R8
      349 MOVE                             R20 R9
      350 MOVE                             R21 R11
      351 RETURN                           R16 6

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Actions"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 1
        5 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onResolved"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onActivated"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["onActivated"]
        7 CALL                             R0 0 0
        8 GETUPVAL                         R0 1
        9 LOADK                            R1 K1 ["primary"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onActivated"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["onActivated"]
        7 CALL                             R0 0 0
        8 GETUPVAL                         R0 1
        9 LOADK                            R1 K1 ["secondary"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["input"]
        4 GETTABLEKS                       R2 R2 K1 ["placeId"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K0 ["input"]
        9 GETTABLEKS                       R3 R3 K2 ["universeId"]
       11 LOADB                            R4 0
       12 LOADB                            R5 1
       13 NAMECALL                         R0 R0 K3 ["openPlace"]
       15 CALL                             R0 5 0
       16 GETUPVAL                         R0 2
       17 LOADK                            R1 K4 ["tertiary"]
       18 CALL                             R0 1 0
       19 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 NAMECALL                         R2 R2 K0 ["use"]
       10 CALL                             R2 1 1
       11 GETUPVAL                         R3 2
       12 CALL                             R3 0 1
       13 GETTABLEKS                       R5 R0 K2 ["input"]
       15 GETTABLEKS                       R5 R5 K3 ["BrowserService"]
       17 JUMPIFNOT                        R5 ; [+5]
       18 GETTABLEKS                       R4 R0 K2 ["input"]
       20 GETTABLEKS                       R4 R4 K3 ["BrowserService"]
       22 JUMP                             ; [+6]
       23 GETIMPORT                        R4 K5 [game]
       25 LOADK                            R6 K3 ["BrowserService"]
       26 NAMECALL                         R4 R4 K6 ["GetService"]
       28 CALL                             R4 2 1
       29 GETTABLEKS                       R6 R0 K2 ["input"]
       31 GETTABLEKS                       R6 R6 K7 ["StartPageService"]
       33 JUMPIFNOT                        R6 ; [+5]
       34 GETTABLEKS                       R5 R0 K2 ["input"]
       36 GETTABLEKS                       R5 R5 K7 ["StartPageService"]
       38 JUMP                             ; [+6]
       39 GETIMPORT                        R5 K5 [game]
       41 LOADK                            R7 K7 ["StartPageService"]
       42 NAMECALL                         R5 R5 K6 ["GetService"]
       44 CALL                             R5 2 1
       45 GETTABLEKS                       R7 R0 K2 ["input"]
       47 GETTABLEKS                       R7 R7 K8 ["ContentProvider"]
       49 JUMPIFNOT                        R7 ; [+5]
       50 GETTABLEKS                       R6 R0 K2 ["input"]
       52 GETTABLEKS                       R6 R6 K8 ["ContentProvider"]
       54 JUMP                             ; [+6]
       55 GETIMPORT                        R6 K5 [game]
       57 LOADK                            R8 K8 ["ContentProvider"]
       58 NAMECALL                         R6 R6 K6 ["GetService"]
       60 CALL                             R6 2 1
       61 GETUPVAL                         R7 3
       62 GETTABLEKS                       R7 R7 K9 ["useState"]
       64 LOADB                            R8 0
       65 CALL                             R7 1 2
       66 GETTABLEKS                       R9 R0 K2 ["input"]
       68 GETTABLEKS                       R9 R9 K10 ["errorReason"]
       70 GETUPVAL                         R10 3
       71 GETTABLEKS                       R10 R10 K11 ["useMemo"]
       73 NEWCLOSURE                       R11 P0
       74 CAPTURE                          VAL R1
       75 NEWTABLE                         R12 0 1
       77 MOVE                             R13 R1
       78 SETLIST                          R12 R13 1 [1]
       80 CALL                             R10 2 1
       81 GETUPVAL                         R11 3
       82 GETTABLEKS                       R11 R11 K12 ["useCallback"]
       84 NEWCLOSURE                       R12 P1
       85 CAPTURE                          VAL R0
       86 NEWTABLE                         R13 0 1
       88 GETTABLEKS                       R14 R0 K13 ["onResolved"]
       90 SETLIST                          R13 R14 1 [1]
       92 CALL                             R11 2 1
       93 GETUPVAL                         R12 4
       94 MOVE                             R13 R9
       95 MOVE                             R14 R2
       96 MOVE                             R15 R10
       97 MOVE                             R16 R4
       98 MOVE                             R17 R5
       99 MOVE                             R18 R6
      100 CALL                             R12 6 6
      101 GETUPVAL                         R18 5
      102 GETUPVAL                         R19 6
      103 DUPTABLE                         R20 K22 [{"uri", "type", "title", "description", "primaryAction", "secondaryAction", "tertiaryAction", "showIndeterminateProgressIndicator"}]
      104 GETTABLEKS                       R21 R0 K14 ["uri"]
      106 SETTABLEKS                       R21 R20 K14 ["uri"]
      108 JUMPIFEQKNIL                     R12 ; [+3]
      110 MOVE                             R21 R12
      111 JUMP                             ; [+1]
      112 LOADK                            R21 K23 ["Default"]
      113 SETTABLEKS                       R21 R20 K15 ["type"]
      115 SETTABLEKS                       R13 R20 K16 ["title"]
      117 SETTABLEKS                       R14 R20 K17 ["description"]
      119 JUMPIFEQKNIL                     R15 ; [+26]
      121 DUPTABLE                         R21 K26 [{"uri", "text", "onActivated"}]
      122 GETUPVAL                         R22 7
      123 GETTABLEKS                       R22 R22 K27 ["child"]
      125 GETTABLEKS                       R23 R0 K14 ["uri"]
      127 LOADK                            R25 K28 ["%*/Primary"]
      128 MOVE                             R27 R9
      129 NAMECALL                         R25 R25 K29 ["format"]
      131 CALL                             R25 2 1
      132 MOVE                             R24 R25
      133 CALL                             R22 2 1
      134 SETTABLEKS                       R22 R21 K14 ["uri"]
      136 GETTABLEKS                       R22 R15 K30 ["label"]
      138 SETTABLEKS                       R22 R21 K24 ["text"]
      140 NEWCLOSURE                       R22 P2
      141 CAPTURE                          VAL R15
      142 CAPTURE                          VAL R11
      143 SETTABLEKS                       R22 R21 K25 ["onActivated"]
      145 JUMP                             ; [+1]
      146 LOADNIL                          R21
      147 SETTABLEKS                       R21 R20 K18 ["primaryAction"]
      149 JUMPIFEQKNIL                     R16 ; [+26]
      151 DUPTABLE                         R21 K26 [{"uri", "text", "onActivated"}]
      152 GETUPVAL                         R22 7
      153 GETTABLEKS                       R22 R22 K27 ["child"]
      155 GETTABLEKS                       R23 R0 K14 ["uri"]
      157 LOADK                            R25 K31 ["%*/Secondary"]
      158 MOVE                             R27 R9
      159 NAMECALL                         R25 R25 K29 ["format"]
      161 CALL                             R25 2 1
      162 MOVE                             R24 R25
      163 CALL                             R22 2 1
      164 SETTABLEKS                       R22 R21 K14 ["uri"]
      166 GETTABLEKS                       R22 R16 K30 ["label"]
      168 SETTABLEKS                       R22 R21 K24 ["text"]
      170 NEWCLOSURE                       R22 P3
      171 CAPTURE                          VAL R16
      172 CAPTURE                          VAL R11
      173 SETTABLEKS                       R22 R21 K25 ["onActivated"]
      175 JUMP                             ; [+1]
      176 LOADNIL                          R21
      177 SETTABLEKS                       R21 R20 K19 ["secondaryAction"]
      179 GETUPVAL                         R22 8
      180 CALL                             R22 0 1
      181 JUMPIFNOT                        R22 ; [+33]
      182 JUMPIFNOT                        R17 ; [+32]
      183 DUPTABLE                         R21 K33 [{"uri", "text", "disabled", "onActivated"}]
      184 GETUPVAL                         R22 7
      185 GETTABLEKS                       R22 R22 K27 ["child"]
      187 GETTABLEKS                       R23 R0 K14 ["uri"]
      189 LOADK                            R25 K34 ["%*/Tertiary"]
      190 MOVE                             R27 R9
      191 NAMECALL                         R25 R25 K29 ["format"]
      193 CALL                             R25 2 1
      194 MOVE                             R24 R25
      195 CALL                             R22 2 1
      196 SETTABLEKS                       R22 R21 K14 ["uri"]
      198 LOADK                            R24 K35 ["DialogButton"]
      199 LOADK                            R25 K36 ["RemindMeLater"]
      200 NAMECALL                         R22 R2 K37 ["getText"]
      202 CALL                             R22 3 1
      203 SETTABLEKS                       R22 R21 K24 ["text"]
      205 NOT                              R22 R7
      206 SETTABLEKS                       R22 R21 K32 ["disabled"]
      208 NEWCLOSURE                       R22 P4
      209 CAPTURE                          VAL R5
      210 CAPTURE                          VAL R0
      211 CAPTURE                          VAL R11
      212 SETTABLEKS                       R22 R21 K25 ["onActivated"]
      214 JUMP                             ; [+1]
      215 LOADNIL                          R21
      216 SETTABLEKS                       R21 R20 K20 ["tertiaryAction"]
      218 LOADB                            R21 0
      219 SETTABLEKS                       R21 R20 K21 ["showIndeterminateProgressIndicator"]
      221 DUPTABLE                         R21 K39 [{"Checkbox"}]
      222 GETUPVAL                         R23 8
      223 CALL                             R23 0 1
      224 JUMPIFNOT                        R23 ; [+32]
      225 JUMPIFNOT                        R17 ; [+31]
      226 GETUPVAL                         R22 5
      227 GETUPVAL                         R23 9
      228 DUPTABLE                         R24 K44 [{"label", "isChecked", "onActivated", "size", "testId", "LayoutOrder"}]
      229 LOADK                            R27 K45 ["Safety"]
      230 LOADK                            R28 K46 ["EnforcementDateAcknowledgement"]
      231 NAMECALL                         R25 R2 K37 ["getText"]
      233 CALL                             R25 3 1
      234 SETTABLEKS                       R25 R24 K30 ["label"]
      236 SETTABLEKS                       R7 R24 K40 ["isChecked"]
      238 NEWCLOSURE                       R25 P5
      239 CAPTURE                          VAL R8
      240 CAPTURE                          VAL R7
      241 SETTABLEKS                       R25 R24 K25 ["onActivated"]
      243 GETUPVAL                         R25 10
      244 GETTABLEKS                       R25 R25 K47 ["Small"]
      246 SETTABLEKS                       R25 R24 K41 ["size"]
      248 LOADK                            R25 K48 ["--safety-dialog-checkbox"]
      249 SETTABLEKS                       R25 R24 K42 ["testId"]
      251 MOVE                             R25 R3
      252 CALL                             R25 0 1
      253 SETTABLEKS                       R25 R24 K43 ["LayoutOrder"]
      255 CALL                             R22 2 1
      256 JUMP                             ; [+1]
      257 LOADNIL                          R22
      258 SETTABLEKS                       R22 R21 K38 ["Checkbox"]
      260 CALL                             R18 3 -1
      261 RETURN                           R18 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K2 ["Dialog"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K8 ["Packages"]
       20 GETTABLEKS                       R3 R3 K9 ["Foundation"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Packages"]
       27 GETTABLEKS                       R4 R4 K10 ["Framework"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Packages"]
       34 GETTABLEKS                       R5 R5 K11 ["React"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K8 ["Packages"]
       41 GETTABLEKS                       R6 R6 K12 ["StudioFoundation"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K6 ["Src"]
       48 GETTABLEKS                       R7 R7 K13 ["Types"]
       50 CALL                             R6 1 1
       51 GETTABLEKS                       R7 R3 K14 ["ContextServices"]
       53 GETTABLEKS                       R7 R7 K15 ["Plugin"]
       55 GETTABLEKS                       R8 R3 K14 ["ContextServices"]
       57 GETTABLEKS                       R8 R8 K16 ["Localization"]
       59 GETTABLEKS                       R9 R5 K17 ["Util"]
       61 GETTABLEKS                       R9 R9 K18 ["StudioUri"]
       63 GETTABLEKS                       R10 R3 K17 ["Util"]
       65 GETTABLEKS                       R10 R10 K19 ["counter"]
       67 GETTABLEKS                       R11 R4 K20 ["createElement"]
       69 GETTABLEKS                       R12 R2 K21 ["Checkbox"]
       71 GETTABLEKS                       R13 R2 K22 ["Enums"]
       73 GETTABLEKS                       R13 R13 K23 ["InputSize"]
       75 GETIMPORT                        R14 K5 [require]
       77 GETTABLEKS                       R15 R0 K6 ["Src"]
       79 GETTABLEKS                       R15 R15 K24 ["Flags"]
       81 GETTABLEKS                       R15 R15 K25 ["getFFlagStudioSafetyCustomDialog"]
       83 CALL                             R14 1 1
       84 GETIMPORT                        R15 K5 [require]
       86 GETTABLEKS                       R16 R0 K6 ["Src"]
       88 GETTABLEKS                       R16 R16 K24 ["Flags"]
       90 GETTABLEKS                       R16 R16 K26 ["getFFlagStudioSafetyNonBlockingDialogs"]
       92 CALL                             R15 1 1
       93 GETIMPORT                        R16 K5 [require]
       95 GETTABLEKS                       R17 R0 K6 ["Src"]
       97 GETTABLEKS                       R17 R17 K24 ["Flags"]
       99 GETTABLEKS                       R17 R17 K27 ["getFStringParentalControlsStudioCollabSettingUrlPath"]
      101 CALL                             R16 1 1
      102 GETIMPORT                        R17 K5 [require]
      104 GETTABLEKS                       R18 R0 K6 ["Src"]
      106 GETTABLEKS                       R18 R18 K24 ["Flags"]
      108 GETTABLEKS                       R18 R18 K28 ["getFStringStudioRestrictedCountryDetailsLink"]
      110 CALL                             R17 1 1
      111 GETIMPORT                        R18 K5 [require]
      113 GETTABLEKS                       R19 R0 K6 ["Src"]
      115 GETTABLEKS                       R19 R19 K24 ["Flags"]
      117 GETTABLEKS                       R19 R19 K29 ["getFStringStudioSafetyVerifyAgeUrlPath"]
      119 CALL                             R18 1 1
      120 DUPTABLE                         R19 K43 [{"INVALID", "NOTAGEVERIFIED", "OUTSIDEAGEBUCKET", "PCBLOCK", "OUTSIDEOWNERAGEBUCKET", "TOOMANYCOLLABORATORS", "OCCRETRIESEXHAUSTED", "PARENTALCONSENTBLOCK", "ERROR", "OWNERNOTAGEVERIFIED", "OUTSIDEAGEBUCKETTCPC", "OTHERCOLLABORATORSETTINGSPREVENTTRUST", "AGEVERIFICATIONCOUNTRYBLOCKED"}]
      121 LOADK                            R20 K44 ["Invalid"]
      122 SETTABLEKS                       R20 R19 K30 ["INVALID"]
      124 LOADK                            R20 K45 ["NotAgeVerified"]
      125 SETTABLEKS                       R20 R19 K31 ["NOTAGEVERIFIED"]
      127 LOADK                            R20 K46 ["OutsideAgeBucket"]
      128 SETTABLEKS                       R20 R19 K32 ["OUTSIDEAGEBUCKET"]
      130 LOADK                            R20 K47 ["PcBlock"]
      131 SETTABLEKS                       R20 R19 K33 ["PCBLOCK"]
      133 LOADK                            R20 K48 ["OutsideOwnerAgeBucket"]
      134 SETTABLEKS                       R20 R19 K34 ["OUTSIDEOWNERAGEBUCKET"]
      136 LOADK                            R20 K49 ["TooManyCollaborators"]
      137 SETTABLEKS                       R20 R19 K35 ["TOOMANYCOLLABORATORS"]
      139 LOADK                            R20 K50 ["OccRetriesExhausted"]
      140 SETTABLEKS                       R20 R19 K36 ["OCCRETRIESEXHAUSTED"]
      142 LOADK                            R20 K51 ["ParentalConsentBlock"]
      143 SETTABLEKS                       R20 R19 K37 ["PARENTALCONSENTBLOCK"]
      145 LOADK                            R20 K52 ["Error"]
      146 SETTABLEKS                       R20 R19 K38 ["ERROR"]
      148 LOADK                            R20 K53 ["OwnerNotAgeVerified"]
      149 SETTABLEKS                       R20 R19 K39 ["OWNERNOTAGEVERIFIED"]
      151 LOADK                            R20 K54 ["OutsideAgeBucketTcPc"]
      152 SETTABLEKS                       R20 R19 K40 ["OUTSIDEAGEBUCKETTCPC"]
      154 LOADK                            R20 K55 ["OtherCollaboratorSettingsPreventTrust"]
      155 SETTABLEKS                       R20 R19 K41 ["OTHERCOLLABORATORSETTINGSPREVENTTRUST"]
      157 LOADK                            R20 K56 ["AgeVerificationCountryBlocked"]
      158 SETTABLEKS                       R20 R19 K42 ["AGEVERIFICATIONCOUNTRYBLOCKED"]
      160 DUPCLOSURE                       R20 K57 [PROTO_5]
      161 CAPTURE                          VAL R9
      162 CAPTURE                          VAL R18
      163 CAPTURE                          VAL R16
      164 CAPTURE                          VAL R17
      165 CAPTURE                          VAL R19
      166 CAPTURE                          VAL R15
      167 DUPCLOSURE                       R21 K58 [PROTO_12]
      168 CAPTURE                          VAL R7
      169 CAPTURE                          VAL R8
      170 CAPTURE                          VAL R10
      171 CAPTURE                          VAL R4
      172 CAPTURE                          VAL R20
      173 CAPTURE                          VAL R11
      174 CAPTURE                          VAL R1
      175 CAPTURE                          VAL R9
      176 CAPTURE                          VAL R15
      177 CAPTURE                          VAL R12
      178 CAPTURE                          VAL R13
      179 MOVE                             R23 R14
      180 CALL                             R23 0 1
      181 JUMPIFNOT                        R23 ; [+18]
      182 GETIMPORT                        R22 K61 [table.freeze]
      184 DUPTABLE                         R23 K64 [{"uri", "component"}]
      185 GETTABLEKS                       R24 R9 K65 ["fromWidget"]
      187 LOADK                            R25 K66 ["Safety"]
      188 LOADK                            R26 K67 ["AgeGatingDialog"]
      189 CALL                             R24 2 1
      190 SETTABLEKS                       R24 R23 K62 ["uri"]
      192 GETTABLEKS                       R24 R4 K68 ["memo"]
      194 MOVE                             R25 R21
      195 CALL                             R24 1 1
      196 SETTABLEKS                       R24 R23 K63 ["component"]
      198 CALL                             R22 1 1
      199 RETURN                           R22 1
      200 LOADNIL                          R22
      201 RETURN                           R22 1
