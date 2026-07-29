PROTO_0:
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
       16 GETUPVAL                         R0 1
       17 GETTABLEKS                       R0 R0 K4 ["onResolved"]
       19 LOADK                            R1 K5 ["primary"]
       20 CALL                             R0 1 0
       21 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onResolved"]
        3 LOADK                            R1 K1 ["secondary"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 CALL                             R2 0 -1
        3 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        5 CALL                             R0 -1 0
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K1 ["onResolved"]
        9 LOADK                            R1 K2 ["tertiary"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onResolved"]
        3 LOADK                            R1 K1 ["escape"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R3 R0 K1 ["input"]
        6 JUMPIFNOT                        R3 ; [+10]
        7 GETTABLEKS                       R3 R0 K1 ["input"]
        9 GETTABLEKS                       R3 R3 K2 ["BrowserService"]
       11 JUMPIFNOT                        R3 ; [+5]
       12 GETTABLEKS                       R2 R0 K1 ["input"]
       14 GETTABLEKS                       R2 R2 K2 ["BrowserService"]
       16 JUMP                             ; [+6]
       17 GETIMPORT                        R2 K4 [game]
       19 LOADK                            R4 K2 ["BrowserService"]
       20 NAMECALL                         R2 R2 K5 ["GetService"]
       22 CALL                             R2 2 1
       23 GETTABLEKS                       R4 R0 K1 ["input"]
       25 JUMPIFNOT                        R4 ; [+10]
       26 GETTABLEKS                       R4 R0 K1 ["input"]
       28 GETTABLEKS                       R4 R4 K6 ["StartPageService"]
       30 JUMPIFNOT                        R4 ; [+5]
       31 GETTABLEKS                       R3 R0 K1 ["input"]
       33 GETTABLEKS                       R3 R3 K6 ["StartPageService"]
       35 JUMP                             ; [+6]
       36 GETIMPORT                        R3 K4 [game]
       38 LOADK                            R5 K6 ["StartPageService"]
       39 NAMECALL                         R3 R3 K5 ["GetService"]
       41 CALL                             R3 2 1
       42 GETUPVAL                         R4 1
       43 GETUPVAL                         R5 2
       44 DUPTABLE                         R6 K18 [{["uri"], ["type"] = "Warning", ["title"], ["description"], ["primaryAction"], ["secondaryAction"], ["tertiaryAction"], ["escapeAction"], ["showIndeterminateProgressIndicator"] = False}]
       45 GETTABLEKS                       R7 R0 K7 ["uri"]
       47 SETTABLEKS                       R7 R6 K7 ["uri"]
       49 LOADK                            R9 K19 ["BuildSealedDialog"]
       50 LOADK                            R10 K20 ["Title"]
       51 NAMECALL                         R7 R1 K21 ["getText"]
       53 CALL                             R7 3 1
       54 SETTABLEKS                       R7 R6 K10 ["title"]
       56 LOADK                            R8 K22 ["%*\n\n%*"]
       57 LOADK                            R12 K19 ["BuildSealedDialog"]
       58 LOADK                            R13 K23 ["Body"]
       59 NAMECALL                         R10 R1 K21 ["getText"]
       61 CALL                             R10 3 1
       62 LOADK                            R13 K19 ["BuildSealedDialog"]
       63 LOADK                            R14 K24 ["Body.Second"]
       64 NAMECALL                         R11 R1 K21 ["getText"]
       66 CALL                             R11 3 1
       67 NAMECALL                         R8 R8 K25 ["format"]
       69 CALL                             R8 3 1
       70 MOVE                             R7 R8
       71 SETTABLEKS                       R7 R6 K11 ["description"]
       73 DUPTABLE                         R7 K28 [{"uri", "text", "onActivated"}]
       74 GETUPVAL                         R8 3
       75 GETTABLEKS                       R8 R8 K29 ["child"]
       77 GETTABLEKS                       R9 R0 K7 ["uri"]
       79 LOADK                            R10 K30 ["Primary"]
       80 CALL                             R8 2 1
       81 SETTABLEKS                       R8 R7 K7 ["uri"]
       83 LOADK                            R10 K31 ["DialogButton"]
       84 LOADK                            R11 K32 ["Continue"]
       85 NAMECALL                         R8 R1 K21 ["getText"]
       87 CALL                             R8 3 1
       88 SETTABLEKS                       R8 R7 K26 ["text"]
       90 NEWCLOSURE                       R8 P0
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R0
       93 SETTABLEKS                       R8 R7 K27 ["onActivated"]
       95 SETTABLEKS                       R7 R6 K12 ["primaryAction"]
       97 DUPTABLE                         R7 K28 [{"uri", "text", "onActivated"}]
       98 GETUPVAL                         R8 3
       99 GETTABLEKS                       R8 R8 K29 ["child"]
      101 GETTABLEKS                       R9 R0 K7 ["uri"]
      103 LOADK                            R10 K33 ["Secondary"]
      104 CALL                             R8 2 1
      105 SETTABLEKS                       R8 R7 K7 ["uri"]
      107 LOADK                            R10 K31 ["DialogButton"]
      108 LOADK                            R11 K34 ["Cancel"]
      109 NAMECALL                         R8 R1 K21 ["getText"]
      111 CALL                             R8 3 1
      112 SETTABLEKS                       R8 R7 K26 ["text"]
      114 NEWCLOSURE                       R8 P1
      115 CAPTURE                          VAL R0
      116 SETTABLEKS                       R8 R7 K27 ["onActivated"]
      118 SETTABLEKS                       R7 R6 K13 ["secondaryAction"]
      120 DUPTABLE                         R7 K28 [{"uri", "text", "onActivated"}]
      121 GETUPVAL                         R8 3
      122 GETTABLEKS                       R8 R8 K29 ["child"]
      124 GETTABLEKS                       R9 R0 K7 ["uri"]
      126 LOADK                            R10 K35 ["Tertiary"]
      127 CALL                             R8 2 1
      128 SETTABLEKS                       R8 R7 K7 ["uri"]
      130 LOADK                            R10 K31 ["DialogButton"]
      131 LOADK                            R11 K36 ["LearnMore"]
      132 NAMECALL                         R8 R1 K21 ["getText"]
      134 CALL                             R8 3 1
      135 SETTABLEKS                       R8 R7 K26 ["text"]
      137 NEWCLOSURE                       R8 P2
      138 CAPTURE                          VAL R2
      139 CAPTURE                          UPVAL U4
      140 CAPTURE                          VAL R0
      141 SETTABLEKS                       R8 R7 K27 ["onActivated"]
      143 SETTABLEKS                       R7 R6 K14 ["tertiaryAction"]
      145 DUPTABLE                         R7 K38 [{"uri", "onClose"}]
      146 GETUPVAL                         R8 3
      147 GETTABLEKS                       R8 R8 K29 ["child"]
      149 GETTABLEKS                       R9 R0 K7 ["uri"]
      151 LOADK                            R10 K39 ["Escape"]
      152 CALL                             R8 2 1
      153 SETTABLEKS                       R8 R7 K7 ["uri"]
      155 NEWCLOSURE                       R8 P3
      156 CAPTURE                          VAL R0
      157 SETTABLEKS                       R8 R7 K37 ["onClose"]
      159 SETTABLEKS                       R7 R6 K15 ["escapeAction"]
      161 CALL                             R4 2 -1
      162 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["StudioFoundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Types"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R6 R3 K12 ["SharedFlags"]
       37 GETTABLEKS                       R6 R6 K13 ["getFFlagStudioFoundationDialogComponent"]
       39 CALL                             R6 0 1
       40 JUMPIFNOT                        R6 ; [+5]
       41 GETTABLEKS                       R5 R3 K14 ["Components"]
       43 GETTABLEKS                       R5 R5 K2 ["Dialog"]
       45 JUMP                             ; [+9]
       46 GETIMPORT                        R5 K5 [require]
       48 GETTABLEKS                       R6 R0 K10 ["Src"]
       50 GETTABLEKS                       R6 R6 K14 ["Components"]
       52 GETTABLEKS                       R6 R6 K15 ["DEPRECATED_Dialog"]
       54 CALL                             R5 1 1
       55 GETTABLEKS                       R6 R1 K16 ["ContextServices"]
       57 GETTABLEKS                       R6 R6 K17 ["Localization"]
       59 GETTABLEKS                       R7 R3 K18 ["Util"]
       61 GETTABLEKS                       R7 R7 K19 ["StudioUri"]
       63 GETTABLEKS                       R8 R2 K20 ["createElement"]
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K10 ["Src"]
       69 GETTABLEKS                       R10 R10 K21 ["Flags"]
       71 GETTABLEKS                       R10 R10 K22 ["getFFlagStudioBuildSealedDialog"]
       73 CALL                             R9 1 1
       74 CALL                             R9 0 1
       75 GETIMPORT                        R10 K5 [require]
       77 GETTABLEKS                       R11 R0 K10 ["Src"]
       79 GETTABLEKS                       R11 R11 K21 ["Flags"]
       81 GETTABLEKS                       R11 R11 K23 ["getFStringBuildSealLearnMoreLink"]
       83 CALL                             R10 1 1
       84 DUPCLOSURE                       R11 K24 [PROTO_4]
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R5
       88 CAPTURE                          VAL R7
       89 CAPTURE                          VAL R10
       90 JUMPIFNOT                        R9 ; [+18]
       91 GETIMPORT                        R12 K27 [table.freeze]
       93 DUPTABLE                         R13 K30 [{"uri", "component"}]
       94 GETTABLEKS                       R14 R7 K31 ["fromWidget"]
       96 LOADK                            R15 K32 ["Safety"]
       97 LOADK                            R16 K33 ["BuildSealedDialog"]
       98 CALL                             R14 2 1
       99 SETTABLEKS                       R14 R13 K28 ["uri"]
      101 GETTABLEKS                       R14 R2 K34 ["memo"]
      103 MOVE                             R15 R11
      104 CALL                             R14 1 1
      105 SETTABLEKS                       R14 R13 K29 ["component"]
      107 CALL                             R12 1 1
      108 RETURN                           R12 1
      109 LOADNIL                          R12
      110 RETURN                           R12 1
