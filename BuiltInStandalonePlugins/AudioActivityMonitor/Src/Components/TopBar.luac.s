PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R2 R0 K2 ["RowData"]
        9 GETTABLEKS                       R3 R2 K3 ["numVoices"]
       11 GETTABLEKS                       R4 R2 K4 ["numPlayingVoices"]
       13 LOADK                            R7 K5 ["VoiceCount"]
       14 LOADK                            R8 K6 ["Label"]
       15 DUPTABLE                         R9 K9 [{"numVoices", "numPlayingVoices", "voicesString", "playingVoicesString"}]
       16 FASTCALL1                        TOSTRING R3 ; [+3]
       17 MOVE                             R11 R3
       18 GETIMPORT                        R10 K11 [tostring]
       20 CALL                             R10 1 1
       21 SETTABLEKS                       R10 R9 K3 ["numVoices"]
       23 FASTCALL1                        TOSTRING R4 ; [+3]
       24 MOVE                             R11 R4
       25 GETIMPORT                        R10 K11 [tostring]
       27 CALL                             R10 1 1
       28 SETTABLEKS                       R10 R9 K4 ["numPlayingVoices"]
       30 JUMPIFNOTEQKN                    R3 K12 [1] ; [+7]
       32 LOADK                            R12 K5 ["VoiceCount"]
       33 LOADK                            R13 K13 ["VoicesSingular"]
       34 NAMECALL                         R10 R1 K14 ["getText"]
       36 CALL                             R10 3 1
       37 JUMP                             ; [+5]
       38 LOADK                            R12 K5 ["VoiceCount"]
       39 LOADK                            R13 K15 ["VoicesPlural"]
       40 NAMECALL                         R10 R1 K14 ["getText"]
       42 CALL                             R10 3 1
       43 SETTABLEKS                       R10 R9 K7 ["voicesString"]
       45 JUMPIFNOTEQKN                    R4 K12 [1] ; [+7]
       47 LOADK                            R12 K5 ["VoiceCount"]
       48 LOADK                            R13 K16 ["PlayingVoicesSingular"]
       49 NAMECALL                         R10 R1 K14 ["getText"]
       51 CALL                             R10 3 1
       52 JUMP                             ; [+5]
       53 LOADK                            R12 K5 ["VoiceCount"]
       54 LOADK                            R13 K17 ["PlayingVoicesPlural"]
       55 NAMECALL                         R10 R1 K14 ["getText"]
       57 CALL                             R10 3 1
       58 SETTABLEKS                       R10 R9 K8 ["playingVoicesString"]
       60 NAMECALL                         R5 R1 K14 ["getText"]
       62 CALL                             R5 4 1
       63 LOADK                            R6 K18 [""]
       64 GETTABLEKS                       R7 R2 K19 ["isPaused"]
       66 JUMPIFNOT                        R7 ; [+25]
       67 LOADK                            R9 K20 ["LookbackTimestamp"]
       68 LOADK                            R10 K6 ["Label"]
       69 DUPTABLE                         R11 K23 [{"frameNumber", "frameTimestamp"}]
       70 GETTABLEKS                       R15 R2 K24 ["lookbackAmount"]
       72 MINUS                            R14 R15
       73 ADDK                             R13 R14 K12 [1]
       74 FASTCALL1                        TOSTRING R13 ; [+2]
       75 GETIMPORT                        R12 K11 [tostring]
       77 CALL                             R12 1 1
       78 SETTABLEKS                       R12 R11 K21 ["frameNumber"]
       80 GETIMPORT                        R12 K27 [string.format]
       82 LOADK                            R13 K28 ["%.3f"]
       83 GETTABLEKS                       R14 R2 K29 ["currentFrameTimestamp"]
       85 CALL                             R12 2 1
       86 SETTABLEKS                       R12 R11 K22 ["frameTimestamp"]
       88 NAMECALL                         R7 R1 K14 ["getText"]
       90 CALL                             R7 4 1
       91 MOVE                             R6 R7
       92 GETUPVAL                         R7 0
       93 GETTABLEKS                       R7 R7 K30 ["createElement"]
       95 GETUPVAL                         R8 2
       96 DUPTABLE                         R9 K34 [{["LayoutOrder"], ["tag"] = "row size-full-0 auto-y no-flex align-y-top padding-small gap-small"}]
       97 GETTABLEKS                       R10 R0 K31 ["LayoutOrder"]
       99 SETTABLEKS                       R10 R9 K31 ["LayoutOrder"]
      101 DUPTABLE                         R10 K36 [{"PauseLookbackControls"}]
      102 GETUPVAL                         R11 0
      103 GETTABLEKS                       R11 R11 K30 ["createElement"]
      105 GETUPVAL                         R12 2
      106 DUPTABLE                         R13 K38 [{["LayoutOrder"] = 1, ["tag"] = "row grow auto-y items-start gap-small"}]
      107 DUPTABLE                         R14 K41 [{"PlayButton", "LookbackContent"}]
      108 GETUPVAL                         R15 0
      109 GETTABLEKS                       R15 R15 K30 ["createElement"]
      111 GETUPVAL                         R16 3
      112 DUPTABLE                         R17 K46 [{["LayoutOrder"] = 1, ["size"], ["icon"], ["variant"], ["onActivated"]}]
      113 GETUPVAL                         R18 4
      114 GETTABLEKS                       R18 R18 K47 ["Enums"]
      116 GETTABLEKS                       R18 R18 K48 ["InputSize"]
      118 GETTABLEKS                       R18 R18 K49 ["Small"]
      120 SETTABLEKS                       R18 R17 K42 ["size"]
      122 GETTABLEKS                       R19 R2 K19 ["isPaused"]
      124 JUMPIFNOT                        R19 ; [+8]
      125 GETUPVAL                         R18 4
      126 GETTABLEKS                       R18 R18 K47 ["Enums"]
      128 GETTABLEKS                       R18 R18 K50 ["IconName"]
      130 GETTABLEKS                       R18 R18 K51 ["PlaySmall"]
      132 JUMP                             ; [+7]
      133 GETUPVAL                         R18 4
      134 GETTABLEKS                       R18 R18 K47 ["Enums"]
      136 GETTABLEKS                       R18 R18 K50 ["IconName"]
      138 GETTABLEKS                       R18 R18 K52 ["PauseSmall"]
      140 SETTABLEKS                       R18 R17 K43 ["icon"]
      142 GETUPVAL                         R18 4
      143 GETTABLEKS                       R18 R18 K47 ["Enums"]
      145 GETTABLEKS                       R18 R18 K53 ["ButtonVariant"]
      147 GETTABLEKS                       R18 R18 K54 ["Standard"]
      149 SETTABLEKS                       R18 R17 K44 ["variant"]
      151 GETTABLEKS                       R18 R2 K55 ["togglePaused"]
      153 SETTABLEKS                       R18 R17 K45 ["onActivated"]
      155 CALL                             R15 2 1
      156 SETTABLEKS                       R15 R14 K39 ["PlayButton"]
      158 GETUPVAL                         R15 0
      159 GETTABLEKS                       R15 R15 K30 ["createElement"]
      161 GETUPVAL                         R16 2
      162 DUPTABLE                         R17 K58 [{["LayoutOrder"] = 2, ["tag"] = "col grow size-0-800 auto-y gap-xxsmall"}]
      163 DUPTABLE                         R18 K61 [{"LookbackBar", "StatusRow"}]
      164 GETUPVAL                         R19 0
      165 GETTABLEKS                       R19 R19 K30 ["createElement"]
      167 GETUPVAL                         R20 5
      168 DUPTABLE                         R21 K68 [{["LayoutOrder"] = 1, ["LookbackAmount"], ["PausedFrames"], ["SetLookbackAmount"], ["OnScrubFinished"], ["ActivityValues"], ["MaxFrames"]}]
      169 GETTABLEKS                       R22 R2 K24 ["lookbackAmount"]
      171 SETTABLEKS                       R22 R21 K62 ["LookbackAmount"]
      173 GETTABLEKS                       R22 R2 K69 ["pausedFrames"]
      175 SETTABLEKS                       R22 R21 K63 ["PausedFrames"]
      177 GETTABLEKS                       R22 R2 K70 ["setLookbackAmount"]
      179 SETTABLEKS                       R22 R21 K64 ["SetLookbackAmount"]
      181 GETTABLEKS                       R22 R2 K71 ["onLookbackScrubFinished"]
      183 SETTABLEKS                       R22 R21 K65 ["OnScrubFinished"]
      185 GETTABLEKS                       R22 R2 K72 ["activityValues"]
      187 SETTABLEKS                       R22 R21 K66 ["ActivityValues"]
      189 GETTABLEKS                       R22 R2 K73 ["maxLookbackAmount"]
      191 SETTABLEKS                       R22 R21 K67 ["MaxFrames"]
      193 CALL                             R19 2 1
      194 SETTABLEKS                       R19 R18 K59 ["LookbackBar"]
      196 GETUPVAL                         R19 0
      197 GETTABLEKS                       R19 R19 K30 ["createElement"]
      199 GETUPVAL                         R20 2
      200 DUPTABLE                         R21 K75 [{["LayoutOrder"] = 2, ["tag"] = "row size-full-0 auto-y"}]
      201 DUPTABLE                         R22 K77 [{"VoiceCount", "Timestamp"}]
      202 GETUPVAL                         R23 0
      203 GETTABLEKS                       R23 R23 K30 ["createElement"]
      205 GETUPVAL                         R24 6
      206 DUPTABLE                         R25 K80 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "auto-xy text-body-small text-align-x-left"}]
      207 SETTABLEKS                       R5 R25 K78 ["Text"]
      209 CALL                             R23 2 1
      210 SETTABLEKS                       R23 R22 K5 ["VoiceCount"]
      212 GETUPVAL                         R23 0
      213 GETTABLEKS                       R23 R23 K30 ["createElement"]
      215 GETUPVAL                         R24 6
      216 DUPTABLE                         R25 K82 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "grow auto-y text-body-small text-align-x-right"}]
      217 SETTABLEKS                       R6 R25 K78 ["Text"]
      219 CALL                             R23 2 1
      220 SETTABLEKS                       R23 R22 K76 ["Timestamp"]
      222 CALL                             R19 3 1
      223 SETTABLEKS                       R19 R18 K60 ["StatusRow"]
      225 CALL                             R15 3 1
      226 SETTABLEKS                       R15 R14 K40 ["LookbackContent"]
      228 CALL                             R11 3 1
      229 SETTABLEKS                       R11 R10 K35 ["PauseLookbackControls"]
      231 CALL                             R7 3 -1
      232 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioActivityMonitor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K11 ["IconButton"]
       30 GETTABLEKS                       R5 R3 K12 ["Text"]
       32 GETTABLEKS                       R6 R3 K13 ["View"]
       34 GETIMPORT                        R7 K5 [require]
       36 GETTABLEKS                       R8 R0 K6 ["Packages"]
       38 GETTABLEKS                       R8 R8 K14 ["StudioFoundation"]
       40 CALL                             R7 1 1
       41 GETTABLEKS                       R8 R7 K15 ["Contexts"]
       43 GETTABLEKS                       R8 R8 K16 ["Localization"]
       45 GETIMPORT                        R9 K5 [require]
       47 GETTABLEKS                       R10 R0 K8 ["Src"]
       49 GETTABLEKS                       R10 R10 K17 ["Components"]
       51 GETTABLEKS                       R10 R10 K18 ["LookbackBar"]
       53 CALL                             R9 1 1
       54 DUPCLOSURE                       R10 K19 [PROTO_0]
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R8
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R9
       61 CAPTURE                          VAL R5
       62 RETURN                           R10 1
