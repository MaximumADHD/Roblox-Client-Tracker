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
       70 JUMPIFNOT                        R6 ; [+6]
       71 GETTABLEKS                       R7 R0 K11 ["widthOverride"]
       73 JUMPIFNOTEQKNIL                  R7 ; [+2]
       75 LOADB                            R6 0 +1
       76 LOADB                            R6 1
       77 GETUPVAL                         R7 5
       78 GETUPVAL                         R9 3
       79 GETTABLEKS                       R8 R9 K12 ["View"]
       81 DUPTABLE                         R9 K18 [{"ref", "tag", "Size", "onStateChanged", "LayoutOrder"}]
       82 GETUPVAL                         R11 4
       83 JUMPIFNOT                        R11 ; [+3]
       84 GETTABLEKS                       R10 R0 K19 ["measureRef"]
       86 JUMP                             ; [+2]
       87 GETTABLEKS                       R10 R0 K20 ["sizeRef"]
       89 SETTABLEKS                       R10 R9 K13 ["ref"]
       91 LOADK                            R10 K21 ["auto-xy"]
       92 SETTABLEKS                       R10 R9 K14 ["tag"]
       94 GETUPVAL                         R11 4
       95 JUMPIF                           R11 ; [+3]
       96 GETTABLEKS                       R10 R0 K22 ["sizeBinding"]
       98 JUMP                             ; [+1]
       99 LOADNIL                          R10
      100 SETTABLEKS                       R10 R9 K15 ["Size"]
      102 SETTABLEKS                       R4 R9 K16 ["onStateChanged"]
      104 GETTABLEKS                       R10 R0 K17 ["LayoutOrder"]
      106 SETTABLEKS                       R10 R9 K17 ["LayoutOrder"]
      108 DUPTABLE                         R10 K25 [{"Button", "UISizeConstraint"}]
      109 GETUPVAL                         R11 5
      110 GETUPVAL                         R13 3
      111 GETTABLEKS                       R12 R13 K23 ["Button"]
      113 DUPTABLE                         R13 K31 [{"ref", "text", "variant", "size", "fillBehavior", "onActivated", "isDisabled", "testId"}]
      114 SETTABLEKS                       R1 R13 K13 ["ref"]
      116 GETTABLEKS                       R15 R0 K0 ["action"]
      118 GETTABLEKS                       R14 R15 K6 ["text"]
      120 SETTABLEKS                       R14 R13 K6 ["text"]
      122 GETTABLEKS                       R14 R0 K26 ["variant"]
      124 SETTABLEKS                       R14 R13 K26 ["variant"]
      126 GETUPVAL                         R17 3
      127 GETTABLEKS                       R16 R17 K32 ["Enums"]
      129 GETTABLEKS                       R15 R16 K33 ["InputSize"]
      131 GETTABLEKS                       R14 R15 K34 ["XSmall"]
      133 SETTABLEKS                       R14 R13 K27 ["size"]
      135 GETUPVAL                         R15 4
      136 JUMPIF                           R15 ; [+8]
      137 GETUPVAL                         R17 3
      138 GETTABLEKS                       R16 R17 K32 ["Enums"]
      140 GETTABLEKS                       R15 R16 K35 ["FillBehavior"]
      142 GETTABLEKS                       R14 R15 K36 ["Fill"]
      144 JUMP                             ; [+1]
      145 LOADNIL                          R14
      146 SETTABLEKS                       R14 R13 K28 ["fillBehavior"]
      148 SETTABLEKS                       R5 R13 K9 ["onActivated"]
      150 GETUPVAL                         R15 6
      151 JUMPIFNOT                        R15 ; [+5]
      152 GETTABLEKS                       R15 R0 K0 ["action"]
      154 GETTABLEKS                       R14 R15 K37 ["disabled"]
      156 JUMP                             ; [+1]
      157 LOADNIL                          R14
      158 SETTABLEKS                       R14 R13 K29 ["isDisabled"]
      160 GETTABLEKS                       R14 R0 K30 ["testId"]
      162 SETTABLEKS                       R14 R13 K30 ["testId"]
      164 CALL                             R11 2 1
      165 SETTABLEKS                       R11 R10 K23 ["Button"]
      167 GETUPVAL                         R12 4
      168 JUMPIFNOT                        R12 ; [+16]
      169 GETUPVAL                         R11 5
      170 LOADK                            R12 K24 ["UISizeConstraint"]
      171 DUPTABLE                         R13 K39 [{"MaxSize"}]
      172 GETIMPORT                        R14 K42 [Vector2.new]
      174 JUMPIFNOT                        R6 ; [+3]
      175 GETTABLEKS                       R15 R0 K11 ["widthOverride"]
      177 JUMP                             ; [+1]
      178 LOADN                            R15 120
      179 LOADK                            R16 K43 [∞]
      180 CALL                             R14 2 1
      181 SETTABLEKS                       R14 R13 K38 ["MaxSize"]
      183 CALL                             R11 2 1
      184 JUMP                             ; [+8]
      185 GETUPVAL                         R11 5
      186 LOADK                            R12 K24 ["UISizeConstraint"]
      187 DUPTABLE                         R13 K39 [{"MaxSize"}]
      188 GETTABLEKS                       R14 R0 K44 ["maxSizeBinding"]
      190 SETTABLEKS                       R14 R13 K38 ["MaxSize"]
      192 CALL                             R11 2 1
      193 SETTABLEKS                       R11 R10 K24 ["UISizeConstraint"]
      195 CALL                             R7 3 -1
      196 RETURN                           R7 -1

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
        1 LOADK                            R2 K0 ["primary"]
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["secondary"]
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["tertiary"]
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["LayoutOrder"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETUPVAL                         R5 2
        7 GETTABLEKS                       R4 R5 K1 ["Hooks"]
        9 GETTABLEKS                       R3 R4 K2 ["useTokens"]
       11 CALL                             R3 0 1
       12 LOADNIL                          R4
       13 LOADNIL                          R5
       14 LOADNIL                          R6
       15 LOADNIL                          R7
       16 LOADNIL                          R8
       17 LOADNIL                          R9
       18 LOADNIL                          R10
       19 LOADNIL                          R11
       20 LOADNIL                          R12
       21 GETUPVAL                         R13 3
       22 JUMPIFNOT                        R13 ; [+11]
       23 GETUPVAL                         R13 4
       24 GETTABLEKS                       R15 R3 K3 ["Gap"]
       26 GETTABLEKS                       R14 R15 K4 ["Small"]
       28 LOADN                            R15 120
       29 CALL                             R13 2 3
       30 MOVE                             R4 R13
       31 MOVE                             R5 R14
       32 MOVE                             R6 R15
       33 JUMP                             ; [+62]
       34 GETUPVAL                         R14 5
       35 GETTABLEKS                       R13 R14 K5 ["useBinding"]
       37 LOADN                            R14 0
       38 CALL                             R13 1 2
       39 MOVE                             R7 R13
       40 MOVE                             R8 R14
       41 GETUPVAL                         R14 5
       42 GETTABLEKS                       R13 R14 K6 ["useCallback"]
       44 NEWCLOSURE                       R14 P0
       45 CAPTURE                          REF R8
       46 NEWTABLE                         R15 0 1
       48 MOVE                             R16 R8
       49 SETLIST                          R15 R16 1 [1]
       51 CALL                             R13 2 1
       52 MOVE                             R9 R13
       53 GETTABLEKS                       R16 R0 K7 ["primaryAction"]
       55 JUMPIFEQKNIL                     R16 ; [+3]
       57 LOADN                            R15 1
       58 JUMP                             ; [+1]
       59 LOADN                            R15 0
       60 GETTABLEKS                       R17 R0 K8 ["secondaryAction"]
       62 JUMPIFEQKNIL                     R17 ; [+3]
       64 LOADN                            R16 1
       65 JUMP                             ; [+1]
       66 LOADN                            R16 0
       67 ADD                              R14 R15 R16
       68 GETTABLEKS                       R16 R0 K9 ["tertiaryAction"]
       70 JUMPIFEQKNIL                     R16 ; [+3]
       72 LOADN                            R15 1
       73 JUMP                             ; [+1]
       74 LOADN                            R15 0
       75 ADD                              R13 R14 R15
       76 GETUPVAL                         R15 5
       77 GETTABLEKS                       R14 R15 K10 ["useMemo"]
       79 NEWCLOSURE                       R15 P1
       80 CAPTURE                          REF R7
       81 CAPTURE                          VAL R13
       82 CAPTURE                          VAL R3
       83 NEWTABLE                         R16 0 3
       85 MOVE                             R17 R7
       86 MOVE                             R18 R13
       87 MOVE                             R19 R3
       88 SETLIST                          R16 R17 3 [1]
       90 CALL                             R14 2 1
       91 MOVE                             R10 R14
       92 GETUPVAL                         R14 6
       93 CALL                             R14 0 2
       94 MOVE                             R11 R14
       95 MOVE                             R12 R15
       96 GETUPVAL                         R14 3
       97 JUMPIFNOT                        R14 ; [+12]
       98 GETUPVAL                         R14 5
       99 GETTABLEKS                       R13 R14 K6 ["useCallback"]
      101 NEWCLOSURE                       R14 P2
      102 CAPTURE                          REF R5
      103 NEWTABLE                         R15 0 1
      105 MOVE                             R16 R5
      106 SETLIST                          R15 R16 1 [1]
      108 CALL                             R13 2 1
      109 JUMP                             ; [+1]
      110 LOADNIL                          R13
      111 GETUPVAL                         R15 3
      112 JUMPIFNOT                        R15 ; [+12]
      113 GETUPVAL                         R15 5
      114 GETTABLEKS                       R14 R15 K6 ["useCallback"]
      116 NEWCLOSURE                       R15 P3
      117 CAPTURE                          REF R5
      118 NEWTABLE                         R16 0 1
      120 MOVE                             R17 R5
      121 SETLIST                          R16 R17 1 [1]
      123 CALL                             R14 2 1
      124 JUMP                             ; [+1]
      125 LOADNIL                          R14
      126 GETUPVAL                         R16 3
      127 JUMPIFNOT                        R16 ; [+12]
      128 GETUPVAL                         R16 5
      129 GETTABLEKS                       R15 R16 K6 ["useCallback"]
      131 NEWCLOSURE                       R16 P4
      132 CAPTURE                          REF R5
      133 NEWTABLE                         R17 0 1
      135 MOVE                             R18 R5
      136 SETLIST                          R17 R18 1 [1]
      138 CALL                             R15 2 1
      139 JUMP                             ; [+1]
      140 LOADNIL                          R15
      141 LOADNIL                          R16
      142 LOADNIL                          R17
      143 MOVE                             R20 R2
      144 CALL                             R20 0 1
      145 MOVE                             R18 R20
      146 MOVE                             R19 R2
      147 CALL                             R19 0 1
      148 GETUPVAL                         R20 3
      149 JUMPIFNOT                        R20 ; [+3]
      150 MOVE                             R17 R18
      151 MOVE                             R16 R19
      152 JUMP                             ; [+2]
      153 MOVE                             R16 R18
      154 MOVE                             R17 R19
      155 GETUPVAL                         R18 7
      156 GETUPVAL                         R20 2
      157 GETTABLEKS                       R19 R20 K11 ["View"]
      159 DUPTABLE                         R20 K15 [{"tag", "onAbsoluteSizeChanged", "LayoutOrder", "testId"}]
      160 GETUPVAL                         R22 3
      161 JUMPIFNOT                        R22 ; [+2]
      162 LOADK                            R21 K16 ["component-dialog-button-group row size-full-0 auto-y items-stretch gap-small align-x-right"]
      163 JUMP                             ; [+21]
      164 NEWTABLE                         R21 4 0
      166 LOADB                            R22 1
      167 SETTABLEKS                       R22 R21 K17 ["component-dialog-button-group row size-full-0 auto-y items-stretch gap-small"]
      169 GETTABLEKS                       R23 R0 K9 ["tertiaryAction"]
      171 JUMPIFNOTEQKNIL                  R23 ; [+2]
      173 LOADB                            R22 0 +1
      174 LOADB                            R22 1
      175 SETTABLEKS                       R22 R21 K18 ["flex-x-between"]
      177 GETTABLEKS                       R23 R0 K9 ["tertiaryAction"]
      179 JUMPIFEQKNIL                     R23 ; [+2]
      181 LOADB                            R22 0 +1
      182 LOADB                            R22 1
      183 SETTABLEKS                       R22 R21 K19 ["align-x-right"]
      185 SETTABLEKS                       R21 R20 K12 ["tag"]
      187 GETUPVAL                         R22 3
      188 JUMPIFNOT                        R22 ; [+2]
      189 MOVE                             R21 R6
      190 JUMP                             ; [+1]
      191 MOVE                             R21 R9
      192 SETTABLEKS                       R21 R20 K13 ["onAbsoluteSizeChanged"]
      194 SETTABLEKS                       R1 R20 K0 ["LayoutOrder"]
      196 LOADK                            R21 K20 ["--dialog-button-group"]
      197 SETTABLEKS                       R21 R20 K14 ["testId"]
      199 DUPTABLE                         R21 K23 [{"Tertiary", "PrimaryAndSecondary"}]
      200 GETTABLEKS                       R23 R0 K9 ["tertiaryAction"]
      202 JUMPIFNOT                        R23 ; [+38]
      203 GETUPVAL                         R22 7
      204 GETUPVAL                         R23 8
      205 DUPTABLE                         R24 K31 [{"action", "variant", "measureRef", "widthOverride", "sizeRef", "sizeBinding", "maxSizeBinding", "LayoutOrder", "testId"}]
      206 GETTABLEKS                       R25 R0 K9 ["tertiaryAction"]
      208 SETTABLEKS                       R25 R24 K24 ["action"]
      210 GETUPVAL                         R28 2
      211 GETTABLEKS                       R27 R28 K32 ["Enums"]
      213 GETTABLEKS                       R26 R27 K33 ["ButtonVariant"]
      215 GETTABLEKS                       R25 R26 K34 ["Standard"]
      217 SETTABLEKS                       R25 R24 K25 ["variant"]
      219 SETTABLEKS                       R15 R24 K26 ["measureRef"]
      221 JUMPIFNOT                        R4 ; [+3]
      222 GETTABLEKS                       R25 R4 K35 ["tertiary"]
      224 JUMP                             ; [+1]
      225 LOADNIL                          R25
      226 SETTABLEKS                       R25 R24 K27 ["widthOverride"]
      228 SETTABLEKS                       R12 R24 K28 ["sizeRef"]
      230 SETTABLEKS                       R11 R24 K29 ["sizeBinding"]
      232 SETTABLEKS                       R10 R24 K30 ["maxSizeBinding"]
      234 SETTABLEKS                       R16 R24 K0 ["LayoutOrder"]
      236 LOADK                            R25 K36 ["--dialog-button-tertiary"]
      237 SETTABLEKS                       R25 R24 K14 ["testId"]
      239 CALL                             R22 2 1
      240 JUMP                             ; [+1]
      241 LOADNIL                          R22
      242 SETTABLEKS                       R22 R21 K21 ["Tertiary"]
      244 GETUPVAL                         R22 7
      245 GETUPVAL                         R24 2
      246 GETTABLEKS                       R23 R24 K11 ["View"]
      248 DUPTABLE                         R24 K37 [{"tag", "LayoutOrder"}]
      249 GETUPVAL                         R26 3
      250 JUMPIFNOT                        R26 ; [+2]
      251 LOADK                            R25 K38 ["row auto-xy items-stretch gap-small"]
      252 JUMP                             ; [+1]
      253 LOADK                            R25 K39 ["row auto-xy flex-x-between items-stretch gap-small"]
      254 SETTABLEKS                       R25 R24 K12 ["tag"]
      256 SETTABLEKS                       R17 R24 K0 ["LayoutOrder"]
      258 DUPTABLE                         R25 K42 [{"Primary", "Secondary"}]
      259 GETTABLEKS                       R27 R0 K7 ["primaryAction"]
      261 JUMPIFNOT                        R27 ; [+40]
      262 GETUPVAL                         R26 7
      263 GETUPVAL                         R27 8
      264 DUPTABLE                         R28 K31 [{"action", "variant", "measureRef", "widthOverride", "sizeRef", "sizeBinding", "maxSizeBinding", "LayoutOrder", "testId"}]
      265 GETTABLEKS                       R29 R0 K7 ["primaryAction"]
      267 SETTABLEKS                       R29 R28 K24 ["action"]
      269 GETUPVAL                         R32 2
      270 GETTABLEKS                       R31 R32 K32 ["Enums"]
      272 GETTABLEKS                       R30 R31 K33 ["ButtonVariant"]
      274 GETTABLEKS                       R29 R30 K43 ["Emphasis"]
      276 SETTABLEKS                       R29 R28 K25 ["variant"]
      278 SETTABLEKS                       R13 R28 K26 ["measureRef"]
      280 JUMPIFNOT                        R4 ; [+3]
      281 GETTABLEKS                       R29 R4 K44 ["primary"]
      283 JUMP                             ; [+1]
      284 LOADNIL                          R29
      285 SETTABLEKS                       R29 R28 K27 ["widthOverride"]
      287 SETTABLEKS                       R12 R28 K28 ["sizeRef"]
      289 SETTABLEKS                       R11 R28 K29 ["sizeBinding"]
      291 SETTABLEKS                       R10 R28 K30 ["maxSizeBinding"]
      293 MOVE                             R29 R2
      294 CALL                             R29 0 1
      295 SETTABLEKS                       R29 R28 K0 ["LayoutOrder"]
      297 LOADK                            R29 K45 ["--dialog-button-primary"]
      298 SETTABLEKS                       R29 R28 K14 ["testId"]
      300 CALL                             R26 2 1
      301 JUMP                             ; [+1]
      302 LOADNIL                          R26
      303 SETTABLEKS                       R26 R25 K40 ["Primary"]
      305 GETTABLEKS                       R27 R0 K8 ["secondaryAction"]
      307 JUMPIFNOT                        R27 ; [+40]
      308 GETUPVAL                         R26 7
      309 GETUPVAL                         R27 8
      310 DUPTABLE                         R28 K31 [{"action", "variant", "measureRef", "widthOverride", "sizeRef", "sizeBinding", "maxSizeBinding", "LayoutOrder", "testId"}]
      311 GETTABLEKS                       R29 R0 K8 ["secondaryAction"]
      313 SETTABLEKS                       R29 R28 K24 ["action"]
      315 GETUPVAL                         R32 2
      316 GETTABLEKS                       R31 R32 K32 ["Enums"]
      318 GETTABLEKS                       R30 R31 K33 ["ButtonVariant"]
      320 GETTABLEKS                       R29 R30 K34 ["Standard"]
      322 SETTABLEKS                       R29 R28 K25 ["variant"]
      324 SETTABLEKS                       R14 R28 K26 ["measureRef"]
      326 JUMPIFNOT                        R4 ; [+3]
      327 GETTABLEKS                       R29 R4 K46 ["secondary"]
      329 JUMP                             ; [+1]
      330 LOADNIL                          R29
      331 SETTABLEKS                       R29 R28 K27 ["widthOverride"]
      333 SETTABLEKS                       R12 R28 K28 ["sizeRef"]
      335 SETTABLEKS                       R11 R28 K29 ["sizeBinding"]
      337 SETTABLEKS                       R10 R28 K30 ["maxSizeBinding"]
      339 MOVE                             R29 R2
      340 CALL                             R29 0 1
      341 SETTABLEKS                       R29 R28 K0 ["LayoutOrder"]
      343 LOADK                            R29 K47 ["--dialog-button-secondary"]
      344 SETTABLEKS                       R29 R28 K14 ["testId"]
      346 CALL                             R26 2 1
      347 JUMP                             ; [+1]
      348 LOADNIL                          R26
      349 SETTABLEKS                       R26 R25 K41 ["Secondary"]
      351 CALL                             R22 3 1
      352 SETTABLEKS                       R22 R21 K22 ["PrimaryAndSecondary"]
      354 CALL                             R18 3 -1
      355 CLOSEUPVALS                      R5
      356 RETURN                           R18 -1

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
       46 GETTABLEKS                       R8 R9 K13 ["Flags"]
       48 GETTABLEKS                       R7 R8 K14 ["getFFlagDialogManagerUpdateSemantics"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R10 R0 K11 ["Src"]
       55 GETTABLEKS                       R9 R10 K13 ["Flags"]
       57 GETTABLEKS                       R8 R9 K15 ["getFFlagStudioDialogButtonGroupNoGap"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R11 R0 K11 ["Src"]
       64 GETTABLEKS                       R10 R11 K16 ["Hooks"]
       66 GETTABLEKS                       R9 R10 K17 ["useBindable"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R12 R0 K11 ["Src"]
       73 GETTABLEKS                       R11 R12 K16 ["Hooks"]
       75 GETTABLEKS                       R10 R11 K18 ["useButtonGroupFairWidth"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K5 [require]
       80 GETTABLEKS                       R13 R0 K11 ["Src"]
       82 GETTABLEKS                       R12 R13 K16 ["Hooks"]
       84 GETTABLEKS                       R11 R12 K19 ["useButtonGroupSizeAlignment"]
       86 CALL                             R10 1 1
       87 GETTABLEKS                       R12 R2 K20 ["Util"]
       89 GETTABLEKS                       R11 R12 K21 ["counter"]
       91 MOVE                             R12 R6
       92 CALL                             R12 0 1
       93 MOVE                             R13 R7
       94 CALL                             R13 0 1
       95 GETTABLEKS                       R14 R3 K22 ["createElement"]
       97 GETTABLEKS                       R17 R2 K23 ["UI"]
       99 GETTABLEKS                       R16 R17 K16 ["Hooks"]
      101 GETTABLEKS                       R15 R16 K24 ["useTooltip"]
      103 GETTABLEKS                       R17 R4 K16 ["Hooks"]
      105 GETTABLEKS                       R16 R17 K25 ["useWidgetRef"]
      107 GETTABLEKS                       R17 R3 K26 ["memo"]
      109 DUPCLOSURE                       R18 K27 [PROTO_3]
      110 CAPTURE                          VAL R16
      111 CAPTURE                          VAL R15
      112 CAPTURE                          VAL R3
      113 CAPTURE                          VAL R1
      114 CAPTURE                          VAL R13
      115 CAPTURE                          VAL R14
      116 CAPTURE                          VAL R12
      117 CALL                             R17 1 1
      118 DUPCLOSURE                       R18 K28 [PROTO_10]
      119 CAPTURE                          VAL R8
      120 CAPTURE                          VAL R11
      121 CAPTURE                          VAL R1
      122 CAPTURE                          VAL R13
      123 CAPTURE                          VAL R9
      124 CAPTURE                          VAL R3
      125 CAPTURE                          VAL R10
      126 CAPTURE                          VAL R14
      127 CAPTURE                          VAL R17
      128 GETTABLEKS                       R19 R3 K26 ["memo"]
      130 MOVE                             R20 R18
      131 CALL                             R19 1 -1
      132 RETURN                           R19 -1
