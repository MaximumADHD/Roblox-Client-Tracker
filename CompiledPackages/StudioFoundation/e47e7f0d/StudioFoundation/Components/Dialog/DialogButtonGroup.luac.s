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
       61 DUPTABLE                         R14 K12 [{["tag"] = "component-dialog-button-group row size-full-0 auto-y items-stretch gap-small align-x-right", ["onAbsoluteSizeChanged"], [3], ["testId"] = "--dialog-button-group"}]
       62 SETTABLEKS                       R6 R14 K9 ["onAbsoluteSizeChanged"]
       64 SETTABLEKS                       R1 R14 K0 ["LayoutOrder"]
       66 DUPTABLE                         R15 K15 [{"Tertiary", "PrimaryAndSecondary"}]
       67 GETTABLEKS                       R17 R0 K16 ["tertiaryAction"]
       69 JUMPIFNOT                        R17 ; [+29]
       70 GETUPVAL                         R16 5
       71 GETUPVAL                         R17 6
       72 DUPTABLE                         R18 K22 [{["action"], ["variant"], ["measureRef"], ["widthOverride"], [5], ["testId"] = "--dialog-button-tertiary"}]
       73 GETTABLEKS                       R19 R0 K16 ["tertiaryAction"]
       75 SETTABLEKS                       R19 R18 K17 ["action"]
       77 GETUPVAL                         R19 2
       78 GETTABLEKS                       R19 R19 K23 ["Enums"]
       80 GETTABLEKS                       R19 R19 K24 ["ButtonVariant"]
       82 GETTABLEKS                       R19 R19 K25 ["Standard"]
       84 SETTABLEKS                       R19 R18 K18 ["variant"]
       86 SETTABLEKS                       R9 R18 K19 ["measureRef"]
       88 JUMPIFNOT                        R4 ; [+3]
       89 GETTABLEKS                       R19 R4 K26 ["tertiary"]
       91 JUMP                             ; [+1]
       92 LOADNIL                          R19
       93 SETTABLEKS                       R19 R18 K20 ["widthOverride"]
       95 SETTABLEKS                       R11 R18 K0 ["LayoutOrder"]
       97 CALL                             R16 2 1
       98 JUMP                             ; [+1]
       99 LOADNIL                          R16
      100 SETTABLEKS                       R16 R15 K13 ["Tertiary"]
      102 GETUPVAL                         R16 5
      103 GETUPVAL                         R17 2
      104 GETTABLEKS                       R17 R17 K6 ["View"]
      106 DUPTABLE                         R18 K28 [{["tag"] = "row auto-xy items-stretch gap-small", [2]}]
      107 SETTABLEKS                       R10 R18 K0 ["LayoutOrder"]
      109 DUPTABLE                         R19 K31 [{"Primary", "Secondary"}]
      110 GETTABLEKS                       R21 R0 K32 ["primaryAction"]
      112 JUMPIFNOT                        R21 ; [+31]
      113 GETUPVAL                         R20 5
      114 GETUPVAL                         R21 6
      115 DUPTABLE                         R22 K34 [{["action"], ["variant"], ["measureRef"], ["widthOverride"], [5], ["testId"] = "--dialog-button-primary"}]
      116 GETTABLEKS                       R23 R0 K32 ["primaryAction"]
      118 SETTABLEKS                       R23 R22 K17 ["action"]
      120 GETUPVAL                         R23 2
      121 GETTABLEKS                       R23 R23 K23 ["Enums"]
      123 GETTABLEKS                       R23 R23 K24 ["ButtonVariant"]
      125 GETTABLEKS                       R23 R23 K35 ["Emphasis"]
      127 SETTABLEKS                       R23 R22 K18 ["variant"]
      129 SETTABLEKS                       R7 R22 K19 ["measureRef"]
      131 JUMPIFNOT                        R4 ; [+3]
      132 GETTABLEKS                       R23 R4 K36 ["primary"]
      134 JUMP                             ; [+1]
      135 LOADNIL                          R23
      136 SETTABLEKS                       R23 R22 K20 ["widthOverride"]
      138 MOVE                             R23 R2
      139 CALL                             R23 0 1
      140 SETTABLEKS                       R23 R22 K0 ["LayoutOrder"]
      142 CALL                             R20 2 1
      143 JUMP                             ; [+1]
      144 LOADNIL                          R20
      145 SETTABLEKS                       R20 R19 K29 ["Primary"]
      147 GETTABLEKS                       R21 R0 K37 ["secondaryAction"]
      149 JUMPIFNOT                        R21 ; [+31]
      150 GETUPVAL                         R20 5
      151 GETUPVAL                         R21 6
      152 DUPTABLE                         R22 K39 [{["action"], ["variant"], ["measureRef"], ["widthOverride"], [5], ["testId"] = "--dialog-button-secondary"}]
      153 GETTABLEKS                       R23 R0 K37 ["secondaryAction"]
      155 SETTABLEKS                       R23 R22 K17 ["action"]
      157 GETUPVAL                         R23 2
      158 GETTABLEKS                       R23 R23 K23 ["Enums"]
      160 GETTABLEKS                       R23 R23 K24 ["ButtonVariant"]
      162 GETTABLEKS                       R23 R23 K25 ["Standard"]
      164 SETTABLEKS                       R23 R22 K18 ["variant"]
      166 SETTABLEKS                       R8 R22 K19 ["measureRef"]
      168 JUMPIFNOT                        R4 ; [+3]
      169 GETTABLEKS                       R23 R4 K40 ["secondary"]
      171 JUMP                             ; [+1]
      172 LOADNIL                          R23
      173 SETTABLEKS                       R23 R22 K20 ["widthOverride"]
      175 MOVE                             R23 R2
      176 CALL                             R23 0 1
      177 SETTABLEKS                       R23 R22 K0 ["LayoutOrder"]
      179 CALL                             R20 2 1
      180 JUMP                             ; [+1]
      181 LOADNIL                          R20
      182 SETTABLEKS                       R20 R19 K30 ["Secondary"]
      184 CALL                             R16 3 1
      185 SETTABLEKS                       R16 R15 K14 ["PrimaryAndSecondary"]
      187 CALL                             R12 3 -1
      188 RETURN                           R12 -1

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
       52 GETTABLEKS                       R9 R3 K17 ["Util"]
       54 GETTABLEKS                       R9 R9 K18 ["counter"]
       56 GETTABLEKS                       R10 R4 K19 ["createElement"]
       58 GETTABLEKS                       R11 R3 K20 ["UI"]
       60 GETTABLEKS                       R11 R11 K10 ["Hooks"]
       62 GETTABLEKS                       R11 R11 K21 ["useTooltip"]
       64 GETTABLEKS                       R12 R4 K22 ["memo"]
       66 DUPCLOSURE                       R13 K23 [PROTO_3]
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R11
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R10
       72 CALL                             R12 1 1
       73 DUPCLOSURE                       R13 K24 [PROTO_7]
       74 CAPTURE                          VAL R7
       75 CAPTURE                          VAL R9
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R10
       80 CAPTURE                          VAL R12
       81 GETTABLEKS                       R14 R4 K22 ["memo"]
       83 MOVE                             R15 R13
       84 CALL                             R14 1 -1
       85 RETURN                           R14 -1
