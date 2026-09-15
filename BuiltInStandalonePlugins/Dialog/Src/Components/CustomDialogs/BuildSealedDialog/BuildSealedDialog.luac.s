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
       56 LOADK                            R7 K22 ["%*\n\n%*"]
       57 LOADK                            R11 K19 ["BuildSealedDialog"]
       58 LOADK                            R12 K23 ["Body"]
       59 NAMECALL                         R9 R1 K21 ["getText"]
       61 CALL                             R9 3 1
       62 LOADK                            R12 K19 ["BuildSealedDialog"]
       63 LOADK                            R13 K24 ["Body.Second"]
       64 NAMECALL                         R10 R1 K21 ["getText"]
       66 CALL                             R10 3 1
       67 NAMECALL                         R7 R7 K25 ["format"]
       69 CALL                             R7 3 1
       70 SETTABLEKS                       R7 R6 K11 ["description"]
       72 DUPTABLE                         R7 K28 [{"uri", "text", "onActivated"}]
       73 GETUPVAL                         R8 3
       74 GETTABLEKS                       R8 R8 K29 ["child"]
       76 GETTABLEKS                       R9 R0 K7 ["uri"]
       78 LOADK                            R10 K30 ["Primary"]
       79 CALL                             R8 2 1
       80 SETTABLEKS                       R8 R7 K7 ["uri"]
       82 LOADK                            R10 K31 ["DialogButton"]
       83 LOADK                            R11 K32 ["Continue"]
       84 NAMECALL                         R8 R1 K21 ["getText"]
       86 CALL                             R8 3 1
       87 SETTABLEKS                       R8 R7 K26 ["text"]
       89 NEWCLOSURE                       R8 P0
       90 CAPTURE                          VAL R3
       91 CAPTURE                          VAL R0
       92 SETTABLEKS                       R8 R7 K27 ["onActivated"]
       94 SETTABLEKS                       R7 R6 K12 ["primaryAction"]
       96 DUPTABLE                         R7 K28 [{"uri", "text", "onActivated"}]
       97 GETUPVAL                         R8 3
       98 GETTABLEKS                       R8 R8 K29 ["child"]
      100 GETTABLEKS                       R9 R0 K7 ["uri"]
      102 LOADK                            R10 K33 ["Secondary"]
      103 CALL                             R8 2 1
      104 SETTABLEKS                       R8 R7 K7 ["uri"]
      106 LOADK                            R10 K31 ["DialogButton"]
      107 LOADK                            R11 K34 ["Cancel"]
      108 NAMECALL                         R8 R1 K21 ["getText"]
      110 CALL                             R8 3 1
      111 SETTABLEKS                       R8 R7 K26 ["text"]
      113 NEWCLOSURE                       R8 P1
      114 CAPTURE                          VAL R0
      115 SETTABLEKS                       R8 R7 K27 ["onActivated"]
      117 SETTABLEKS                       R7 R6 K13 ["secondaryAction"]
      119 DUPTABLE                         R7 K28 [{"uri", "text", "onActivated"}]
      120 GETUPVAL                         R8 3
      121 GETTABLEKS                       R8 R8 K29 ["child"]
      123 GETTABLEKS                       R9 R0 K7 ["uri"]
      125 LOADK                            R10 K35 ["Tertiary"]
      126 CALL                             R8 2 1
      127 SETTABLEKS                       R8 R7 K7 ["uri"]
      129 LOADK                            R10 K31 ["DialogButton"]
      130 LOADK                            R11 K36 ["LearnMore"]
      131 NAMECALL                         R8 R1 K21 ["getText"]
      133 CALL                             R8 3 1
      134 SETTABLEKS                       R8 R7 K26 ["text"]
      136 NEWCLOSURE                       R8 P2
      137 CAPTURE                          VAL R2
      138 CAPTURE                          UPVAL U4
      139 CAPTURE                          VAL R0
      140 SETTABLEKS                       R8 R7 K27 ["onActivated"]
      142 SETTABLEKS                       R7 R6 K14 ["tertiaryAction"]
      144 DUPTABLE                         R7 K38 [{"uri", "onClose"}]
      145 GETUPVAL                         R8 3
      146 GETTABLEKS                       R8 R8 K29 ["child"]
      148 GETTABLEKS                       R9 R0 K7 ["uri"]
      150 LOADK                            R10 K39 ["Escape"]
      151 CALL                             R8 2 1
      152 SETTABLEKS                       R8 R7 K7 ["uri"]
      154 NEWCLOSURE                       R8 P3
      155 CAPTURE                          VAL R0
      156 SETTABLEKS                       R8 R7 K37 ["onClose"]
      158 SETTABLEKS                       R7 R6 K15 ["escapeAction"]
      160 CALL                             R4 2 -1
      161 RETURN                           R4 -1

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
       35 GETTABLEKS                       R5 R3 K12 ["Components"]
       37 GETTABLEKS                       R5 R5 K2 ["Dialog"]
       39 GETTABLEKS                       R6 R1 K13 ["ContextServices"]
       41 GETTABLEKS                       R6 R6 K14 ["Localization"]
       43 GETTABLEKS                       R7 R3 K15 ["Util"]
       45 GETTABLEKS                       R7 R7 K16 ["StudioUri"]
       47 GETTABLEKS                       R8 R2 K17 ["createElement"]
       49 GETIMPORT                        R9 K5 [require]
       51 GETTABLEKS                       R10 R0 K10 ["Src"]
       53 GETTABLEKS                       R10 R10 K18 ["Flags"]
       55 GETTABLEKS                       R10 R10 K19 ["getFFlagStudioBuildSealedDialog"]
       57 CALL                             R9 1 1
       58 CALL                             R9 0 1
       59 GETIMPORT                        R10 K5 [require]
       61 GETTABLEKS                       R11 R0 K10 ["Src"]
       63 GETTABLEKS                       R11 R11 K18 ["Flags"]
       65 GETTABLEKS                       R11 R11 K20 ["getFStringBuildSealLearnMoreLink"]
       67 CALL                             R10 1 1
       68 DUPCLOSURE                       R11 K21 [PROTO_4]
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R10
       74 JUMPIFNOT                        R9 ; [+18]
       75 GETIMPORT                        R12 K24 [table.freeze]
       77 DUPTABLE                         R13 K27 [{"uri", "component"}]
       78 GETTABLEKS                       R14 R7 K28 ["fromWidget"]
       80 LOADK                            R15 K29 ["Safety"]
       81 LOADK                            R16 K30 ["BuildSealedDialog"]
       82 CALL                             R14 2 1
       83 SETTABLEKS                       R14 R13 K25 ["uri"]
       85 GETTABLEKS                       R14 R2 K31 ["memo"]
       87 MOVE                             R15 R11
       88 CALL                             R14 1 1
       89 SETTABLEKS                       R14 R13 K26 ["component"]
       91 CALL                             R12 1 1
       92 RETURN                           R12 1
       93 LOADNIL                          R12
       94 RETURN                           R12 1
