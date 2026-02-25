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
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R2 R3 K1 ["useContext"]
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R3 R4 K2 ["Context"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R3 R2 K3 ["errorsList"]
       18 GETUPVAL                         R5 2
       19 GETTABLEKS                       R4 R5 K4 ["useState"]
       21 LOADB                            R5 0
       22 CALL                             R4 1 2
       23 JUMPIFEQKNIL                     R3 ; [+4]
       25 LENGTH                           R6 R3
       26 JUMPIFNOTEQKN                    R6 K5 [0] ; [+3]
       28 LOADNIL                          R6
       29 RETURN                           R6 1
       30 LOADB                            R6 0
       31 MOVE                             R7 R3
       32 LOADNIL                          R8
       33 LOADNIL                          R9
       34 FORGPREP                         R7
       35 GETIMPORT                        R12 K8 [string.lower]
       37 MOVE                             R13 R11
       38 CALL                             R12 1 1
       39 LOADK                            R14 K9 ["creationlimitreached"]
       40 NAMECALL                         R12 R12 K10 ["find"]
       42 CALL                             R12 2 1
       43 JUMPIFEQKNIL                     R12 ; [+3]
       45 LOADB                            R6 1
       46 JUMP                             ; [+2]
       47 FORGLOOP                         R7 2 ; [-13]
       49 LENGTH                           R8 R3
       50 JUMPIFNOTEQKN                    R8 K11 [1] ; [+7]
       52 LOADK                            R9 K12 ["LookComposerDialog"]
       53 GETTABLEN                        R10 R3 1
       54 NAMECALL                         R7 R1 K13 ["getText"]
       56 CALL                             R7 3 1
       57 JUMP                             ; [+1]
       58 LOADNIL                          R7
       59 LENGTH                           R9 R3
       60 LOADN                            R10 1
       61 JUMPIFNOTLT                      R10 R9 ; [+5]
       63 GETUPVAL                         R9 4
       64 GETTABLEKS                       R8 R9 K14 ["Warning"]
       66 JUMP                             ; [+8]
       67 JUMPIFNOT                        R6 ; [+4]
       68 GETUPVAL                         R9 4
       69 GETTABLEKS                       R8 R9 K15 ["Error"]
       71 JUMP                             ; [+3]
       72 GETUPVAL                         R9 4
       73 GETTABLEKS                       R8 R9 K14 ["Warning"]
       75 GETUPVAL                         R10 2
       76 GETTABLEKS                       R9 R10 K16 ["createElement"]
       78 GETUPVAL                         R11 2
       79 GETTABLEKS                       R10 R11 K17 ["Fragment"]
       81 NEWTABLE                         R11 0 0
       83 DUPTABLE                         R12 K20 [{"ErrorBannerWrapper", "ErrorDialog"}]
       84 GETUPVAL                         R14 2
       85 GETTABLEKS                       R13 R14 K16 ["createElement"]
       87 GETUPVAL                         R14 5
       88 DUPTABLE                         R15 K23 [{"tag", "LayoutOrder"}]
       89 LOADK                            R16 K24 ["radius-small size-full-0 auto-y stroke-system-alert"]
       90 SETTABLEKS                       R16 R15 K21 ["tag"]
       92 GETTABLEKS                       R16 R0 K22 ["LayoutOrder"]
       94 SETTABLEKS                       R16 R15 K22 ["LayoutOrder"]
       96 DUPTABLE                         R16 K26 [{"ErrorBannerContent"}]
       97 GETUPVAL                         R18 2
       98 GETTABLEKS                       R17 R18 K16 ["createElement"]
      100 GETUPVAL                         R18 6
      101 DUPTABLE                         R19 K31 [{"variant", "severity", "title", "actions"}]
      102 GETUPVAL                         R21 7
      103 GETTABLEKS                       R20 R21 K32 ["Standard"]
      105 SETTABLEKS                       R20 R19 K27 ["variant"]
      107 SETTABLEKS                       R8 R19 K28 ["severity"]
      109 LENGTH                           R21 R3
      110 JUMPIFNOTEQKN                    R21 K11 [1] ; [+3]
      112 MOVE                             R20 R7
      113 JUMP                             ; [+17]
      114 LOADK                            R22 K12 ["LookComposerDialog"]
      115 LOADK                            R23 K33 ["WarningsFound"]
      116 DUPTABLE                         R24 K35 [{"count"}]
      117 LENGTH                           R27 R3
      118 FASTCALL1                        MATH_FLOOR R27 ; [+2]
      119 GETIMPORT                        R26 K38 [math.floor]
      121 CALL                             R26 1 1
      122 FASTCALL1                        TOSTRING R26 ; [+2]
      123 GETIMPORT                        R25 K40 [tostring]
      125 CALL                             R25 1 1
      126 SETTABLEKS                       R25 R24 K34 ["count"]
      128 NAMECALL                         R20 R1 K13 ["getText"]
      130 CALL                             R20 4 1
      131 SETTABLEKS                       R20 R19 K29 ["title"]
      133 LENGTH                           R21 R3
      134 LOADN                            R22 1
      135 JUMPIFNOTLT                      R22 R21 ; [+23]
      137 NEWTABLE                         R20 0 1
      139 DUPTABLE                         R21 K43 [{"text", "variant", "onActivated"}]
      140 LOADK                            R24 K12 ["LookComposerDialog"]
      141 LOADK                            R25 K44 ["SeeDetails"]
      142 NAMECALL                         R22 R1 K13 ["getText"]
      144 CALL                             R22 3 1
      145 SETTABLEKS                       R22 R21 K41 ["text"]
      147 GETUPVAL                         R23 8
      148 GETTABLEKS                       R22 R23 K32 ["Standard"]
      150 SETTABLEKS                       R22 R21 K27 ["variant"]
      152 NEWCLOSURE                       R22 P0
      153 CAPTURE                          VAL R5
      154 SETTABLEKS                       R22 R21 K42 ["onActivated"]
      156 SETLIST                          R20 R21 1 [1]
      158 JUMP                             ; [+1]
      159 LOADNIL                          R20
      160 SETTABLEKS                       R20 R19 K30 ["actions"]
      162 CALL                             R17 2 1
      163 SETTABLEKS                       R17 R16 K25 ["ErrorBannerContent"]
      165 CALL                             R13 3 1
      166 SETTABLEKS                       R13 R12 K18 ["ErrorBannerWrapper"]
      168 JUMPIFNOT                        R4 ; [+17]
      169 LENGTH                           R14 R3
      170 LOADN                            R15 1
      171 JUMPIFNOTLT                      R15 R14 ; [+14]
      173 GETUPVAL                         R14 2
      174 GETTABLEKS                       R13 R14 K16 ["createElement"]
      176 GETUPVAL                         R14 9
      177 DUPTABLE                         R15 K47 [{"errors", "onClose"}]
      178 SETTABLEKS                       R3 R15 K45 ["errors"]
      180 NEWCLOSURE                       R16 P1
      181 CAPTURE                          VAL R5
      182 SETTABLEKS                       R16 R15 K46 ["onClose"]
      184 CALL                             R13 2 1
      185 JUMP                             ; [+1]
      186 LOADNIL                          R13
      187 SETTABLEKS                       R13 R12 K19 ["ErrorDialog"]
      189 CALL                             R9 3 -1
      190 RETURN                           R9 -1

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
       52 GETTABLEKS                       R12 R13 K19 ["Components"]
       54 GETTABLEKS                       R11 R12 K20 ["LookContext"]
       56 CALL                             R10 1 1
       57 GETIMPORT                        R11 K5 [require]
       59 GETTABLEKS                       R14 R0 K18 ["Src"]
       61 GETTABLEKS                       R13 R14 K21 ["Flags"]
       63 GETTABLEKS                       R12 R13 K22 ["getFFlagAvatarPreviewerLookComposer"]
       65 CALL                             R11 1 1
       66 GETIMPORT                        R12 K5 [require]
       68 GETTABLEKS                       R16 R0 K18 ["Src"]
       70 GETTABLEKS                       R15 R16 K19 ["Components"]
       72 GETTABLEKS                       R14 R15 K23 ["LookComposerDialog"]
       74 GETTABLEKS                       R13 R14 K24 ["ErrorDialog"]
       76 CALL                             R12 1 1
       77 DUPCLOSURE                       R13 K25 [PROTO_2]
       78 CAPTURE                          VAL R11
       79 CAPTURE                          VAL R9
       80 CAPTURE                          VAL R1
       81 CAPTURE                          VAL R10
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R12
       88 RETURN                           R13 1
