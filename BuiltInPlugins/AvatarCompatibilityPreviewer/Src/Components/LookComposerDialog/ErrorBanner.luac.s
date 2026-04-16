PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 1
        6 NAMECALL                         R1 R1 K0 ["use"]
        8 CALL                             R1 1 1
        9 GETTABLEKS                       R2 R0 K1 ["errors"]
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R3 R4 K2 ["useState"]
       14 LOADB                            R4 0
       15 CALL                             R3 1 2
       16 JUMPIFEQKNIL                     R2 ; [+4]
       18 LENGTH                           R5 R2
       19 JUMPIFNOTEQKN                    R5 K3 [0] ; [+3]
       21 LOADNIL                          R5
       22 RETURN                           R5 1
       23 LENGTH                           R6 R2
       24 JUMPIFNOTEQKN                    R6 K4 [1] ; [+3]
       26 GETTABLEN                        R5 R2 1
       27 JUMP                             ; [+1]
       28 LOADNIL                          R5
       29 LENGTH                           R7 R2
       30 LOADN                            R8 1
       31 JUMPIFNOTLT                      R8 R7 ; [+5]
       33 GETUPVAL                         R7 3
       34 GETTABLEKS                       R6 R7 K5 ["Warning"]
       36 JUMP                             ; [+10]
       37 GETTABLEKS                       R7 R0 K6 ["hasBlockingError"]
       39 JUMPIFNOT                        R7 ; [+4]
       40 GETUPVAL                         R7 3
       41 GETTABLEKS                       R6 R7 K7 ["Error"]
       43 JUMP                             ; [+3]
       44 GETUPVAL                         R7 3
       45 GETTABLEKS                       R6 R7 K5 ["Warning"]
       47 GETUPVAL                         R9 3
       48 GETTABLEKS                       R8 R9 K7 ["Error"]
       50 JUMPIFNOTEQ                      R6 R8 ; [+3]
       52 LOADK                            R7 K8 ["radius-small size-full-0 auto-y stroke-system-alert"]
       53 JUMP                             ; [+1]
       54 LOADK                            R7 K9 ["radius-small size-full-0 auto-y stroke-system-warning"]
       55 GETUPVAL                         R9 2
       56 GETTABLEKS                       R8 R9 K10 ["createElement"]
       58 GETUPVAL                         R10 2
       59 GETTABLEKS                       R9 R10 K11 ["Fragment"]
       61 NEWTABLE                         R10 0 0
       63 DUPTABLE                         R11 K14 [{"ErrorBannerWrapper", "ErrorDialog"}]
       64 GETUPVAL                         R13 2
       65 GETTABLEKS                       R12 R13 K10 ["createElement"]
       67 GETUPVAL                         R13 4
       68 DUPTABLE                         R14 K17 [{"tag", "LayoutOrder"}]
       69 SETTABLEKS                       R7 R14 K15 ["tag"]
       71 GETTABLEKS                       R15 R0 K16 ["LayoutOrder"]
       73 SETTABLEKS                       R15 R14 K16 ["LayoutOrder"]
       75 DUPTABLE                         R15 K19 [{"ErrorBannerContent"}]
       76 GETUPVAL                         R17 2
       77 GETTABLEKS                       R16 R17 K10 ["createElement"]
       79 GETUPVAL                         R17 5
       80 DUPTABLE                         R18 K24 [{"variant", "severity", "title", "actions"}]
       81 GETUPVAL                         R20 6
       82 GETTABLEKS                       R19 R20 K25 ["Standard"]
       84 SETTABLEKS                       R19 R18 K20 ["variant"]
       86 SETTABLEKS                       R6 R18 K21 ["severity"]
       88 LENGTH                           R20 R2
       89 JUMPIFNOTEQKN                    R20 K4 [1] ; [+3]
       91 MOVE                             R19 R5
       92 JUMP                             ; [+17]
       93 LOADK                            R21 K26 ["LookComposerDialog"]
       94 LOADK                            R22 K27 ["WarningsFound"]
       95 DUPTABLE                         R23 K29 [{"count"}]
       96 LENGTH                           R26 R2
       97 FASTCALL1                        MATH_FLOOR R26 ; [+2]
       98 GETIMPORT                        R25 K32 [math.floor]
      100 CALL                             R25 1 1
      101 FASTCALL1                        TOSTRING R25 ; [+2]
      102 GETIMPORT                        R24 K34 [tostring]
      104 CALL                             R24 1 1
      105 SETTABLEKS                       R24 R23 K28 ["count"]
      107 NAMECALL                         R19 R1 K35 ["getText"]
      109 CALL                             R19 4 1
      110 SETTABLEKS                       R19 R18 K22 ["title"]
      112 LENGTH                           R20 R2
      113 LOADN                            R21 1
      114 JUMPIFNOTLT                      R21 R20 ; [+23]
      116 NEWTABLE                         R19 0 1
      118 DUPTABLE                         R20 K38 [{"text", "variant", "onActivated"}]
      119 LOADK                            R23 K26 ["LookComposerDialog"]
      120 LOADK                            R24 K39 ["SeeDetails"]
      121 NAMECALL                         R21 R1 K35 ["getText"]
      123 CALL                             R21 3 1
      124 SETTABLEKS                       R21 R20 K36 ["text"]
      126 GETUPVAL                         R22 7
      127 GETTABLEKS                       R21 R22 K25 ["Standard"]
      129 SETTABLEKS                       R21 R20 K20 ["variant"]
      131 NEWCLOSURE                       R21 P0
      132 CAPTURE                          VAL R4
      133 SETTABLEKS                       R21 R20 K37 ["onActivated"]
      135 SETLIST                          R19 R20 1 [1]
      137 JUMP                             ; [+1]
      138 LOADNIL                          R19
      139 SETTABLEKS                       R19 R18 K23 ["actions"]
      141 CALL                             R16 2 1
      142 SETTABLEKS                       R16 R15 K18 ["ErrorBannerContent"]
      144 CALL                             R12 3 1
      145 SETTABLEKS                       R12 R11 K12 ["ErrorBannerWrapper"]
      147 JUMPIFNOT                        R3 ; [+17]
      148 LENGTH                           R13 R2
      149 LOADN                            R14 1
      150 JUMPIFNOTLT                      R14 R13 ; [+14]
      152 GETUPVAL                         R13 2
      153 GETTABLEKS                       R12 R13 K10 ["createElement"]
      155 GETUPVAL                         R13 8
      156 DUPTABLE                         R14 K41 [{"errors", "onClose"}]
      157 SETTABLEKS                       R2 R14 K1 ["errors"]
      159 NEWCLOSURE                       R15 P1
      160 CAPTURE                          VAL R4
      161 SETTABLEKS                       R15 R14 K40 ["onClose"]
      163 CALL                             R12 2 1
      164 JUMP                             ; [+1]
      165 LOADNIL                          R12
      166 SETTABLEKS                       R12 R11 K13 ["ErrorDialog"]
      168 CALL                             R8 3 -1
      169 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["View"]
       23 GETTABLEKS                       R4 R2 K10 ["SystemBanner"]
       25 GETTABLEKS                       R6 R2 K11 ["Enums"]
       27 GETTABLEKS                       R5 R6 K12 ["ButtonVariant"]
       29 GETTABLEKS                       R7 R2 K11 ["Enums"]
       31 GETTABLEKS                       R6 R7 K13 ["AlertVariant"]
       33 GETTABLEKS                       R8 R2 K11 ["Enums"]
       35 GETTABLEKS                       R7 R8 K14 ["AlertSeverity"]
       37 GETIMPORT                        R8 K5 [require]
       39 GETTABLEKS                       R10 R0 K6 ["Packages"]
       41 GETTABLEKS                       R9 R10 K15 ["Framework"]
       43 CALL                             R8 1 1
       44 GETTABLEKS                       R10 R8 K16 ["ContextServices"]
       46 GETTABLEKS                       R9 R10 K17 ["Localization"]
       48 GETIMPORT                        R10 K5 [require]
       50 GETTABLEKS                       R13 R0 K18 ["Src"]
       52 GETTABLEKS                       R12 R13 K19 ["Flags"]
       54 GETTABLEKS                       R11 R12 K20 ["getFFlagAvatarPreviewerLookComposer"]
       56 CALL                             R10 1 1
       57 GETIMPORT                        R11 K5 [require]
       59 GETTABLEKS                       R15 R0 K18 ["Src"]
       61 GETTABLEKS                       R14 R15 K21 ["Components"]
       63 GETTABLEKS                       R13 R14 K22 ["LookComposerDialog"]
       65 GETTABLEKS                       R12 R13 K23 ["ErrorDialog"]
       67 CALL                             R11 1 1
       68 DUPCLOSURE                       R12 K24 [PROTO_2]
       69 CAPTURE                          VAL R10
       70 CAPTURE                          VAL R9
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R11
       78 RETURN                           R12 1
