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
       76 DUPTABLE                         R9 K19 [{["ref"], ["tag"] = "auto-xy", ["onStateChanged"], ["LayoutOrder"], ["testId"]}]
       77 GETTABLEKS                       R10 R0 K20 ["measureRef"]
       79 SETTABLEKS                       R10 R9 K13 ["ref"]
       81 SETTABLEKS                       R4 R9 K16 ["onStateChanged"]
       83 GETTABLEKS                       R10 R0 K17 ["LayoutOrder"]
       85 SETTABLEKS                       R10 R9 K17 ["LayoutOrder"]
       87 GETUPVAL                         R11 5
       88 JUMPIFNOT                        R11 ; [+8]
       89 LOADK                            R11 K21 ["%*-wrapper"]
       90 GETTABLEKS                       R13 R0 K18 ["testId"]
       92 NAMECALL                         R11 R11 K22 ["format"]
       94 CALL                             R11 2 1
       95 MOVE                             R10 R11
       96 JUMP                             ; [+1]
       97 LOADNIL                          R10
       98 SETTABLEKS                       R10 R9 K18 ["testId"]
      100 DUPTABLE                         R10 K25 [{"Button", "UISizeConstraint"}]
      101 GETUPVAL                         R11 4
      102 GETUPVAL                         R12 3
      103 GETTABLEKS                       R12 R12 K23 ["Button"]
      105 DUPTABLE                         R13 K29 [{"ref", "text", "variant", "size", "onActivated", "isDisabled", "testId"}]
      106 SETTABLEKS                       R1 R13 K13 ["ref"]
      108 GETTABLEKS                       R14 R0 K0 ["action"]
      110 GETTABLEKS                       R14 R14 K7 ["text"]
      112 SETTABLEKS                       R14 R13 K7 ["text"]
      114 GETTABLEKS                       R14 R0 K26 ["variant"]
      116 SETTABLEKS                       R14 R13 K26 ["variant"]
      118 GETUPVAL                         R14 3
      119 GETTABLEKS                       R14 R14 K30 ["Enums"]
      121 GETTABLEKS                       R14 R14 K31 ["InputSize"]
      123 GETTABLEKS                       R14 R14 K32 ["XSmall"]
      125 SETTABLEKS                       R14 R13 K27 ["size"]
      127 SETTABLEKS                       R5 R13 K9 ["onActivated"]
      129 GETTABLEKS                       R14 R0 K0 ["action"]
      131 GETTABLEKS                       R14 R14 K33 ["disabled"]
      133 SETTABLEKS                       R14 R13 K28 ["isDisabled"]
      135 GETTABLEKS                       R14 R0 K18 ["testId"]
      137 SETTABLEKS                       R14 R13 K18 ["testId"]
      139 CALL                             R11 2 1
      140 SETTABLEKS                       R11 R10 K23 ["Button"]
      142 GETUPVAL                         R11 4
      143 LOADK                            R12 K24 ["UISizeConstraint"]
      144 DUPTABLE                         R13 K35 [{"MaxSize"}]
      145 GETIMPORT                        R14 K38 [Vector2.new]
      147 JUMPIFNOT                        R6 ; [+3]
      148 GETTABLEKS                       R15 R0 K11 ["widthOverride"]
      150 JUMP                             ; [+1]
      151 LOADN                            R15 120
      152 LOADK                            R16 K39 [∞]
      153 CALL                             R14 2 1
      154 SETTABLEKS                       R14 R13 K34 ["MaxSize"]
      156 CALL                             R11 2 1
      157 SETTABLEKS                       R11 R10 K24 ["UISizeConstraint"]
      159 CALL                             R7 3 -1
      160 RETURN                           R7 -1

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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["LayoutOrder"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K1 ["Hooks"]
        9 GETTABLEKS                       R3 R3 K2 ["useTokens"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R5 R3 K3 ["Gap"]
       15 GETTABLEKS                       R5 R5 K4 ["Small"]
       17 LOADN                            R6 120
       18 CALL                             R4 2 3
       19 GETUPVAL                         R7 4
       20 GETTABLEKS                       R7 R7 K5 ["useCallback"]
       22 NEWCLOSURE                       R8 P0
       23 CAPTURE                          VAL R5
       24 NEWTABLE                         R9 0 1
       26 MOVE                             R10 R5
       27 SETLIST                          R9 R10 1 [1]
       29 CALL                             R7 2 1
       30 GETUPVAL                         R8 4
       31 GETTABLEKS                       R8 R8 K5 ["useCallback"]
       33 NEWCLOSURE                       R9 P1
       34 CAPTURE                          VAL R5
       35 NEWTABLE                         R10 0 1
       37 MOVE                             R11 R5
       38 SETLIST                          R10 R11 1 [1]
       40 CALL                             R8 2 1
       41 GETUPVAL                         R9 4
       42 GETTABLEKS                       R9 R9 K5 ["useCallback"]
       44 NEWCLOSURE                       R10 P2
       45 CAPTURE                          VAL R5
       46 NEWTABLE                         R11 0 1
       48 MOVE                             R12 R5
       49 SETLIST                          R11 R12 1 [1]
       51 CALL                             R9 2 1
       52 MOVE                             R12 R2
       53 CALL                             R12 0 1
       54 MOVE                             R10 R12
       55 MOVE                             R11 R2
       56 CALL                             R11 0 1
       57 GETUPVAL                         R12 5
       58 GETUPVAL                         R13 2
       59 GETTABLEKS                       R13 R13 K6 ["View"]
       61 DUPTABLE                         R14 K12 [{["tag"] = "row align-x-right items-stretch gap-small size-full-0 auto-y", ["onAbsoluteSizeChanged"], [3], ["testId"] = "--dialog-button-group"}]
       62 SETTABLEKS                       R6 R14 K9 ["onAbsoluteSizeChanged"]
       64 SETTABLEKS                       R1 R14 K0 ["LayoutOrder"]
       66 DUPTABLE                         R15 K15 [{"Tertiary", "PrimaryAndSecondary"}]
       67 GETTABLEKS                       R17 R0 K16 ["tertiaryAction"]
       69 JUMPIFNOT                        R17 ; [+34]
       70 GETUPVAL                         R16 5
       71 GETUPVAL                         R17 6
       72 DUPTABLE                         R18 K22 [{["action"], ["variant"], ["measureRef"], ["widthOverride"], [5], ["testId"] = "--dialog-button-tertiary"}]
       73 GETTABLEKS                       R19 R0 K16 ["tertiaryAction"]
       75 SETTABLEKS                       R19 R18 K17 ["action"]
       77 GETUPVAL                         R20 7
       78 JUMPIFNOT                        R20 ; [+3]
       79 GETTABLEKS                       R19 R0 K23 ["tertiaryActionVariant"]
       81 JUMPIF                           R19 ; [+7]
       82 GETUPVAL                         R19 2
       83 GETTABLEKS                       R19 R19 K24 ["Enums"]
       85 GETTABLEKS                       R19 R19 K25 ["ButtonVariant"]
       87 GETTABLEKS                       R19 R19 K26 ["Standard"]
       89 SETTABLEKS                       R19 R18 K18 ["variant"]
       91 SETTABLEKS                       R9 R18 K19 ["measureRef"]
       93 JUMPIFNOT                        R4 ; [+3]
       94 GETTABLEKS                       R19 R4 K27 ["tertiary"]
       96 JUMP                             ; [+1]
       97 LOADNIL                          R19
       98 SETTABLEKS                       R19 R18 K20 ["widthOverride"]
      100 SETTABLEKS                       R11 R18 K0 ["LayoutOrder"]
      102 CALL                             R16 2 1
      103 JUMP                             ; [+1]
      104 LOADNIL                          R16
      105 SETTABLEKS                       R16 R15 K13 ["Tertiary"]
      107 GETUPVAL                         R16 5
      108 GETUPVAL                         R17 2
      109 GETTABLEKS                       R17 R17 K6 ["View"]
      111 DUPTABLE                         R18 K29 [{["tag"] = "row items-stretch gap-small auto-xy", [2], ["testId"]}]
      112 SETTABLEKS                       R10 R18 K0 ["LayoutOrder"]
      114 GETUPVAL                         R20 7
      115 JUMPIFNOT                        R20 ; [+2]
      116 LOADK                            R19 K30 ["--dialog-button-primary-secondary-group"]
      117 JUMP                             ; [+1]
      118 LOADNIL                          R19
      119 SETTABLEKS                       R19 R18 K10 ["testId"]
      121 DUPTABLE                         R19 K33 [{"Primary", "Secondary"}]
      122 GETTABLEKS                       R21 R0 K34 ["primaryAction"]
      124 JUMPIFNOT                        R21 ; [+31]
      125 GETUPVAL                         R20 5
      126 GETUPVAL                         R21 6
      127 DUPTABLE                         R22 K36 [{["action"], ["variant"], ["measureRef"], ["widthOverride"], [5], ["testId"] = "--dialog-button-primary"}]
      128 GETTABLEKS                       R23 R0 K34 ["primaryAction"]
      130 SETTABLEKS                       R23 R22 K17 ["action"]
      132 GETUPVAL                         R23 2
      133 GETTABLEKS                       R23 R23 K24 ["Enums"]
      135 GETTABLEKS                       R23 R23 K25 ["ButtonVariant"]
      137 GETTABLEKS                       R23 R23 K37 ["Emphasis"]
      139 SETTABLEKS                       R23 R22 K18 ["variant"]
      141 SETTABLEKS                       R7 R22 K19 ["measureRef"]
      143 JUMPIFNOT                        R4 ; [+3]
      144 GETTABLEKS                       R23 R4 K38 ["primary"]
      146 JUMP                             ; [+1]
      147 LOADNIL                          R23
      148 SETTABLEKS                       R23 R22 K20 ["widthOverride"]
      150 MOVE                             R23 R2
      151 CALL                             R23 0 1
      152 SETTABLEKS                       R23 R22 K0 ["LayoutOrder"]
      154 CALL                             R20 2 1
      155 JUMP                             ; [+1]
      156 LOADNIL                          R20
      157 SETTABLEKS                       R20 R19 K31 ["Primary"]
      159 GETTABLEKS                       R21 R0 K39 ["secondaryAction"]
      161 JUMPIFNOT                        R21 ; [+31]
      162 GETUPVAL                         R20 5
      163 GETUPVAL                         R21 6
      164 DUPTABLE                         R22 K41 [{["action"], ["variant"], ["measureRef"], ["widthOverride"], [5], ["testId"] = "--dialog-button-secondary"}]
      165 GETTABLEKS                       R23 R0 K39 ["secondaryAction"]
      167 SETTABLEKS                       R23 R22 K17 ["action"]
      169 GETUPVAL                         R23 2
      170 GETTABLEKS                       R23 R23 K24 ["Enums"]
      172 GETTABLEKS                       R23 R23 K25 ["ButtonVariant"]
      174 GETTABLEKS                       R23 R23 K26 ["Standard"]
      176 SETTABLEKS                       R23 R22 K18 ["variant"]
      178 SETTABLEKS                       R8 R22 K19 ["measureRef"]
      180 JUMPIFNOT                        R4 ; [+3]
      181 GETTABLEKS                       R23 R4 K42 ["secondary"]
      183 JUMP                             ; [+1]
      184 LOADNIL                          R23
      185 SETTABLEKS                       R23 R22 K20 ["widthOverride"]
      187 MOVE                             R23 R2
      188 CALL                             R23 0 1
      189 SETTABLEKS                       R23 R22 K0 ["LayoutOrder"]
      191 CALL                             R20 2 1
      192 JUMP                             ; [+1]
      193 LOADNIL                          R20
      194 SETTABLEKS                       R20 R19 K32 ["Secondary"]
      196 CALL                             R16 3 1
      197 SETTABLEKS                       R16 R15 K14 ["PrimaryAndSecondary"]
      199 CALL                             R12 3 -1
      200 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StudioFoundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Framework"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["React"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Hooks"]
       28 GETTABLEKS                       R6 R6 K11 ["useWidgetRef"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R0 K12 ["Types"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K6 [require]
       38 GETTABLEKS                       R8 R0 K10 ["Hooks"]
       40 GETTABLEKS                       R8 R8 K13 ["useBindable"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K6 [require]
       45 GETTABLEKS                       R9 R0 K14 ["Components"]
       47 GETTABLEKS                       R9 R9 K15 ["Dialog"]
       49 GETTABLEKS                       R9 R9 K16 ["useButtonGroupFairWidth"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K6 [require]
       54 GETTABLEKS                       R10 R0 K17 ["SharedFlags"]
       56 GETTABLEKS                       R10 R10 K18 ["getFFlagStudioFoundationDialogDeviceSimFixes"]
       58 CALL                             R9 1 1
       59 CALL                             R9 0 1
       60 GETTABLEKS                       R10 R3 K19 ["Util"]
       62 GETTABLEKS                       R10 R10 K20 ["counter"]
       64 GETTABLEKS                       R11 R4 K21 ["createElement"]
       66 GETTABLEKS                       R12 R3 K22 ["UI"]
       68 GETTABLEKS                       R12 R12 K10 ["Hooks"]
       70 GETTABLEKS                       R12 R12 K23 ["useTooltip"]
       72 GETTABLEKS                       R13 R4 K24 ["memo"]
       74 DUPCLOSURE                       R14 K25 [PROTO_3]
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R12
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R11
       80 CAPTURE                          VAL R9
       81 CALL                             R13 1 1
       82 DUPCLOSURE                       R14 K26 [PROTO_7]
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R10
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R11
       89 CAPTURE                          VAL R13
       90 CAPTURE                          VAL R9
       91 GETTABLEKS                       R15 R4 K24 ["memo"]
       93 MOVE                             R16 R14
       94 CALL                             R15 1 -1
       95 RETURN                           R15 -1
