PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Disabled"]
        3 JUMPIF                           R2 ; [+27]
        4 GETUPVAL                         R3 1
        5 CALL                             R3 0 1
        6 JUMPIFNOT                        R3 ; [+4]
        7 GETUPVAL                         R2 2
        8 MOVE                             R3 R1
        9 CALL                             R2 1 1
       10 JUMP                             ; [+8]
       11 GETTABLEKS                       R3 R1 K1 ["UserInputType"]
       13 GETIMPORT                        R4 K4 [Enum.UserInputType.MouseButton1]
       15 JUMPIFEQ                         R3 R4 ; [+2]
       17 LOADB                            R2 0 +1
       18 LOADB                            R2 1
       19 JUMPIFNOT                        R2 ; [+11]
       20 GETUPVAL                         R2 3
       21 GETTABLEKS                       R2 R2 K5 ["cancelShowTooltip"]
       23 CALL                             R2 0 0
       24 GETUPVAL                         R2 0
       25 GETTABLEKS                       R2 R2 K6 ["OnSelect"]
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R3 R3 K7 ["Uri"]
       30 CALL                             R2 1 0
       31 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Uri"]
        3 GETTABLEKS                       R3 R0 K1 ["ForwardRef"]
        5 CALL                             R1 2 1
        6 GETTABLEKS                       R3 R0 K2 ["Size"]
        8 JUMPIFNOTEQKS                    R3 K3 ["Small"] ; [+3]
       10 LOADK                            R2 K3 ["Small"]
       11 JUMP                             ; [+1]
       12 LOADK                            R2 K4 ["Large"]
       13 GETTABLEKS                       R4 R0 K5 ["TextOnly"]
       15 JUMPIF                           R4 ; [+4]
       16 GETTABLEKS                       R4 R0 K7 ["IconSide"]
       18 ORK                              R3 R4 K6 ["Left"]
       19 JUMP                             ; [+1]
       20 LOADNIL                          R3
       21 GETTABLEKS                       R5 R0 K8 ["Icon"]
       23 JUMPIFNOT                        R5 ; [+7]
       24 GETTABLEKS                       R4 R0 K8 ["Icon"]
       26 LOADK                            R6 K9 ["/"]
       27 NAMECALL                         R4 R4 K10 ["find"]
       29 CALL                             R4 2 1
       30 JUMP                             ; [+1]
       31 LOADNIL                          R4
       32 GETTABLEKS                       R6 R0 K8 ["Icon"]
       34 JUMPIFNOT                        R6 ; [+12]
       35 JUMPIFNOT                        R4 ; [+3]
       36 GETTABLEKS                       R5 R0 K8 ["Icon"]
       38 JUMP                             ; [+9]
       39 GETUPVAL                         R5 1
       40 GETTABLEKS                       R5 R5 K11 ["getPathForIcon"]
       42 GETTABLEKS                       R6 R0 K8 ["Icon"]
       44 MOVE                             R7 R2
       45 CALL                             R5 2 1
       46 JUMP                             ; [+1]
       47 LOADNIL                          R5
       48 GETUPVAL                         R6 2
       49 DUPTABLE                         R7 K16 [{"Uri", "Title", "Text", "Shortcuts", "WidgetRef"}]
       50 GETTABLEKS                       R8 R0 K0 ["Uri"]
       52 SETTABLEKS                       R8 R7 K0 ["Uri"]
       54 GETTABLEKS                       R8 R0 K17 ["TooltipTitle"]
       56 SETTABLEKS                       R8 R7 K12 ["Title"]
       58 GETTABLEKS                       R8 R0 K18 ["Tooltip"]
       60 SETTABLEKS                       R8 R7 K13 ["Text"]
       62 GETTABLEKS                       R8 R0 K14 ["Shortcuts"]
       64 SETTABLEKS                       R8 R7 K14 ["Shortcuts"]
       66 SETTABLEKS                       R1 R7 K15 ["WidgetRef"]
       68 CALL                             R6 1 2
       69 LOADNIL                          R8
       70 GETUPVAL                         R9 3
       71 CALL                             R9 0 1
       72 JUMPIFNOT                        R9 ; [+8]
       73 GETTABLEKS                       R9 R0 K19 ["Visible"]
       75 JUMPIFEQKNIL                     R9 ; [+4]
       77 GETTABLEKS                       R8 R0 K19 ["Visible"]
       79 JUMP                             ; [+1]
       80 LOADB                            R8 1
       81 GETUPVAL                         R9 4
       82 GETTABLEKS                       R9 R9 K20 ["createElement"]
       84 LOADK                            R10 K21 ["TextButton"]
       85 NEWTABLE                         R11 8 0
       87 SETTABLEKS                       R1 R11 K22 ["ref"]
       89 GETTABLEKS                       R12 R0 K23 ["LayoutOrder"]
       91 SETTABLEKS                       R12 R11 K23 ["LayoutOrder"]
       93 GETUPVAL                         R13 3
       94 CALL                             R13 0 1
       95 JUMPIFNOT                        R13 ; [+5]
       96 GETTABLEKS                       R14 R0 K24 ["Disabled"]
       98 NOT                              R13 R14
       99 AND                              R12 R13 R8
      100 JUMP                             ; [+1]
      101 LOADNIL                          R12
      102 SETTABLEKS                       R12 R11 K25 ["Selectable"]
      104 GETUPVAL                         R12 4
      105 GETTABLEKS                       R12 R12 K26 ["Event"]
      107 GETTABLEKS                       R12 R12 K27 ["InputBegan"]
      109 NEWCLOSURE                       R13 P0
      110 CAPTURE                          VAL R0
      111 CAPTURE                          UPVAL U3
      112 CAPTURE                          UPVAL U5
      113 CAPTURE                          UPVAL U6
      114 SETTABLE                         R13 R11 R12
      115 GETTABLEKS                       R12 R0 K19 ["Visible"]
      117 SETTABLEKS                       R12 R11 K19 ["Visible"]
      119 GETUPVAL                         R12 4
      120 GETTABLEKS                       R12 R12 K26 ["Event"]
      122 GETTABLEKS                       R12 R12 K28 ["MouseEnter"]
      124 SETTABLE                         R6 R11 R12
      125 GETUPVAL                         R12 4
      126 GETTABLEKS                       R12 R12 K26 ["Event"]
      128 GETTABLEKS                       R12 R12 K29 ["MouseLeave"]
      130 SETTABLE                         R7 R11 R12
      131 GETUPVAL                         R12 4
      132 GETTABLEKS                       R12 R12 K30 ["Tag"]
      134 GETUPVAL                         R13 7
      135 LOADK                            R15 K31 ["Component-Button Role-Surface X-Fit data-testid=%*"]
      136 GETUPVAL                         R17 8
      137 GETTABLEKS                       R18 R0 K0 ["Uri"]
      139 CALL                             R17 1 1
      140 NAMECALL                         R15 R15 K32 ["format"]
      142 CALL                             R15 2 1
      143 MOVE                             R14 R15
      144 GETTABLEKS                       R16 R0 K24 ["Disabled"]
      146 JUMPIFNOT                        R16 ; [+2]
      147 LOADK                            R15 K33 ["State-Disabled"]
      148 JUMP                             ; [+1]
      149 LOADK                            R15 K34 ["State-Default"]
      150 GETUPVAL                         R17 4
      151 GETTABLEKS                       R17 R17 K30 ["Tag"]
      153 GETTABLE                         R16 R0 R17
      154 CALL                             R13 3 1
      155 SETTABLE                         R13 R11 R12
      156 DUPTABLE                         R12 K36 [{"StateLayer"}]
      157 GETUPVAL                         R13 4
      158 GETTABLEKS                       R13 R13 K20 ["createElement"]
      160 LOADK                            R14 K37 ["Frame"]
      161 NEWTABLE                         R15 1 0
      163 GETUPVAL                         R16 4
      164 GETTABLEKS                       R16 R16 K30 ["Tag"]
      166 GETUPVAL                         R17 7
      167 LOADK                            R18 K38 ["Role-Surface X-Fit X-Row X-Middle X-Center"]
      168 GETTABLEKS                       R20 R0 K2 ["Size"]
      170 JUMPIFNOTEQKS                    R20 K3 ["Small"] ; [+3]
      172 LOADK                            R19 K3 ["Small"]
      173 JUMP                             ; [+7]
      174 GETTABLEKS                       R20 R0 K2 ["Size"]
      176 JUMPIFNOTEQKS                    R20 K4 ["Large"] ; [+3]
      178 LOADK                            R19 K4 ["Large"]
      179 JUMP                             ; [+1]
      180 LOADK                            R19 K39 ["Medium"]
      181 CALL                             R17 2 1
      182 SETTABLE                         R17 R15 R16
      183 DUPTABLE                         R16 K42 [{"ButtonIcon", "ButtonText"}]
      184 GETTABLEKS                       R18 R0 K5 ["TextOnly"]
      186 JUMPIF                           R18 ; [+23]
      187 GETUPVAL                         R17 4
      188 GETTABLEKS                       R17 R17 K20 ["createElement"]
      190 LOADK                            R18 K43 ["ImageLabel"]
      191 NEWTABLE                         R19 2 0
      193 SETTABLEKS                       R5 R19 K44 ["Image"]
      195 GETUPVAL                         R20 4
      196 GETTABLEKS                       R20 R20 K30 ["Tag"]
      198 GETUPVAL                         R21 7
      199 JUMPIFNOTEQKS                    R2 K3 ["Small"] ; [+3]
      201 LOADK                            R22 K45 ["Icon-Small"]
      202 JUMP                             ; [+1]
      203 LOADK                            R22 K46 ["Icon-Large"]
      204 MOVE                             R23 R3
      205 LOADK                            R24 K47 ["Role-Surface"]
      206 CALL                             R21 3 1
      207 SETTABLE                         R21 R19 R20
      208 CALL                             R17 2 1
      209 JUMP                             ; [+1]
      210 LOADNIL                          R17
      211 SETTABLEKS                       R17 R16 K40 ["ButtonIcon"]
      213 GETUPVAL                         R17 4
      214 GETTABLEKS                       R17 R17 K20 ["createElement"]
      216 LOADK                            R18 K48 ["TextLabel"]
      217 NEWTABLE                         R19 2 0
      219 GETUPVAL                         R21 9
      220 CALL                             R21 0 1
      221 JUMPIFNOT                        R21 ; [+6]
      222 GETTABLEKS                       R21 R0 K49 ["ShortTitle"]
      224 JUMPIFNOT                        R21 ; [+3]
      225 GETTABLEKS                       R20 R0 K49 ["ShortTitle"]
      227 JUMP                             ; [+2]
      228 GETTABLEKS                       R20 R0 K13 ["Text"]
      230 SETTABLEKS                       R20 R19 K13 ["Text"]
      232 GETUPVAL                         R20 4
      233 GETTABLEKS                       R20 R20 K30 ["Tag"]
      235 GETUPVAL                         R21 7
      236 LOADK                            R22 K50 ["Role-Surface X-Fit"]
      237 GETTABLEKS                       R24 R0 K2 ["Size"]
      239 JUMPIFNOTEQKS                    R24 K3 ["Small"] ; [+3]
      241 LOADK                            R23 K3 ["Small"]
      242 JUMP                             ; [+7]
      243 GETTABLEKS                       R24 R0 K2 ["Size"]
      245 JUMPIFNOTEQKS                    R24 K4 ["Large"] ; [+3]
      247 LOADK                            R23 K4 ["Large"]
      248 JUMP                             ; [+1]
      249 LOADNIL                          R23
      250 CALL                             R21 2 1
      251 SETTABLE                         R21 R19 R20
      252 CALL                             R17 2 1
      253 SETTABLEKS                       R17 R16 K41 ["ButtonText"]
      255 CALL                             R13 3 1
      256 SETTABLEKS                       R13 R12 K35 ["StateLayer"]
      258 CALL                             R9 3 -1
      259 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["IconHelper"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Util"]
       29 GETTABLEKS                       R4 R4 K11 ["isActivationInput"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K9 ["Util"]
       38 GETTABLEKS                       R5 R5 K12 ["uriToTestId"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K6 ["Packages"]
       45 GETTABLEKS                       R6 R6 K13 ["Framework"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K8 ["Src"]
       52 GETTABLEKS                       R7 R7 K14 ["Types"]
       54 CALL                             R6 1 1
       55 GETTABLEKS                       R7 R5 K15 ["Styling"]
       57 GETTABLEKS                       R8 R7 K16 ["joinTags"]
       59 GETIMPORT                        R9 K5 [require]
       61 GETTABLEKS                       R10 R0 K8 ["Src"]
       63 GETTABLEKS                       R10 R10 K17 ["Hooks"]
       65 GETTABLEKS                       R10 R10 K18 ["TooltipSettings"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R11 R0 K8 ["Src"]
       72 GETTABLEKS                       R11 R11 K17 ["Hooks"]
       74 GETTABLEKS                       R11 R11 K19 ["useTooltip"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K6 ["Packages"]
       81 GETTABLEKS                       R12 R12 K20 ["StudioFoundation"]
       83 CALL                             R11 1 1
       84 GETTABLEKS                       R12 R11 K17 ["Hooks"]
       86 GETTABLEKS                       R12 R12 K21 ["useWidgetRef"]
       88 GETIMPORT                        R13 K5 [require]
       90 GETTABLEKS                       R14 R0 K8 ["Src"]
       92 GETTABLEKS                       R14 R14 K22 ["SharedFlags"]
       94 GETTABLEKS                       R14 R14 K23 ["getFeatureStudioActionShortNames"]
       96 CALL                             R13 1 1
       97 GETIMPORT                        R14 K5 [require]
       99 GETTABLEKS                       R15 R0 K8 ["Src"]
      101 GETTABLEKS                       R15 R15 K22 ["SharedFlags"]
      103 GETTABLEKS                       R15 R15 K24 ["getFFlagRibbonEnableKeyboardNavigation"]
      105 CALL                             R14 1 1
      106 DUPCLOSURE                       R15 K25 [PROTO_1]
      107 CAPTURE                          VAL R12
      108 CAPTURE                          VAL R2
      109 CAPTURE                          VAL R10
      110 CAPTURE                          VAL R14
      111 CAPTURE                          VAL R1
      112 CAPTURE                          VAL R3
      113 CAPTURE                          VAL R9
      114 CAPTURE                          VAL R8
      115 CAPTURE                          VAL R4
      116 CAPTURE                          VAL R13
      117 RETURN                           R15 1
