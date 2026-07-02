PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+10]
        2 GETUPVAL                         R0 1
        3 LOADK                            R2 K0 ["PublishedWithPreset"]
        4 DUPTABLE                         R3 K2 [{"presetType"}]
        5 GETUPVAL                         R5 2
        6 ORK                              R4 R5 K3 ["None"]
        7 SETTABLEKS                       R4 R3 K1 ["presetType"]
        9 NAMECALL                         R0 R0 K4 ["logCounter"]
       11 CALL                             R0 3 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["hasUnpublishedAvatarTypeChanges"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U2
        6 NAMECALL                         R0 R0 K1 ["OnInvoke"]
        8 CALL                             R0 3 0
        9 GETUPVAL                         R0 0
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K2 ["requestUnpublishedChangesStatus"]
       13 NAMECALL                         R0 R0 K3 ["Invoke"]
       15 CALL                             R0 2 0
       16 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADB                            R1 1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["onAvatarSettingsPublish"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 NAMECALL                         R0 R0 K1 ["OnInvoke"]
        9 CALL                             R0 3 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADB                            R1 1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["onStudioPublishHold"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 NAMECALL                         R0 R0 K1 ["OnInvoke"]
        9 CALL                             R0 3 0
       10 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADB                            R1 1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["onStudioCloseHold"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 NAMECALL                         R0 R0 K1 ["OnInvoke"]
        9 CALL                             R0 3 0
       10 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+12]
        2 GETUPVAL                         R0 0
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R0 1
        5 LOADK                            R2 K0 ["PublishedWithPreset"]
        6 DUPTABLE                         R3 K2 [{"presetType"}]
        7 GETUPVAL                         R5 2
        8 ORK                              R4 R5 K3 ["None"]
        9 SETTABLEKS                       R4 R3 K1 ["presetType"]
       11 NAMECALL                         R0 R0 K4 ["logCounter"]
       13 CALL                             R0 3 0
       14 GETUPVAL                         R0 3
       15 GETUPVAL                         R2 4
       16 GETTABLEKS                       R2 R2 K5 ["publishSettings"]
       18 NAMECALL                         R0 R0 K6 ["Invoke"]
       20 CALL                             R0 2 0
       21 GETUPVAL                         R0 3
       22 GETUPVAL                         R2 4
       23 GETTABLEKS                       R2 R2 K7 ["releaseStudioCloseHold"]
       25 NAMECALL                         R0 R0 K6 ["Invoke"]
       27 CALL                             R0 2 0
       28 GETUPVAL                         R0 3
       29 GETUPVAL                         R2 4
       30 GETTABLEKS                       R2 R2 K8 ["releaseStudioPublishHold"]
       32 NAMECALL                         R0 R0 K6 ["Invoke"]
       34 CALL                             R0 2 0
       35 GETUPVAL                         R0 5
       36 LOADB                            R1 0
       37 CALL                             R0 1 0
       38 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+12]
        2 GETUPVAL                         R0 0
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R0 1
        5 LOADK                            R2 K0 ["PublishedWithPreset"]
        6 DUPTABLE                         R3 K2 [{"presetType"}]
        7 GETUPVAL                         R5 2
        8 ORK                              R4 R5 K3 ["None"]
        9 SETTABLEKS                       R4 R3 K1 ["presetType"]
       11 NAMECALL                         R0 R0 K4 ["logCounter"]
       13 CALL                             R0 3 0
       14 GETUPVAL                         R0 3
       15 GETUPVAL                         R2 4
       16 GETTABLEKS                       R2 R2 K5 ["publishSettings"]
       18 NAMECALL                         R0 R0 K6 ["Invoke"]
       20 CALL                             R0 2 0
       21 GETUPVAL                         R0 3
       22 GETUPVAL                         R2 4
       23 GETTABLEKS                       R2 R2 K7 ["releaseStudioCloseHold"]
       25 NAMECALL                         R0 R0 K6 ["Invoke"]
       27 CALL                             R0 2 0
       28 GETUPVAL                         R0 3
       29 GETUPVAL                         R2 4
       30 GETTABLEKS                       R2 R2 K8 ["releaseStudioPublishHold"]
       32 NAMECALL                         R0 R0 K6 ["Invoke"]
       34 CALL                             R0 2 0
       35 GETUPVAL                         R0 5
       36 LOADB                            R1 0
       37 CALL                             R0 1 0
       38 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["discardUnpublishedSettings"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K1 ["releaseStudioCloseHold"]
        8 NAMECALL                         R0 R0 K2 ["Invoke"]
       10 CALL                             R0 2 0
       11 GETUPVAL                         R0 1
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K3 ["releaseStudioPublishHold"]
       15 NAMECALL                         R0 R0 K2 ["Invoke"]
       17 CALL                             R0 2 0
       18 GETUPVAL                         R0 3
       19 LOADB                            R1 0
       20 CALL                             R0 1 0
       21 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["releaseStudioCloseHold"]
        4 NAMECALL                         R0 R0 K1 ["Invoke"]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 0
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K2 ["releaseStudioPublishHold"]
       11 NAMECALL                         R0 R0 K1 ["Invoke"]
       13 CALL                             R0 2 0
       14 GETUPVAL                         R0 2
       15 LOADB                            R1 0
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 2
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R4 R1 K0 ["content"]
        5 JUMPIFNOTEQKNIL                  R4 ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K1 ; [+4]
       11 LOADK                            R4 K1 ["Content must not be nil in PublishContext"]
       12 GETIMPORT                        R2 K3 [assert]
       14 CALL                             R2 2 0
       15 GETTABLEKS                       R2 R1 K0 ["content"]
       17 GETUPVAL                         R3 2
       18 LOADB                            R4 1
       19 CALL                             R3 1 2
       20 GETUPVAL                         R5 3
       21 GETTABLEKS                       R5 R5 K4 ["useRef"]
       23 LOADB                            R6 1
       24 CALL                             R5 1 1
       25 GETUPVAL                         R6 2
       26 LOADB                            R7 0
       27 CALL                             R6 1 2
       28 GETUPVAL                         R8 4
       29 NAMECALL                         R8 R8 K5 ["use"]
       31 CALL                             R8 1 1
       32 NAMECALL                         R8 R8 K6 ["get"]
       34 CALL                             R8 1 1
       35 GETUPVAL                         R9 5
       36 NAMECALL                         R9 R9 K5 ["use"]
       38 CALL                             R9 1 1
       39 GETUPVAL                         R10 3
       40 GETTABLEKS                       R10 R10 K7 ["useContext"]
       42 GETUPVAL                         R11 6
       43 CALL                             R10 1 1
       44 GETUPVAL                         R12 7
       45 JUMPIFNOT                        R12 ; [+6]
       46 GETUPVAL                         R11 8
       47 GETTABLEKS                       R11 R11 K8 ["computeCurrentPresetType"]
       49 MOVE                             R12 R10
       50 CALL                             R11 1 1
       51 JUMP                             ; [+1]
       52 LOADNIL                          R11
       53 GETUPVAL                         R13 7
       54 JUMPIFNOT                        R13 ; [+5]
       55 GETUPVAL                         R12 9
       56 NAMECALL                         R12 R12 K5 ["use"]
       58 CALL                             R12 1 1
       59 JUMP                             ; [+1]
       60 LOADNIL                          R12
       61 NEWCLOSURE                       R13 P0
       62 CAPTURE                          UPVAL U7
       63 CAPTURE                          VAL R12
       64 CAPTURE                          VAL R11
       65 GETUPVAL                         R14 10
       66 NEWCLOSURE                       R15 P1
       67 CAPTURE                          VAL R8
       68 CAPTURE                          UPVAL U11
       69 CAPTURE                          VAL R5
       70 NEWTABLE                         R16 0 0
       72 CALL                             R14 2 0
       73 GETUPVAL                         R14 10
       74 NEWCLOSURE                       R15 P2
       75 CAPTURE                          VAL R8
       76 CAPTURE                          UPVAL U11
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R7
       79 NEWTABLE                         R16 0 0
       81 CALL                             R14 2 0
       82 GETUPVAL                         R14 10
       83 NEWCLOSURE                       R15 P3
       84 CAPTURE                          VAL R8
       85 CAPTURE                          UPVAL U11
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R7
       88 NEWTABLE                         R16 0 0
       90 CALL                             R14 2 0
       91 GETUPVAL                         R14 10
       92 NEWCLOSURE                       R15 P4
       93 CAPTURE                          VAL R8
       94 CAPTURE                          UPVAL U11
       95 CAPTURE                          VAL R4
       96 CAPTURE                          VAL R7
       97 NEWTABLE                         R16 0 0
       99 CALL                             R14 2 0
      100 DUPTABLE                         R14 K13 [{["Label"], ["HidesDialog"] = True, ["OnActivated"]}]
      101 LOADK                            R17 K14 ["UnsavedChangesDialog"]
      102 LOADK                            R18 K15 ["SaveAction"]
      103 NAMECALL                         R15 R9 K16 ["getText"]
      105 CALL                             R15 3 1
      106 SETTABLEKS                       R15 R14 K9 ["Label"]
      108 NEWCLOSURE                       R15 P5
      109 CAPTURE                          UPVAL U7
      110 CAPTURE                          VAL R12
      111 CAPTURE                          VAL R11
      112 CAPTURE                          VAL R8
      113 CAPTURE                          UPVAL U11
      114 CAPTURE                          VAL R7
      115 SETTABLEKS                       R15 R14 K12 ["OnActivated"]
      117 DUPTABLE                         R15 K13 [{["Label"], ["HidesDialog"] = True, ["OnActivated"]}]
      118 LOADK                            R18 K14 ["UnsavedChangesDialog"]
      119 LOADK                            R19 K17 ["SaveAndRestartAction"]
      120 NAMECALL                         R16 R9 K16 ["getText"]
      122 CALL                             R16 3 1
      123 SETTABLEKS                       R16 R15 K9 ["Label"]
      125 NEWCLOSURE                       R16 P6
      126 CAPTURE                          UPVAL U7
      127 CAPTURE                          VAL R12
      128 CAPTURE                          VAL R11
      129 CAPTURE                          VAL R8
      130 CAPTURE                          UPVAL U11
      131 CAPTURE                          VAL R7
      132 SETTABLEKS                       R16 R15 K12 ["OnActivated"]
      134 DUPTABLE                         R16 K13 [{["Label"], ["HidesDialog"] = True, ["OnActivated"]}]
      135 LOADK                            R19 K14 ["UnsavedChangesDialog"]
      136 LOADK                            R20 K18 ["DiscardAction"]
      137 NAMECALL                         R17 R9 K16 ["getText"]
      139 CALL                             R17 3 1
      140 SETTABLEKS                       R17 R16 K9 ["Label"]
      142 NEWCLOSURE                       R17 P7
      143 CAPTURE                          VAL R2
      144 CAPTURE                          VAL R8
      145 CAPTURE                          UPVAL U11
      146 CAPTURE                          VAL R7
      147 SETTABLEKS                       R17 R16 K12 ["OnActivated"]
      149 DUPTABLE                         R17 K13 [{["Label"], ["HidesDialog"] = True, ["OnActivated"]}]
      150 LOADK                            R20 K14 ["UnsavedChangesDialog"]
      151 LOADK                            R21 K19 ["CancelAction"]
      152 NAMECALL                         R18 R9 K16 ["getText"]
      154 CALL                             R18 3 1
      155 SETTABLEKS                       R18 R17 K9 ["Label"]
      157 NEWCLOSURE                       R18 P8
      158 CAPTURE                          VAL R8
      159 CAPTURE                          UPVAL U11
      160 CAPTURE                          VAL R7
      161 SETTABLEKS                       R18 R17 K12 ["OnActivated"]
      163 GETUPVAL                         R18 12
      164 DUPTABLE                         R19 K31 [{["Intent"], ["Heading"], ["Body"], ["ActionPrimary"], ["ActionSecondary"], ["ActionTertiary"], ["DisableTitleBar"] = True, ["OnClosed"], ["Width"] = 410, ["Modal"] = True}]
      165 GETTABLEKS                       R21 R5 K32 ["current"]
      167 JUMPIFNOT                        R21 ; [+2]
      168 LOADK                            R20 K33 ["Destructive"]
      169 JUMP                             ; [+1]
      170 LOADK                            R20 K34 ["Warning"]
      171 SETTABLEKS                       R20 R19 K20 ["Intent"]
      173 LOADK                            R22 K14 ["UnsavedChangesDialog"]
      174 LOADK                            R23 K35 ["Title"]
      175 NAMECALL                         R20 R9 K16 ["getText"]
      177 CALL                             R20 3 1
      178 SETTABLEKS                       R20 R19 K21 ["Heading"]
      180 GETTABLEKS                       R21 R5 K32 ["current"]
      182 JUMPIFNOT                        R21 ; [+6]
      183 LOADK                            R22 K14 ["UnsavedChangesDialog"]
      184 LOADK                            R23 K36 ["ServerRestartDescription"]
      185 NAMECALL                         R20 R9 K16 ["getText"]
      187 CALL                             R20 3 1
      188 JUMP                             ; [+5]
      189 LOADK                            R22 K14 ["UnsavedChangesDialog"]
      190 LOADK                            R23 K37 ["Description"]
      191 NAMECALL                         R20 R9 K16 ["getText"]
      193 CALL                             R20 3 1
      194 SETTABLEKS                       R20 R19 K22 ["Body"]
      196 GETTABLEKS                       R21 R5 K32 ["current"]
      198 JUMPIFNOT                        R21 ; [+2]
      199 MOVE                             R20 R15
      200 JUMP                             ; [+1]
      201 MOVE                             R20 R14
      202 SETTABLEKS                       R20 R19 K23 ["ActionPrimary"]
      204 JUMPIFNOT                        R3 ; [+2]
      205 MOVE                             R20 R16
      206 JUMP                             ; [+1]
      207 MOVE                             R20 R17
      208 SETTABLEKS                       R20 R19 K24 ["ActionSecondary"]
      210 JUMPIFNOT                        R3 ; [+2]
      211 LOADNIL                          R20
      212 JUMP                             ; [+1]
      213 MOVE                             R20 R16
      214 SETTABLEKS                       R20 R19 K25 ["ActionTertiary"]
      216 GETTABLEKS                       R20 R17 K12 ["OnActivated"]
      218 SETTABLEKS                       R20 R19 K27 ["OnClosed"]
      220 CALL                             R18 1 2
      221 GETUPVAL                         R20 10
      222 NEWCLOSURE                       R21 P9
      223 CAPTURE                          VAL R6
      224 CAPTURE                          VAL R18
      225 CAPTURE                          VAL R19
      226 NEWTABLE                         R22 0 1
      228 MOVE                             R23 R6
      229 SETLIST                          R22 R23 1 [1]
      231 CALL                             R20 2 0
      232 GETUPVAL                         R20 13
      233 GETUPVAL                         R21 3
      234 GETTABLEKS                       R21 R21 K38 ["Fragment"]
      236 CALL                             R20 1 -1
      237 RETURN                           R20 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["AvatarPresetUtil"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Components"]
       22 GETTABLEKS                       R3 R3 K10 ["Contexts"]
       24 GETTABLEKS                       R3 R3 K11 ["AvatarSettingsContext"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K12 ["Packages"]
       31 GETTABLEKS                       R4 R4 K13 ["Framework"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Src"]
       38 GETTABLEKS                       R5 R5 K9 ["Components"]
       40 GETTABLEKS                       R5 R5 K10 ["Contexts"]
       42 GETTABLEKS                       R5 R5 K14 ["PublishProvider"]
       44 GETTABLEKS                       R5 R5 K15 ["PublishContext"]
       46 CALL                             R4 1 1
       47 GETIMPORT                        R5 K5 [require]
       49 GETTABLEKS                       R6 R0 K12 ["Packages"]
       51 GETTABLEKS                       R6 R6 K16 ["React"]
       53 CALL                             R5 1 1
       54 GETTABLEKS                       R6 R3 K17 ["UI"]
       56 GETTABLEKS                       R6 R6 K18 ["Hooks"]
       58 GETTABLEKS                       R6 R6 K19 ["useDialog"]
       60 GETTABLEKS                       R7 R3 K20 ["ContextServices"]
       62 GETTABLEKS                       R8 R7 K21 ["Plugin"]
       64 GETTABLEKS                       R9 R7 K22 ["Localization"]
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R11 R0 K6 ["Src"]
       70 GETTABLEKS                       R11 R11 K7 ["Util"]
       72 GETTABLEKS                       R11 R11 K23 ["Telemetry"]
       74 GETTABLEKS                       R11 R11 K24 ["TelemetryContext"]
       76 CALL                             R10 1 1
       77 GETTABLEKS                       R11 R5 K25 ["createElement"]
       79 GETTABLEKS                       R12 R5 K26 ["useState"]
       81 GETTABLEKS                       R13 R5 K27 ["useEffect"]
       83 GETTABLEKS                       R14 R5 K28 ["useContext"]
       85 GETIMPORT                        R15 K5 [require]
       87 GETTABLEKS                       R16 R0 K6 ["Src"]
       89 GETTABLEKS                       R16 R16 K7 ["Util"]
       91 GETTABLEKS                       R16 R16 K29 ["InvokeKeys"]
       93 CALL                             R15 1 1
       94 GETIMPORT                        R16 K5 [require]
       96 GETTABLEKS                       R17 R0 K6 ["Src"]
       98 GETTABLEKS                       R17 R17 K30 ["Flags"]
      100 GETTABLEKS                       R17 R17 K31 ["getFFlagReportPresetOnPublish"]
      102 CALL                             R16 1 1
      103 CALL                             R16 0 1
      104 DUPCLOSURE                       R17 K32 [PROTO_14]
      105 CAPTURE                          VAL R14
      106 CAPTURE                          VAL R4
      107 CAPTURE                          VAL R12
      108 CAPTURE                          VAL R5
      109 CAPTURE                          VAL R8
      110 CAPTURE                          VAL R9
      111 CAPTURE                          VAL R2
      112 CAPTURE                          VAL R16
      113 CAPTURE                          VAL R1
      114 CAPTURE                          VAL R10
      115 CAPTURE                          VAL R13
      116 CAPTURE                          VAL R15
      117 CAPTURE                          VAL R6
      118 CAPTURE                          VAL R11
      119 RETURN                           R17 1
