PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+35]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["Enums"]
        7 GETTABLEKS                       R1 R1 K2 ["ControlState"]
        9 GETTABLEKS                       R1 R1 K3 ["Hover"]
       11 JUMPIFNOTEQ                      R0 R1 ; [+27]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K0 ["current"]
       16 LOADK                            R4 K4 ["TextLabel"]
       17 NAMECALL                         R2 R2 K5 ["IsA"]
       19 CALL                             R2 2 1
       20 JUMPIFNOT                        R2 ; [+4]
       21 GETUPVAL                         R1 0
       22 GETTABLEKS                       R1 R1 K0 ["current"]
       24 JUMP                             ; [+7]
       25 GETUPVAL                         R1 0
       26 GETTABLEKS                       R1 R1 K0 ["current"]
       28 LOADK                            R3 K4 ["TextLabel"]
       29 NAMECALL                         R1 R1 K6 ["FindFirstChildWhichIsA"]
       31 CALL                             R1 2 1
       32 JUMPIFNOT                        R1 ; [+6]
       33 GETTABLEKS                       R2 R1 K7 ["TextFits"]
       35 JUMPIF                           R2 ; [+3]
       36 GETUPVAL                         R2 2
       37 CALL                             R2 0 0
       38 RETURN                           R0 0
       39 GETUPVAL                         R1 3
       40 CALL                             R1 0 0
       41 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["action"]
        3 GETTABLEKS                       R0 R0 K1 ["onActivated"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["action"]
        8 GETTABLEKS                       R1 R1 K2 ["uri"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["action"]
        3 GETTABLEKS                       R2 R2 K1 ["uri"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 1
        7 DUPTABLE                         R3 K6 [{["Uri"], ["Text"], ["Location"] = "Below"}]
        8 GETTABLEKS                       R4 R0 K0 ["action"]
       10 GETTABLEKS                       R4 R4 K1 ["uri"]
       12 SETTABLEKS                       R4 R3 K2 ["Uri"]
       14 GETTABLEKS                       R4 R0 K0 ["action"]
       16 GETTABLEKS                       R4 R4 K7 ["text"]
       18 SETTABLEKS                       R4 R3 K3 ["Text"]
       20 CALL                             R2 1 2
       21 GETUPVAL                         R4 2
       22 GETTABLEKS                       R4 R4 K8 ["useCallback"]
       24 NEWCLOSURE                       R5 P0
       25 CAPTURE                          VAL R1
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R3
       29 NEWTABLE                         R6 0 3
       31 MOVE                             R7 R1
       32 MOVE                             R8 R2
       33 MOVE                             R9 R3
       34 SETLIST                          R6 R7 3 [1]
       36 CALL                             R4 2 1
       37 GETUPVAL                         R5 2
       38 GETTABLEKS                       R5 R5 K8 ["useCallback"]
       40 NEWCLOSURE                       R6 P1
       41 CAPTURE                          VAL R0
       42 NEWTABLE                         R7 0 2
       44 GETTABLEKS                       R8 R0 K0 ["action"]
       46 GETTABLEKS                       R8 R8 K9 ["onActivated"]
       48 GETTABLEKS                       R9 R0 K0 ["action"]
       50 GETTABLEKS                       R9 R9 K1 ["uri"]
       52 SETLIST                          R7 R8 2 [1]
       54 CALL                             R5 2 1
       55 GETUPVAL                         R6 2
       56 GETTABLEKS                       R6 R6 K10 ["useEffect"]
       58 NEWCLOSURE                       R7 P2
       59 CAPTURE                          VAL R3
       60 NEWTABLE                         R8 0 1
       62 MOVE                             R9 R3
       63 SETLIST                          R8 R9 1 [1]
       65 CALL                             R6 2 0
       66 GETTABLEKS                       R7 R0 K11 ["widthOverride"]
       68 JUMPIFNOTEQKNIL                  R7 ; [+2]
       70 LOADB                            R6 0 +1
       71 LOADB                            R6 1
       72 GETUPVAL                         R7 4
       73 GETUPVAL                         R8 3
       74 GETTABLEKS                       R8 R8 K12 ["View"]
       76 DUPTABLE                         R9 K18 [{["ref"], ["tag"] = "auto-xy", ["onStateChanged"], ["LayoutOrder"]}]
       77 GETTABLEKS                       R10 R0 K19 ["measureRef"]
       79 SETTABLEKS                       R10 R9 K13 ["ref"]
       81 SETTABLEKS                       R4 R9 K16 ["onStateChanged"]
       83 GETTABLEKS                       R10 R0 K17 ["LayoutOrder"]
       85 SETTABLEKS                       R10 R9 K17 ["LayoutOrder"]
       87 DUPTABLE                         R10 K22 [{"Button", "UISizeConstraint"}]
       88 GETUPVAL                         R11 4
       89 GETUPVAL                         R12 3
       90 GETTABLEKS                       R12 R12 K20 ["Button"]
       92 DUPTABLE                         R13 K27 [{"ref", "text", "variant", "size", "onActivated", "isDisabled", "testId"}]
       93 SETTABLEKS                       R1 R13 K13 ["ref"]
       95 GETTABLEKS                       R14 R0 K0 ["action"]
       97 GETTABLEKS                       R14 R14 K7 ["text"]
       99 SETTABLEKS                       R14 R13 K7 ["text"]
      101 GETTABLEKS                       R14 R0 K23 ["variant"]
      103 SETTABLEKS                       R14 R13 K23 ["variant"]
      105 GETUPVAL                         R14 3
      106 GETTABLEKS                       R14 R14 K28 ["Enums"]
      108 GETTABLEKS                       R14 R14 K29 ["InputSize"]
      110 GETTABLEKS                       R14 R14 K30 ["XSmall"]
      112 SETTABLEKS                       R14 R13 K24 ["size"]
      114 SETTABLEKS                       R5 R13 K9 ["onActivated"]
      116 GETTABLEKS                       R14 R0 K0 ["action"]
      118 GETTABLEKS                       R14 R14 K31 ["disabled"]
      120 SETTABLEKS                       R14 R13 K25 ["isDisabled"]
      122 GETTABLEKS                       R14 R0 K26 ["testId"]
      124 SETTABLEKS                       R14 R13 K26 ["testId"]
      126 CALL                             R11 2 1
      127 SETTABLEKS                       R11 R10 K20 ["Button"]
      129 GETUPVAL                         R11 4
      130 LOADK                            R12 K21 ["UISizeConstraint"]
      131 DUPTABLE                         R13 K33 [{"MaxSize"}]
      132 GETIMPORT                        R14 K36 [Vector2.new]
      134 JUMPIFNOT                        R6 ; [+3]
      135 GETTABLEKS                       R15 R0 K11 ["widthOverride"]
      137 JUMP                             ; [+1]
      138 LOADN                            R15 120
      139 LOADK                            R16 K37 [∞]
      140 CALL                             R14 2 1
      141 SETTABLEKS                       R14 R13 K32 ["MaxSize"]
      143 CALL                             R11 2 1
      144 SETTABLEKS                       R11 R10 K21 ["UISizeConstraint"]
      146 CALL                             R7 3 -1
      147 RETURN                           R7 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["primary"]
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["secondary"]
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["tertiary"]
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["SharedFlags"]
        3 GETTABLEKS                       R3 R3 K1 ["getFFlagStudioFoundationDialogComponent"]
        5 CALL                             R3 0 1
        6 NOT                              R2 R3
        7 FASTCALL2K                       ASSERT R2 K2 ; [+4]
        9 LOADK                            R3 K2 ["This version of the DialogButtonGroup component is deprecated. Use the version from StudioFoundation"]
       10 GETIMPORT                        R1 K4 [assert]
       12 CALL                             R1 2 0
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R2 R0 K5 ["LayoutOrder"]
       16 CALL                             R1 1 1
       17 GETUPVAL                         R2 2
       18 CALL                             R2 0 1
       19 GETUPVAL                         R3 3
       20 GETTABLEKS                       R3 R3 K6 ["Hooks"]
       22 GETTABLEKS                       R3 R3 K7 ["useTokens"]
       24 CALL                             R3 0 1
       25 GETUPVAL                         R4 4
       26 GETTABLEKS                       R5 R3 K8 ["Gap"]
       28 GETTABLEKS                       R5 R5 K9 ["Small"]
       30 LOADN                            R6 120
       31 CALL                             R4 2 3
       32 GETUPVAL                         R7 5
       33 GETTABLEKS                       R7 R7 K10 ["useCallback"]
       35 NEWCLOSURE                       R8 P0
       36 CAPTURE                          VAL R5
       37 NEWTABLE                         R9 0 1
       39 MOVE                             R10 R5
       40 SETLIST                          R9 R10 1 [1]
       42 CALL                             R7 2 1
       43 GETUPVAL                         R8 5
       44 GETTABLEKS                       R8 R8 K10 ["useCallback"]
       46 NEWCLOSURE                       R9 P1
       47 CAPTURE                          VAL R5
       48 NEWTABLE                         R10 0 1
       50 MOVE                             R11 R5
       51 SETLIST                          R10 R11 1 [1]
       53 CALL                             R8 2 1
       54 GETUPVAL                         R9 5
       55 GETTABLEKS                       R9 R9 K10 ["useCallback"]
       57 NEWCLOSURE                       R10 P2
       58 CAPTURE                          VAL R5
       59 NEWTABLE                         R11 0 1
       61 MOVE                             R12 R5
       62 SETLIST                          R11 R12 1 [1]
       64 CALL                             R9 2 1
       65 LOADNIL                          R10
       66 LOADNIL                          R11
       67 MOVE                             R14 R2
       68 CALL                             R14 0 1
       69 MOVE                             R12 R14
       70 MOVE                             R13 R2
       71 CALL                             R13 0 1
       72 MOVE                             R11 R12
       73 MOVE                             R10 R13
       74 GETUPVAL                         R12 6
       75 GETUPVAL                         R13 3
       76 GETTABLEKS                       R13 R13 K11 ["View"]
       78 DUPTABLE                         R14 K17 [{["tag"] = "row align-x-right items-stretch gap-small size-full-0 auto-y", ["onAbsoluteSizeChanged"], ["LayoutOrder"], ["testId"] = "--dialog-button-group"}]
       79 SETTABLEKS                       R6 R14 K14 ["onAbsoluteSizeChanged"]
       81 SETTABLEKS                       R1 R14 K5 ["LayoutOrder"]
       83 DUPTABLE                         R15 K20 [{"Tertiary", "PrimaryAndSecondary"}]
       84 GETTABLEKS                       R17 R0 K21 ["tertiaryAction"]
       86 JUMPIFNOT                        R17 ; [+29]
       87 GETUPVAL                         R16 6
       88 GETUPVAL                         R17 7
       89 DUPTABLE                         R18 K27 [{["action"], ["variant"], ["measureRef"], ["widthOverride"], ["LayoutOrder"], ["testId"] = "--dialog-button-tertiary"}]
       90 GETTABLEKS                       R19 R0 K21 ["tertiaryAction"]
       92 SETTABLEKS                       R19 R18 K22 ["action"]
       94 GETUPVAL                         R19 3
       95 GETTABLEKS                       R19 R19 K28 ["Enums"]
       97 GETTABLEKS                       R19 R19 K29 ["ButtonVariant"]
       99 GETTABLEKS                       R19 R19 K30 ["Standard"]
      101 SETTABLEKS                       R19 R18 K23 ["variant"]
      103 SETTABLEKS                       R9 R18 K24 ["measureRef"]
      105 JUMPIFNOT                        R4 ; [+3]
      106 GETTABLEKS                       R19 R4 K31 ["tertiary"]
      108 JUMP                             ; [+1]
      109 LOADNIL                          R19
      110 SETTABLEKS                       R19 R18 K25 ["widthOverride"]
      112 SETTABLEKS                       R10 R18 K5 ["LayoutOrder"]
      114 CALL                             R16 2 1
      115 JUMP                             ; [+1]
      116 LOADNIL                          R16
      117 SETTABLEKS                       R16 R15 K18 ["Tertiary"]
      119 GETUPVAL                         R16 6
      120 GETUPVAL                         R17 3
      121 GETTABLEKS                       R17 R17 K11 ["View"]
      123 DUPTABLE                         R18 K33 [{["tag"] = "row items-stretch gap-small auto-xy", ["LayoutOrder"]}]
      124 SETTABLEKS                       R11 R18 K5 ["LayoutOrder"]
      126 DUPTABLE                         R19 K36 [{"Primary", "Secondary"}]
      127 GETTABLEKS                       R21 R0 K37 ["primaryAction"]
      129 JUMPIFNOT                        R21 ; [+31]
      130 GETUPVAL                         R20 6
      131 GETUPVAL                         R21 7
      132 DUPTABLE                         R22 K39 [{["action"], ["variant"], ["measureRef"], ["widthOverride"], ["LayoutOrder"], ["testId"] = "--dialog-button-primary"}]
      133 GETTABLEKS                       R23 R0 K37 ["primaryAction"]
      135 SETTABLEKS                       R23 R22 K22 ["action"]
      137 GETUPVAL                         R23 3
      138 GETTABLEKS                       R23 R23 K28 ["Enums"]
      140 GETTABLEKS                       R23 R23 K29 ["ButtonVariant"]
      142 GETTABLEKS                       R23 R23 K40 ["Emphasis"]
      144 SETTABLEKS                       R23 R22 K23 ["variant"]
      146 SETTABLEKS                       R7 R22 K24 ["measureRef"]
      148 JUMPIFNOT                        R4 ; [+3]
      149 GETTABLEKS                       R23 R4 K41 ["primary"]
      151 JUMP                             ; [+1]
      152 LOADNIL                          R23
      153 SETTABLEKS                       R23 R22 K25 ["widthOverride"]
      155 MOVE                             R23 R2
      156 CALL                             R23 0 1
      157 SETTABLEKS                       R23 R22 K5 ["LayoutOrder"]
      159 CALL                             R20 2 1
      160 JUMP                             ; [+1]
      161 LOADNIL                          R20
      162 SETTABLEKS                       R20 R19 K34 ["Primary"]
      164 GETTABLEKS                       R21 R0 K42 ["secondaryAction"]
      166 JUMPIFNOT                        R21 ; [+31]
      167 GETUPVAL                         R20 6
      168 GETUPVAL                         R21 7
      169 DUPTABLE                         R22 K44 [{["action"], ["variant"], ["measureRef"], ["widthOverride"], ["LayoutOrder"], ["testId"] = "--dialog-button-secondary"}]
      170 GETTABLEKS                       R23 R0 K42 ["secondaryAction"]
      172 SETTABLEKS                       R23 R22 K22 ["action"]
      174 GETUPVAL                         R23 3
      175 GETTABLEKS                       R23 R23 K28 ["Enums"]
      177 GETTABLEKS                       R23 R23 K29 ["ButtonVariant"]
      179 GETTABLEKS                       R23 R23 K30 ["Standard"]
      181 SETTABLEKS                       R23 R22 K23 ["variant"]
      183 SETTABLEKS                       R8 R22 K24 ["measureRef"]
      185 JUMPIFNOT                        R4 ; [+3]
      186 GETTABLEKS                       R23 R4 K45 ["secondary"]
      188 JUMP                             ; [+1]
      189 LOADNIL                          R23
      190 SETTABLEKS                       R23 R22 K25 ["widthOverride"]
      192 MOVE                             R23 R2
      193 CALL                             R23 0 1
      194 SETTABLEKS                       R23 R22 K5 ["LayoutOrder"]
      196 CALL                             R20 2 1
      197 JUMP                             ; [+1]
      198 LOADNIL                          R20
      199 SETTABLEKS                       R20 R19 K35 ["Secondary"]
      201 CALL                             R16 3 1
      202 SETTABLEKS                       R16 R15 K19 ["PrimaryAndSecondary"]
      204 CALL                             R12 3 -1
      205 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["StudioFoundation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Src"]
       39 GETTABLEKS                       R6 R6 K12 ["Types"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K11 ["Src"]
       46 GETTABLEKS                       R7 R7 K13 ["Hooks"]
       48 GETTABLEKS                       R7 R7 K14 ["DEPRECATED_useBindable"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K11 ["Src"]
       55 GETTABLEKS                       R8 R8 K13 ["Hooks"]
       57 GETTABLEKS                       R8 R8 K15 ["DEPRECATED_useButtonGroupFairWidth"]
       59 CALL                             R7 1 1
       60 GETTABLEKS                       R8 R2 K16 ["Util"]
       62 GETTABLEKS                       R8 R8 K17 ["counter"]
       64 GETTABLEKS                       R9 R3 K18 ["createElement"]
       66 GETTABLEKS                       R10 R2 K19 ["UI"]
       68 GETTABLEKS                       R10 R10 K13 ["Hooks"]
       70 GETTABLEKS                       R10 R10 K20 ["useTooltip"]
       72 GETTABLEKS                       R11 R4 K13 ["Hooks"]
       74 GETTABLEKS                       R11 R11 K21 ["useWidgetRef"]
       76 GETTABLEKS                       R12 R3 K22 ["memo"]
       78 DUPCLOSURE                       R13 K23 [PROTO_3]
       79 CAPTURE                          VAL R11
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R1
       83 CAPTURE                          VAL R9
       84 CALL                             R12 1 1
       85 DUPCLOSURE                       R13 K24 [PROTO_7]
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R6
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R12
       94 GETTABLEKS                       R14 R3 K22 ["memo"]
       96 MOVE                             R15 R13
       97 CALL                             R14 1 -1
       98 RETURN                           R14 -1
