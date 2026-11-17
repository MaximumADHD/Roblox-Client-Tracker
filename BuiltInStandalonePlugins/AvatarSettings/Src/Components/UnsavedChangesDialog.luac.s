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
        1 GETTABLEKS                       R0 R0 K0 ["hasInvalidSettings"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 JUMPIFNOT                        R0 ; [+12]
        7 GETUPVAL                         R0 1
        8 JUMPIFNOT                        R0 ; [+10]
        9 GETUPVAL                         R0 2
       10 LOADK                            R2 K1 ["PublishedWithPreset"]
       11 DUPTABLE                         R3 K3 [{"presetType"}]
       12 GETUPVAL                         R5 3
       13 ORK                              R4 R5 K4 ["None"]
       14 SETTABLEKS                       R4 R3 K2 ["presetType"]
       16 NAMECALL                         R0 R0 K5 ["logCounter"]
       18 CALL                             R0 3 0
       19 GETUPVAL                         R0 4
       20 GETUPVAL                         R2 5
       21 GETTABLEKS                       R2 R2 K6 ["publishSettings"]
       23 NAMECALL                         R0 R0 K7 ["Invoke"]
       25 CALL                             R0 2 0
       26 GETUPVAL                         R0 4
       27 GETUPVAL                         R2 5
       28 GETTABLEKS                       R2 R2 K8 ["releaseStudioCloseHold"]
       30 NAMECALL                         R0 R0 K7 ["Invoke"]
       32 CALL                             R0 2 0
       33 GETUPVAL                         R0 4
       34 GETUPVAL                         R2 5
       35 GETTABLEKS                       R2 R2 K9 ["releaseStudioPublishHold"]
       37 NAMECALL                         R0 R0 K7 ["Invoke"]
       39 CALL                             R0 2 0
       40 GETUPVAL                         R0 6
       41 LOADB                            R1 0
       42 CALL                             R0 1 0
       43 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["hasInvalidSettings"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 JUMPIFNOT                        R0 ; [+12]
        7 GETUPVAL                         R0 1
        8 JUMPIFNOT                        R0 ; [+10]
        9 GETUPVAL                         R0 2
       10 LOADK                            R2 K1 ["PublishedWithPreset"]
       11 DUPTABLE                         R3 K3 [{"presetType"}]
       12 GETUPVAL                         R5 3
       13 ORK                              R4 R5 K4 ["None"]
       14 SETTABLEKS                       R4 R3 K2 ["presetType"]
       16 NAMECALL                         R0 R0 K5 ["logCounter"]
       18 CALL                             R0 3 0
       19 GETUPVAL                         R0 4
       20 GETUPVAL                         R2 5
       21 GETTABLEKS                       R2 R2 K6 ["publishSettings"]
       23 NAMECALL                         R0 R0 K7 ["Invoke"]
       25 CALL                             R0 2 0
       26 GETUPVAL                         R0 4
       27 GETUPVAL                         R2 5
       28 GETTABLEKS                       R2 R2 K8 ["releaseStudioCloseHold"]
       30 NAMECALL                         R0 R0 K7 ["Invoke"]
       32 CALL                             R0 2 0
       33 GETUPVAL                         R0 4
       34 GETUPVAL                         R2 5
       35 GETTABLEKS                       R2 R2 K9 ["releaseStudioPublishHold"]
       37 NAMECALL                         R0 R0 K7 ["Invoke"]
       39 CALL                             R0 2 0
       40 GETUPVAL                         R0 6
       41 LOADB                            R1 0
       42 CALL                             R0 1 0
       43 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["discardUnpublishedSettings"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R1 1
        5 JUMPIFNOT                        R1 ; [+2]
        6 LOADK                            R0 K1 ["discard"]
        7 JUMP                             ; [+1]
        8 LOADNIL                          R0
        9 GETUPVAL                         R1 2
       10 GETUPVAL                         R3 3
       11 GETTABLEKS                       R3 R3 K2 ["releaseStudioCloseHold"]
       13 MOVE                             R4 R0
       14 NAMECALL                         R1 R1 K3 ["Invoke"]
       16 CALL                             R1 3 0
       17 GETUPVAL                         R1 2
       18 GETUPVAL                         R3 3
       19 GETTABLEKS                       R3 R3 K4 ["releaseStudioPublishHold"]
       21 MOVE                             R4 R0
       22 NAMECALL                         R1 R1 K3 ["Invoke"]
       24 CALL                             R1 3 0
       25 GETUPVAL                         R1 4
       26 LOADB                            R2 0
       27 CALL                             R1 1 0
       28 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+2]
        2 LOADK                            R0 K0 ["cancel"]
        3 JUMP                             ; [+1]
        4 LOADNIL                          R0
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K1 ["releaseStudioCloseHold"]
        9 MOVE                             R4 R0
       10 NAMECALL                         R1 R1 K2 ["Invoke"]
       12 CALL                             R1 3 0
       13 GETUPVAL                         R1 1
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R3 R3 K3 ["releaseStudioPublishHold"]
       17 MOVE                             R4 R0
       18 NAMECALL                         R1 R1 K2 ["Invoke"]
       20 CALL                             R1 3 0
       21 GETUPVAL                         R1 3
       22 LOADB                            R2 0
       23 CALL                             R1 1 0
       24 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["releaseStudioCloseHold"]
        4 LOADK                            R3 K1 ["cancel"]
        5 NAMECALL                         R0 R0 K2 ["Invoke"]
        7 CALL                             R0 3 0
        8 GETUPVAL                         R0 0
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K3 ["releaseStudioPublishHold"]
       12 LOADK                            R3 K1 ["cancel"]
       13 NAMECALL                         R0 R0 K2 ["Invoke"]
       15 CALL                             R0 3 0
       16 GETUPVAL                         R0 2
       17 LOADB                            R1 0
       18 CALL                             R0 1 0
       19 RETURN                           R0 0

PROTO_14:
        0 DUPTABLE                         R0 K2 [{"DialogComponent", "DialogUri"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["DialogComponent"]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K3 ["join"]
        7 GETUPVAL                         R2 2
        8 NAMECALL                         R2 R2 K4 ["GetUri"]
       10 CALL                             R2 1 1
       11 DUPTABLE                         R3 K9 [{["Category"] = "Widget", ["ItemId"] = "Dialog/UnsavedChanges"}]
       12 CALL                             R1 2 1
       13 SETTABLEKS                       R1 R0 K1 ["DialogUri"]
       15 RETURN                           R0 1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 2
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_16:
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
       29 CALL                             R8 0 1
       30 GETUPVAL                         R9 5
       31 NAMECALL                         R9 R9 K5 ["use"]
       33 CALL                             R9 1 1
       34 NAMECALL                         R9 R9 K6 ["get"]
       36 CALL                             R9 1 1
       37 GETUPVAL                         R10 6
       38 NAMECALL                         R10 R10 K5 ["use"]
       40 CALL                             R10 1 1
       41 GETUPVAL                         R11 3
       42 GETTABLEKS                       R11 R11 K7 ["useContext"]
       44 GETUPVAL                         R12 7
       45 CALL                             R11 1 1
       46 GETUPVAL                         R13 8
       47 JUMPIFNOT                        R13 ; [+6]
       48 GETUPVAL                         R12 9
       49 GETTABLEKS                       R12 R12 K8 ["computeCurrentPresetType"]
       51 MOVE                             R13 R11
       52 CALL                             R12 1 1
       53 JUMP                             ; [+1]
       54 LOADNIL                          R12
       55 GETUPVAL                         R14 8
       56 JUMPIFNOT                        R14 ; [+5]
       57 GETUPVAL                         R13 10
       58 NAMECALL                         R13 R13 K5 ["use"]
       60 CALL                             R13 1 1
       61 JUMP                             ; [+1]
       62 LOADNIL                          R13
       63 NEWCLOSURE                       R14 P0
       64 CAPTURE                          UPVAL U8
       65 CAPTURE                          VAL R13
       66 CAPTURE                          VAL R12
       67 GETUPVAL                         R15 11
       68 NEWCLOSURE                       R16 P1
       69 CAPTURE                          VAL R9
       70 CAPTURE                          UPVAL U12
       71 CAPTURE                          VAL R5
       72 NEWTABLE                         R17 0 0
       74 CALL                             R15 2 0
       75 GETUPVAL                         R15 11
       76 NEWCLOSURE                       R16 P2
       77 CAPTURE                          VAL R9
       78 CAPTURE                          UPVAL U12
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R7
       81 NEWTABLE                         R17 0 0
       83 CALL                             R15 2 0
       84 GETUPVAL                         R15 11
       85 NEWCLOSURE                       R16 P3
       86 CAPTURE                          VAL R9
       87 CAPTURE                          UPVAL U12
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R7
       90 NEWTABLE                         R17 0 0
       92 CALL                             R15 2 0
       93 GETUPVAL                         R15 11
       94 NEWCLOSURE                       R16 P4
       95 CAPTURE                          VAL R9
       96 CAPTURE                          UPVAL U12
       97 CAPTURE                          VAL R4
       98 CAPTURE                          VAL R7
       99 NEWTABLE                         R17 0 0
      101 CALL                             R15 2 0
      102 DUPTABLE                         R15 K14 [{["Label"], ["HidesDialog"] = True, ["Enabled"], ["OnActivated"]}]
      103 LOADK                            R18 K15 ["UnsavedChangesDialog"]
      104 LOADK                            R19 K16 ["SaveAction"]
      105 NAMECALL                         R16 R10 K17 ["getText"]
      107 CALL                             R16 3 1
      108 SETTABLEKS                       R16 R15 K9 ["Label"]
      110 GETTABLEKS                       R17 R2 K18 ["hasInvalidSettings"]
      112 NOT                              R16 R17
      113 SETTABLEKS                       R16 R15 K12 ["Enabled"]
      115 NEWCLOSURE                       R16 P5
      116 CAPTURE                          VAL R2
      117 CAPTURE                          UPVAL U8
      118 CAPTURE                          VAL R13
      119 CAPTURE                          VAL R12
      120 CAPTURE                          VAL R9
      121 CAPTURE                          UPVAL U12
      122 CAPTURE                          VAL R7
      123 SETTABLEKS                       R16 R15 K13 ["OnActivated"]
      125 DUPTABLE                         R16 K14 [{["Label"], ["HidesDialog"] = True, ["Enabled"], ["OnActivated"]}]
      126 LOADK                            R19 K15 ["UnsavedChangesDialog"]
      127 LOADK                            R20 K19 ["SaveAndRestartAction"]
      128 NAMECALL                         R17 R10 K17 ["getText"]
      130 CALL                             R17 3 1
      131 SETTABLEKS                       R17 R16 K9 ["Label"]
      133 GETTABLEKS                       R18 R2 K18 ["hasInvalidSettings"]
      135 NOT                              R17 R18
      136 SETTABLEKS                       R17 R16 K12 ["Enabled"]
      138 NEWCLOSURE                       R17 P6
      139 CAPTURE                          VAL R2
      140 CAPTURE                          UPVAL U8
      141 CAPTURE                          VAL R13
      142 CAPTURE                          VAL R12
      143 CAPTURE                          VAL R9
      144 CAPTURE                          UPVAL U12
      145 CAPTURE                          VAL R7
      146 SETTABLEKS                       R17 R16 K13 ["OnActivated"]
      148 DUPTABLE                         R17 K20 [{["Label"], ["HidesDialog"] = True, ["OnActivated"]}]
      149 LOADK                            R20 K15 ["UnsavedChangesDialog"]
      150 LOADK                            R21 K21 ["DiscardAction"]
      151 NAMECALL                         R18 R10 K17 ["getText"]
      153 CALL                             R18 3 1
      154 SETTABLEKS                       R18 R17 K9 ["Label"]
      156 NEWCLOSURE                       R18 P7
      157 CAPTURE                          VAL R2
      158 CAPTURE                          VAL R8
      159 CAPTURE                          VAL R9
      160 CAPTURE                          UPVAL U12
      161 CAPTURE                          VAL R7
      162 SETTABLEKS                       R18 R17 K13 ["OnActivated"]
      164 DUPTABLE                         R18 K20 [{["Label"], ["HidesDialog"] = True, ["OnActivated"]}]
      165 LOADK                            R21 K15 ["UnsavedChangesDialog"]
      166 LOADK                            R22 K22 ["CancelAction"]
      167 NAMECALL                         R19 R10 K17 ["getText"]
      169 CALL                             R19 3 1
      170 SETTABLEKS                       R19 R18 K9 ["Label"]
      172 NEWCLOSURE                       R19 P8
      173 CAPTURE                          VAL R8
      174 CAPTURE                          VAL R9
      175 CAPTURE                          UPVAL U12
      176 CAPTURE                          VAL R7
      177 SETTABLEKS                       R19 R18 K13 ["OnActivated"]
      179 DUPTABLE                         R19 K20 [{["Label"], ["HidesDialog"] = True, ["OnActivated"]}]
      180 LOADK                            R22 K15 ["UnsavedChangesDialog"]
      181 LOADK                            R23 K22 ["CancelAction"]
      182 NAMECALL                         R20 R10 K17 ["getText"]
      184 CALL                             R20 3 1
      185 SETTABLEKS                       R20 R19 K9 ["Label"]
      187 NEWCLOSURE                       R20 P9
      188 CAPTURE                          VAL R9
      189 CAPTURE                          UPVAL U12
      190 CAPTURE                          VAL R7
      191 SETTABLEKS                       R20 R19 K13 ["OnActivated"]
      193 GETUPVAL                         R21 13
      194 JUMPIFNOT                        R21 ; [+14]
      195 GETUPVAL                         R20 3
      196 GETTABLEKS                       R20 R20 K23 ["useMemo"]
      198 NEWCLOSURE                       R21 P10
      199 CAPTURE                          UPVAL U14
      200 CAPTURE                          UPVAL U15
      201 CAPTURE                          VAL R9
      202 NEWTABLE                         R22 0 1
      204 MOVE                             R23 R9
      205 SETLIST                          R22 R23 1 [1]
      207 CALL                             R20 2 1
      208 JUMP                             ; [+1]
      209 LOADNIL                          R20
      210 GETUPVAL                         R21 16
      211 DUPTABLE                         R22 K36 [{["Intent"], ["Heading"], ["Body"], ["ActionPrimary"], ["ActionSecondary"], ["ActionTertiary"], ["DisableTitleBar"], ["OnClosed"], ["Width"] = 410, ["Modal"] = True, ["MigrateToStudioFoundation"]}]
      212 GETTABLEKS                       R24 R5 K37 ["current"]
      214 JUMPIFNOT                        R24 ; [+2]
      215 LOADK                            R23 K38 ["Destructive"]
      216 JUMP                             ; [+1]
      217 LOADK                            R23 K39 ["Warning"]
      218 SETTABLEKS                       R23 R22 K24 ["Intent"]
      220 LOADK                            R25 K15 ["UnsavedChangesDialog"]
      221 LOADK                            R26 K40 ["Title"]
      222 NAMECALL                         R23 R10 K17 ["getText"]
      224 CALL                             R23 3 1
      225 SETTABLEKS                       R23 R22 K25 ["Heading"]
      227 GETTABLEKS                       R24 R5 K37 ["current"]
      229 JUMPIFNOT                        R24 ; [+6]
      230 LOADK                            R25 K15 ["UnsavedChangesDialog"]
      231 LOADK                            R26 K41 ["ServerRestartDescription"]
      232 NAMECALL                         R23 R10 K17 ["getText"]
      234 CALL                             R23 3 1
      235 JUMP                             ; [+5]
      236 LOADK                            R25 K15 ["UnsavedChangesDialog"]
      237 LOADK                            R26 K42 ["Description"]
      238 NAMECALL                         R23 R10 K17 ["getText"]
      240 CALL                             R23 3 1
      241 SETTABLEKS                       R23 R22 K26 ["Body"]
      243 GETTABLEKS                       R24 R5 K37 ["current"]
      245 JUMPIFNOT                        R24 ; [+2]
      246 MOVE                             R23 R16
      247 JUMP                             ; [+1]
      248 MOVE                             R23 R15
      249 SETTABLEKS                       R23 R22 K27 ["ActionPrimary"]
      251 JUMPIFNOT                        R3 ; [+2]
      252 MOVE                             R23 R17
      253 JUMP                             ; [+1]
      254 MOVE                             R23 R18
      255 SETTABLEKS                       R23 R22 K28 ["ActionSecondary"]
      257 JUMPIF                           R3 ; [+2]
      258 MOVE                             R23 R17
      259 JUMP                             ; [+6]
      260 GETTABLEKS                       R24 R2 K18 ["hasInvalidSettings"]
      262 JUMPIFNOT                        R24 ; [+2]
      263 MOVE                             R23 R19
      264 JUMP                             ; [+1]
      265 LOADNIL                          R23
      266 SETTABLEKS                       R23 R22 K29 ["ActionTertiary"]
      268 NOT                              R23 R8
      269 SETTABLEKS                       R23 R22 K30 ["DisableTitleBar"]
      271 GETTABLEKS                       R23 R18 K13 ["OnActivated"]
      273 SETTABLEKS                       R23 R22 K31 ["OnClosed"]
      275 SETTABLEKS                       R20 R22 K35 ["MigrateToStudioFoundation"]
      277 CALL                             R21 1 2
      278 GETUPVAL                         R23 11
      279 NEWCLOSURE                       R24 P11
      280 CAPTURE                          VAL R6
      281 CAPTURE                          VAL R21
      282 CAPTURE                          VAL R22
      283 NEWTABLE                         R25 0 1
      285 MOVE                             R26 R6
      286 SETLIST                          R25 R26 1 [1]
      288 CALL                             R23 2 0
      289 GETUPVAL                         R23 17
      290 GETUPVAL                         R24 3
      291 GETTABLEKS                       R24 R24 K43 ["Fragment"]
      293 CALL                             R23 1 -1
      294 RETURN                           R23 -1

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
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R7 R0 K12 ["Packages"]
       58 GETTABLEKS                       R7 R7 K17 ["StudioFoundation"]
       60 CALL                             R6 1 1
       61 GETTABLEKS                       R7 R3 K18 ["UI"]
       63 GETTABLEKS                       R7 R7 K19 ["Hooks"]
       65 GETTABLEKS                       R7 R7 K20 ["RESTRICTED_useDialog"]
       67 GETTABLEKS                       R8 R6 K9 ["Components"]
       69 GETTABLEKS                       R8 R8 K21 ["Dialog"]
       71 GETTABLEKS                       R9 R6 K7 ["Util"]
       73 GETTABLEKS                       R9 R9 K22 ["StudioUri"]
       75 GETTABLEKS                       R10 R3 K23 ["ContextServices"]
       77 GETTABLEKS                       R11 R10 K24 ["Plugin"]
       79 GETTABLEKS                       R12 R10 K25 ["Localization"]
       81 GETIMPORT                        R13 K5 [require]
       83 GETTABLEKS                       R14 R0 K6 ["Src"]
       85 GETTABLEKS                       R14 R14 K7 ["Util"]
       87 GETTABLEKS                       R14 R14 K26 ["Telemetry"]
       89 GETTABLEKS                       R14 R14 K27 ["TelemetryContext"]
       91 CALL                             R13 1 1
       92 GETTABLEKS                       R14 R5 K28 ["createElement"]
       94 GETTABLEKS                       R15 R5 K29 ["useState"]
       96 GETTABLEKS                       R16 R5 K30 ["useEffect"]
       98 GETTABLEKS                       R17 R5 K31 ["useContext"]
      100 GETIMPORT                        R18 K5 [require]
      102 GETTABLEKS                       R19 R0 K6 ["Src"]
      104 GETTABLEKS                       R19 R19 K7 ["Util"]
      106 GETTABLEKS                       R19 R19 K32 ["InvokeKeys"]
      108 CALL                             R18 1 1
      109 GETIMPORT                        R19 K5 [require]
      111 GETTABLEKS                       R20 R0 K6 ["Src"]
      113 GETTABLEKS                       R20 R20 K33 ["Flags"]
      115 GETTABLEKS                       R20 R20 K34 ["getFFlagAvatarSettingsMigrateUseDialog"]
      117 CALL                             R19 1 1
      118 CALL                             R19 0 1
      119 GETIMPORT                        R20 K5 [require]
      121 GETTABLEKS                       R21 R0 K6 ["Src"]
      123 GETTABLEKS                       R21 R21 K33 ["Flags"]
      125 GETTABLEKS                       R21 R21 K35 ["getFFlagReportPresetOnPublish"]
      127 CALL                             R20 1 1
      128 CALL                             R20 0 1
      129 GETIMPORT                        R21 K5 [require]
      131 GETTABLEKS                       R22 R0 K6 ["Src"]
      133 GETTABLEKS                       R22 R22 K33 ["Flags"]
      135 GETTABLEKS                       R22 R22 K36 ["getFFlagAvatarSettingsUnsavedDialogHoldResolution"]
      137 CALL                             R21 1 1
      138 DUPCLOSURE                       R22 K37 [PROTO_16]
      139 CAPTURE                          VAL R17
      140 CAPTURE                          VAL R4
      141 CAPTURE                          VAL R15
      142 CAPTURE                          VAL R5
      143 CAPTURE                          VAL R21
      144 CAPTURE                          VAL R11
      145 CAPTURE                          VAL R12
      146 CAPTURE                          VAL R2
      147 CAPTURE                          VAL R20
      148 CAPTURE                          VAL R1
      149 CAPTURE                          VAL R13
      150 CAPTURE                          VAL R16
      151 CAPTURE                          VAL R18
      152 CAPTURE                          VAL R19
      153 CAPTURE                          VAL R8
      154 CAPTURE                          VAL R9
      155 CAPTURE                          VAL R7
      156 CAPTURE                          VAL R14
      157 RETURN                           R22 1
