PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+35]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K1 ["Enums"]
        7 GETTABLEKS                       R2 R3 K2 ["ControlState"]
        9 GETTABLEKS                       R1 R2 K3 ["Hover"]
       11 JUMPIFNOTEQ                      R0 R1 ; [+27]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R2 R3 K0 ["current"]
       16 LOADK                            R4 K4 ["TextLabel"]
       17 NAMECALL                         R2 R2 K5 ["IsA"]
       19 CALL                             R2 2 1
       20 JUMPIFNOT                        R2 ; [+4]
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R1 R2 K0 ["current"]
       24 JUMP                             ; [+7]
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R1 R2 K0 ["current"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["action"]
        3 GETTABLEKS                       R0 R1 K1 ["onActivated"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["action"]
        8 GETTABLEKS                       R1 R2 K2 ["uri"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["action"]
        3 GETTABLEKS                       R2 R3 K1 ["uri"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 1
        7 DUPTABLE                         R3 K5 [{"Uri", "Text", "Location"}]
        8 GETTABLEKS                       R5 R0 K0 ["action"]
       10 GETTABLEKS                       R4 R5 K1 ["uri"]
       12 SETTABLEKS                       R4 R3 K2 ["Uri"]
       14 GETTABLEKS                       R5 R0 K0 ["action"]
       16 GETTABLEKS                       R4 R5 K6 ["text"]
       18 SETTABLEKS                       R4 R3 K3 ["Text"]
       20 LOADK                            R4 K7 ["Below"]
       21 SETTABLEKS                       R4 R3 K4 ["Location"]
       23 CALL                             R2 1 2
       24 GETUPVAL                         R5 2
       25 GETTABLEKS                       R4 R5 K8 ["useCallback"]
       27 NEWCLOSURE                       R5 P0
       28 CAPTURE                          VAL R1
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R3
       32 NEWTABLE                         R6 0 3
       34 MOVE                             R7 R1
       35 MOVE                             R8 R2
       36 MOVE                             R9 R3
       37 SETLIST                          R6 R7 3 [1]
       39 CALL                             R4 2 1
       40 GETUPVAL                         R6 2
       41 GETTABLEKS                       R5 R6 K8 ["useCallback"]
       43 NEWCLOSURE                       R6 P1
       44 CAPTURE                          VAL R0
       45 NEWTABLE                         R7 0 2
       47 GETTABLEKS                       R9 R0 K0 ["action"]
       49 GETTABLEKS                       R8 R9 K9 ["onActivated"]
       51 GETTABLEKS                       R10 R0 K0 ["action"]
       53 GETTABLEKS                       R9 R10 K1 ["uri"]
       55 SETLIST                          R7 R8 2 [1]
       57 CALL                             R5 2 1
       58 GETUPVAL                         R7 2
       59 GETTABLEKS                       R6 R7 K10 ["useEffect"]
       61 NEWCLOSURE                       R7 P2
       62 CAPTURE                          VAL R3
       63 NEWTABLE                         R8 0 1
       65 MOVE                             R9 R3
       66 SETLIST                          R8 R9 1 [1]
       68 CALL                             R6 2 0
       69 GETUPVAL                         R6 4
       70 GETUPVAL                         R8 3
       71 GETTABLEKS                       R7 R8 K11 ["View"]
       73 DUPTABLE                         R8 K17 [{"ref", "tag", "onStateChanged", "Size", "LayoutOrder"}]
       74 GETTABLEKS                       R9 R0 K18 ["sizeRef"]
       76 SETTABLEKS                       R9 R8 K12 ["ref"]
       78 LOADK                            R9 K19 ["auto-xy"]
       79 SETTABLEKS                       R9 R8 K13 ["tag"]
       81 SETTABLEKS                       R4 R8 K14 ["onStateChanged"]
       83 GETTABLEKS                       R9 R0 K20 ["sizeBinding"]
       85 SETTABLEKS                       R9 R8 K15 ["Size"]
       87 GETTABLEKS                       R9 R0 K16 ["LayoutOrder"]
       89 SETTABLEKS                       R9 R8 K16 ["LayoutOrder"]
       91 DUPTABLE                         R9 K23 [{"Button", "UISizeConstraint"}]
       92 GETUPVAL                         R10 4
       93 GETUPVAL                         R12 3
       94 GETTABLEKS                       R11 R12 K21 ["Button"]
       96 DUPTABLE                         R12 K28 [{"ref", "text", "variant", "size", "fillBehavior", "onActivated", "testId"}]
       97 SETTABLEKS                       R1 R12 K12 ["ref"]
       99 GETTABLEKS                       R14 R0 K0 ["action"]
      101 GETTABLEKS                       R13 R14 K6 ["text"]
      103 SETTABLEKS                       R13 R12 K6 ["text"]
      105 GETTABLEKS                       R13 R0 K24 ["variant"]
      107 SETTABLEKS                       R13 R12 K24 ["variant"]
      109 GETUPVAL                         R16 3
      110 GETTABLEKS                       R15 R16 K29 ["Enums"]
      112 GETTABLEKS                       R14 R15 K30 ["InputSize"]
      114 GETTABLEKS                       R13 R14 K31 ["XSmall"]
      116 SETTABLEKS                       R13 R12 K25 ["size"]
      118 GETUPVAL                         R16 3
      119 GETTABLEKS                       R15 R16 K29 ["Enums"]
      121 GETTABLEKS                       R14 R15 K32 ["FillBehavior"]
      123 GETTABLEKS                       R13 R14 K33 ["Fill"]
      125 SETTABLEKS                       R13 R12 K26 ["fillBehavior"]
      127 SETTABLEKS                       R5 R12 K9 ["onActivated"]
      129 GETTABLEKS                       R13 R0 K27 ["testId"]
      131 SETTABLEKS                       R13 R12 K27 ["testId"]
      133 CALL                             R10 2 1
      134 SETTABLEKS                       R10 R9 K21 ["Button"]
      136 GETUPVAL                         R10 4
      137 LOADK                            R11 K22 ["UISizeConstraint"]
      138 DUPTABLE                         R12 K35 [{"MaxSize"}]
      139 GETTABLEKS                       R13 R0 K36 ["maxSizeBinding"]
      141 SETTABLEKS                       R13 R12 K34 ["MaxSize"]
      143 CALL                             R10 2 1
      144 SETTABLEKS                       R10 R9 K22 ["UISizeConstraint"]
      146 CALL                             R6 3 -1
      147 RETURN                           R6 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R3 K1 ["X"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQKN                    R1 K0 [0] ; [+7]
        3 GETIMPORT                        R1 K3 [Vector2.new]
        5 LOADK                            R2 K4 [∞]
        6 LOADK                            R3 K4 [∞]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1
        9 GETUPVAL                         R5 0
       10 SUBK                             R4 R5 K5 [1]
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R6 R7 K6 ["Gap"]
       14 GETTABLEKS                       R5 R6 K7 ["Small"]
       16 MUL                              R3 R4 R5
       17 SUB                              R2 R0 R3
       18 GETUPVAL                         R3 0
       19 DIV                              R1 R2 R3
       20 GETIMPORT                        R2 K3 [Vector2.new]
       22 FASTCALL2K                       MATH_MAX R1 K0 ; [+5]
       24 MOVE                             R4 R1
       25 LOADK                            R5 K0 [0]
       26 GETIMPORT                        R3 K10 [math.max]
       28 CALL                             R3 2 1
       29 LOADK                            R4 K4 [∞]
       30 CALL                             R2 2 -1
       31 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 NAMECALL                         R0 R0 K0 ["map"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["LayoutOrder"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R3 R4 K1 ["useBinding"]
        9 LOADN                            R4 0
       10 CALL                             R3 1 2
       11 GETUPVAL                         R6 2
       12 GETTABLEKS                       R5 R6 K2 ["useCallback"]
       14 NEWCLOSURE                       R6 P0
       15 CAPTURE                          VAL R4
       16 NEWTABLE                         R7 0 1
       18 MOVE                             R8 R4
       19 SETLIST                          R7 R8 1 [1]
       21 CALL                             R5 2 1
       22 GETTABLEKS                       R9 R0 K3 ["primaryAction"]
       24 JUMPIFEQKNIL                     R9 ; [+3]
       26 LOADN                            R8 1
       27 JUMP                             ; [+1]
       28 LOADN                            R8 0
       29 GETTABLEKS                       R10 R0 K4 ["secondaryAction"]
       31 JUMPIFEQKNIL                     R10 ; [+3]
       33 LOADN                            R9 1
       34 JUMP                             ; [+1]
       35 LOADN                            R9 0
       36 ADD                              R7 R8 R9
       37 GETTABLEKS                       R9 R0 K5 ["tertiaryAction"]
       39 JUMPIFEQKNIL                     R9 ; [+3]
       41 LOADN                            R8 1
       42 JUMP                             ; [+1]
       43 LOADN                            R8 0
       44 ADD                              R6 R7 R8
       45 GETUPVAL                         R9 3
       46 GETTABLEKS                       R8 R9 K6 ["Hooks"]
       48 GETTABLEKS                       R7 R8 K7 ["useTokens"]
       50 CALL                             R7 0 1
       51 GETUPVAL                         R9 2
       52 GETTABLEKS                       R8 R9 K8 ["useMemo"]
       54 NEWCLOSURE                       R9 P1
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R7
       58 NEWTABLE                         R10 0 3
       60 MOVE                             R11 R3
       61 MOVE                             R12 R6
       62 MOVE                             R13 R7
       63 SETLIST                          R10 R11 3 [1]
       65 CALL                             R8 2 1
       66 GETUPVAL                         R9 4
       67 CALL                             R9 0 2
       68 GETUPVAL                         R11 5
       69 GETUPVAL                         R13 3
       70 GETTABLEKS                       R12 R13 K9 ["View"]
       72 DUPTABLE                         R13 K13 [{"tag", "onAbsoluteSizeChanged", "LayoutOrder", "testId"}]
       73 NEWTABLE                         R14 4 0
       75 LOADB                            R15 1
       76 SETTABLEKS                       R15 R14 K14 ["component-dialog-button-group row size-full-0 auto-y items-stretch gap-small"]
       78 GETTABLEKS                       R16 R0 K5 ["tertiaryAction"]
       80 JUMPIFNOTEQKNIL                  R16 ; [+2]
       82 LOADB                            R15 0 +1
       83 LOADB                            R15 1
       84 SETTABLEKS                       R15 R14 K15 ["flex-x-between"]
       86 GETTABLEKS                       R16 R0 K5 ["tertiaryAction"]
       88 JUMPIFEQKNIL                     R16 ; [+2]
       90 LOADB                            R15 0 +1
       91 LOADB                            R15 1
       92 SETTABLEKS                       R15 R14 K16 ["align-x-right"]
       94 SETTABLEKS                       R14 R13 K10 ["tag"]
       96 SETTABLEKS                       R5 R13 K11 ["onAbsoluteSizeChanged"]
       98 SETTABLEKS                       R1 R13 K0 ["LayoutOrder"]
      100 LOADK                            R14 K17 ["--dialog-button-group"]
      101 SETTABLEKS                       R14 R13 K12 ["testId"]
      103 DUPTABLE                         R14 K20 [{"Tertiary", "PrimaryAndSecondary"}]
      104 GETTABLEKS                       R16 R0 K5 ["tertiaryAction"]
      106 JUMPIFNOT                        R16 ; [+31]
      107 GETUPVAL                         R15 5
      108 GETUPVAL                         R16 6
      109 DUPTABLE                         R17 K26 [{"action", "variant", "sizeRef", "sizeBinding", "maxSizeBinding", "LayoutOrder", "testId"}]
      110 GETTABLEKS                       R18 R0 K5 ["tertiaryAction"]
      112 SETTABLEKS                       R18 R17 K21 ["action"]
      114 GETUPVAL                         R21 3
      115 GETTABLEKS                       R20 R21 K27 ["Enums"]
      117 GETTABLEKS                       R19 R20 K28 ["ButtonVariant"]
      119 GETTABLEKS                       R18 R19 K29 ["Standard"]
      121 SETTABLEKS                       R18 R17 K22 ["variant"]
      123 SETTABLEKS                       R10 R17 K23 ["sizeRef"]
      125 SETTABLEKS                       R9 R17 K24 ["sizeBinding"]
      127 SETTABLEKS                       R8 R17 K25 ["maxSizeBinding"]
      129 MOVE                             R18 R2
      130 CALL                             R18 0 1
      131 SETTABLEKS                       R18 R17 K0 ["LayoutOrder"]
      133 LOADK                            R18 K30 ["--dialog-button-tertiary"]
      134 SETTABLEKS                       R18 R17 K12 ["testId"]
      136 CALL                             R15 2 1
      137 JUMP                             ; [+1]
      138 LOADNIL                          R15
      139 SETTABLEKS                       R15 R14 K18 ["Tertiary"]
      141 GETUPVAL                         R15 5
      142 GETUPVAL                         R17 3
      143 GETTABLEKS                       R16 R17 K9 ["View"]
      145 DUPTABLE                         R17 K31 [{"tag", "LayoutOrder"}]
      146 LOADK                            R18 K32 ["row auto-xy flex-x-between items-stretch gap-small"]
      147 SETTABLEKS                       R18 R17 K10 ["tag"]
      149 MOVE                             R18 R2
      150 CALL                             R18 0 1
      151 SETTABLEKS                       R18 R17 K0 ["LayoutOrder"]
      153 DUPTABLE                         R18 K35 [{"Primary", "Secondary"}]
      154 GETTABLEKS                       R20 R0 K3 ["primaryAction"]
      156 JUMPIFNOT                        R20 ; [+31]
      157 GETUPVAL                         R19 5
      158 GETUPVAL                         R20 6
      159 DUPTABLE                         R21 K26 [{"action", "variant", "sizeRef", "sizeBinding", "maxSizeBinding", "LayoutOrder", "testId"}]
      160 GETTABLEKS                       R22 R0 K3 ["primaryAction"]
      162 SETTABLEKS                       R22 R21 K21 ["action"]
      164 GETUPVAL                         R25 3
      165 GETTABLEKS                       R24 R25 K27 ["Enums"]
      167 GETTABLEKS                       R23 R24 K28 ["ButtonVariant"]
      169 GETTABLEKS                       R22 R23 K36 ["Emphasis"]
      171 SETTABLEKS                       R22 R21 K22 ["variant"]
      173 SETTABLEKS                       R10 R21 K23 ["sizeRef"]
      175 SETTABLEKS                       R9 R21 K24 ["sizeBinding"]
      177 SETTABLEKS                       R8 R21 K25 ["maxSizeBinding"]
      179 MOVE                             R22 R2
      180 CALL                             R22 0 1
      181 SETTABLEKS                       R22 R21 K0 ["LayoutOrder"]
      183 LOADK                            R22 K37 ["--dialog-button-primary"]
      184 SETTABLEKS                       R22 R21 K12 ["testId"]
      186 CALL                             R19 2 1
      187 JUMP                             ; [+1]
      188 LOADNIL                          R19
      189 SETTABLEKS                       R19 R18 K33 ["Primary"]
      191 GETTABLEKS                       R20 R0 K4 ["secondaryAction"]
      193 JUMPIFNOT                        R20 ; [+31]
      194 GETUPVAL                         R19 5
      195 GETUPVAL                         R20 6
      196 DUPTABLE                         R21 K26 [{"action", "variant", "sizeRef", "sizeBinding", "maxSizeBinding", "LayoutOrder", "testId"}]
      197 GETTABLEKS                       R22 R0 K4 ["secondaryAction"]
      199 SETTABLEKS                       R22 R21 K21 ["action"]
      201 GETUPVAL                         R25 3
      202 GETTABLEKS                       R24 R25 K27 ["Enums"]
      204 GETTABLEKS                       R23 R24 K28 ["ButtonVariant"]
      206 GETTABLEKS                       R22 R23 K29 ["Standard"]
      208 SETTABLEKS                       R22 R21 K22 ["variant"]
      210 SETTABLEKS                       R10 R21 K23 ["sizeRef"]
      212 SETTABLEKS                       R9 R21 K24 ["sizeBinding"]
      214 SETTABLEKS                       R8 R21 K25 ["maxSizeBinding"]
      216 MOVE                             R22 R2
      217 CALL                             R22 0 1
      218 SETTABLEKS                       R22 R21 K0 ["LayoutOrder"]
      220 LOADK                            R22 K38 ["--dialog-button-secondary"]
      221 SETTABLEKS                       R22 R21 K12 ["testId"]
      223 CALL                             R19 2 1
      224 JUMP                             ; [+1]
      225 LOADNIL                          R19
      226 SETTABLEKS                       R19 R18 K34 ["Secondary"]
      228 CALL                             R15 3 1
      229 SETTABLEKS                       R15 R14 K19 ["PrimaryAndSecondary"]
      231 CALL                             R11 3 -1
      232 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R6 K10 ["StudioFoundation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K11 ["Src"]
       39 GETTABLEKS                       R6 R7 K12 ["Types"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R9 R0 K11 ["Src"]
       46 GETTABLEKS                       R8 R9 K13 ["Hooks"]
       48 GETTABLEKS                       R7 R8 K14 ["useBindable"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R10 R0 K11 ["Src"]
       55 GETTABLEKS                       R9 R10 K13 ["Hooks"]
       57 GETTABLEKS                       R8 R9 K15 ["useButtonGroupSizeAlignment"]
       59 CALL                             R7 1 1
       60 GETTABLEKS                       R9 R2 K16 ["Util"]
       62 GETTABLEKS                       R8 R9 K17 ["counter"]
       64 GETTABLEKS                       R9 R3 K18 ["createElement"]
       66 GETTABLEKS                       R12 R2 K19 ["UI"]
       68 GETTABLEKS                       R11 R12 K13 ["Hooks"]
       70 GETTABLEKS                       R10 R11 K20 ["useTooltip"]
       72 GETTABLEKS                       R12 R4 K13 ["Hooks"]
       74 GETTABLEKS                       R11 R12 K21 ["useWidgetRef"]
       76 GETTABLEKS                       R12 R3 K22 ["memo"]
       78 DUPCLOSURE                       R13 K23 [PROTO_3]
       79 CAPTURE                          VAL R11
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R1
       83 CAPTURE                          VAL R9
       84 CALL                             R12 1 1
       85 DUPCLOSURE                       R13 K24 [PROTO_7]
       86 CAPTURE                          VAL R6
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R9
       92 CAPTURE                          VAL R12
       93 GETTABLEKS                       R14 R3 K22 ["memo"]
       95 MOVE                             R15 R13
       96 CALL                             R14 1 -1
       97 RETURN                           R14 -1
