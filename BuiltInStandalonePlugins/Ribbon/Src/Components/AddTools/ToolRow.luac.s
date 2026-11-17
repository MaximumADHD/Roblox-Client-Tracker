PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 NAMECALL                         R0 R0 K1 ["Pause"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 1
       11 GETTABLEKS                       R0 R0 K0 ["current"]
       13 JUMPIFNOT                        R0 ; [+24]
       14 GETUPVAL                         R1 2
       15 GETTABLEKS                       R1 R1 K2 ["Expanded"]
       17 JUMPIFNOT                        R1 ; [+2]
       18 LOADN                            R0 90
       19 JUMP                             ; [+1]
       20 LOADN                            R0 0
       21 GETUPVAL                         R1 3
       22 GETUPVAL                         R3 1
       23 GETTABLEKS                       R3 R3 K0 ["current"]
       25 GETUPVAL                         R4 4
       26 DUPTABLE                         R5 K4 [{"Rotation"}]
       27 SETTABLEKS                       R0 R5 K3 ["Rotation"]
       29 NAMECALL                         R1 R1 K5 ["Create"]
       31 CALL                             R1 4 1
       32 NAMECALL                         R2 R1 K6 ["Play"]
       34 CALL                             R2 1 0
       35 GETUPVAL                         R2 0
       36 SETTABLEKS                       R1 R2 K0 ["current"]
       38 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnCheck"]
        3 GETUPVAL                         R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["OnToggle"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnCheck"]
        3 GETUPVAL                         R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R0 K0 ["Item"]
        4 GETTABLEKS                       R3 R0 K1 ["Children"]
        6 JUMPIFNOT                        R3 ; [+8]
        7 GETTABLEKS                       R5 R0 K1 ["Children"]
        9 LENGTH                           R4 R5
       10 LOADN                            R5 0
       11 JUMPIFLT                         R5 R4 ; [+2]
       13 LOADB                            R3 0 +1
       14 LOADB                            R3 1
       15 GETUPVAL                         R4 1
       16 NAMECALL                         R4 R4 K2 ["use"]
       18 CALL                             R4 1 1
       19 GETTABLEKS                       R6 R2 K3 ["Title"]
       21 JUMPIFNOT                        R6 ; [+8]
       22 GETTABLEKS                       R5 R2 K3 ["Title"]
       24 LOADK                            R7 K4 ["\n"]
       25 LOADK                            R8 K5 [" "]
       26 NAMECALL                         R5 R5 K6 ["gsub"]
       28 CALL                             R5 3 1
       29 JUMP                             ; [+1]
       30 LOADNIL                          R5
       31 GETTABLEKS                       R7 R2 K7 ["Description"]
       33 JUMPIFNOT                        R7 ; [+8]
       34 GETTABLEKS                       R6 R2 K7 ["Description"]
       36 LOADK                            R8 K4 ["\n"]
       37 LOADK                            R9 K5 [" "]
       38 NAMECALL                         R6 R6 K6 ["gsub"]
       40 CALL                             R6 3 1
       41 JUMP                             ; [+1]
       42 LOADNIL                          R6
       43 GETTABLEKS                       R7 R2 K8 ["Icon"]
       45 GETTABLEKS                       R8 R2 K8 ["Icon"]
       47 JUMPIF                           R8 ; [+1]
       48 GETUPVAL                         R7 2
       49 GETUPVAL                         R8 3
       50 LOADNIL                          R9
       51 CALL                             R8 1 1
       52 GETUPVAL                         R9 3
       53 LOADNIL                          R10
       54 CALL                             R9 1 1
       55 GETUPVAL                         R10 4
       56 NEWCLOSURE                       R11 P0
       57 CAPTURE                          VAL R9
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R0
       60 CAPTURE                          UPVAL U5
       61 CAPTURE                          UPVAL U6
       62 NEWTABLE                         R12 0 1
       64 GETTABLEKS                       R13 R0 K9 ["Expanded"]
       66 SETLIST                          R12 R13 1 [1]
       68 CALL                             R10 2 0
       69 LOADNIL                          R10
       70 GETTABLEKS                       R11 R2 K10 ["Uri"]
       72 GETTABLEKS                       R11 R11 K11 ["DataModel"]
       74 JUMPIFNOTEQKS                    R11 K12 ["PlayClient"] ; [+8]
       76 LOADK                            R13 K13 ["Plugin"]
       77 LOADK                            R14 K14 ["AddTools_PlayClientOnly"]
       78 NAMECALL                         R11 R4 K15 ["getText"]
       80 CALL                             R11 3 1
       81 MOVE                             R10 R11
       82 JUMP                             ; [+12]
       83 GETTABLEKS                       R11 R2 K10 ["Uri"]
       85 GETTABLEKS                       R11 R11 K11 ["DataModel"]
       87 JUMPIFNOTEQKS                    R11 K16 ["PlayServer"] ; [+7]
       89 LOADK                            R13 K13 ["Plugin"]
       90 LOADK                            R14 K17 ["AddTools_PlayServerOnly"]
       91 NAMECALL                         R11 R4 K15 ["getText"]
       93 CALL                             R11 3 1
       94 MOVE                             R10 R11
       95 GETUPVAL                         R11 7
       96 LOADK                            R12 K18 ["TextLabel"]
       97 NEWTABLE                         R13 4 0
       99 MOVE                             R14 R1
      100 CALL                             R14 0 1
      101 SETTABLEKS                       R14 R13 K19 ["LayoutOrder"]
      103 SETTABLEKS                       R5 R13 K20 ["Text"]
      105 GETUPVAL                         R14 8
      106 GETTABLEKS                       R14 R14 K21 ["Tag"]
      108 LOADK                            R15 K22 ["X-Fit"]
      109 SETTABLE                         R15 R13 R14
      110 CALL                             R11 2 1
      111 GETUPVAL                         R12 7
      112 LOADK                            R13 K23 ["TextButton"]
      113 NEWTABLE                         R14 8 0
      115 GETTABLEKS                       R15 R0 K24 ["Index"]
      117 SETTABLEKS                       R15 R14 K19 ["LayoutOrder"]
      119 GETTABLEKS                       R15 R0 K25 ["Position"]
      121 SETTABLEKS                       R15 R14 K25 ["Position"]
      123 GETTABLEKS                       R15 R0 K26 ["Size"]
      125 SETTABLEKS                       R15 R14 K26 ["Size"]
      127 GETUPVAL                         R15 8
      128 GETTABLEKS                       R15 R15 K27 ["Event"]
      130 GETTABLEKS                       R15 R15 K28 ["Activated"]
      132 NEWCLOSURE                       R16 P1
      133 CAPTURE                          VAL R0
      134 SETTABLE                         R16 R14 R15
      135 GETUPVAL                         R15 8
      136 GETTABLEKS                       R15 R15 K21 ["Tag"]
      138 LOADK                            R16 K29 ["Component-ToolRow Role-Surface X-RowSpace200 X-Corner"]
      139 SETTABLE                         R16 R14 R15
      140 DUPTABLE                         R15 K33 [{"Spacer", "Arrow", "Checkbox", "Icon", "Text"}]
      141 GETUPVAL                         R16 7
      142 LOADK                            R17 K34 ["Frame"]
      143 NEWTABLE                         R18 4 0
      145 GETIMPORT                        R19 K37 [UDim2.new]
      147 LOADN                            R20 0
      148 GETTABLEKS                       R22 R0 K39 ["Depth"]
      150 MULK                             R21 R22 K38 [28]
      151 LOADN                            R22 0
      152 LOADN                            R23 0
      153 CALL                             R19 4 1
      154 SETTABLEKS                       R19 R18 K26 ["Size"]
      156 MOVE                             R19 R1
      157 CALL                             R19 0 1
      158 SETTABLEKS                       R19 R18 K19 ["LayoutOrder"]
      160 GETUPVAL                         R19 8
      161 GETTABLEKS                       R19 R19 K21 ["Tag"]
      163 LOADK                            R20 K40 ["Role-Surface"]
      164 SETTABLE                         R20 R18 R19
      165 CALL                             R16 2 1
      166 SETTABLEKS                       R16 R15 K30 ["Spacer"]
      168 GETUPVAL                         R16 7
      169 LOADK                            R17 K34 ["Frame"]
      170 NEWTABLE                         R18 2 0
      172 MOVE                             R19 R1
      173 CALL                             R19 0 1
      174 SETTABLEKS                       R19 R18 K19 ["LayoutOrder"]
      176 GETUPVAL                         R19 8
      177 GETTABLEKS                       R19 R19 K21 ["Tag"]
      179 LOADK                            R20 K41 ["Role-Surface X-Fit"]
      180 SETTABLE                         R20 R18 R19
      181 DUPTABLE                         R19 K43 [{"Button"}]
      182 GETUPVAL                         R20 7
      183 LOADK                            R21 K44 ["ImageButton"]
      184 NEWTABLE                         R22 4 0
      186 GETUPVAL                         R23 9
      187 SETTABLEKS                       R23 R22 K45 ["Image"]
      189 JUMPIFNOT                        R3 ; [+2]
      190 LOADN                            R23 0
      191 JUMP                             ; [+1]
      192 LOADN                            R23 1
      193 SETTABLEKS                       R23 R22 K46 ["ImageTransparency"]
      195 SETTABLEKS                       R8 R22 K47 ["ref"]
      197 GETUPVAL                         R23 8
      198 GETTABLEKS                       R23 R23 K27 ["Event"]
      200 GETTABLEKS                       R23 R23 K28 ["Activated"]
      202 NEWCLOSURE                       R24 P2
      203 CAPTURE                          VAL R3
      204 CAPTURE                          VAL R0
      205 SETTABLE                         R24 R22 R23
      206 CALL                             R20 2 1
      207 SETTABLEKS                       R20 R19 K42 ["Button"]
      209 CALL                             R16 3 1
      210 SETTABLEKS                       R16 R15 K31 ["Arrow"]
      212 GETUPVAL                         R16 7
      213 GETUPVAL                         R17 10
      214 DUPTABLE                         R18 K50 [{"LayoutOrder", "Checked", "OnClick"}]
      215 MOVE                             R19 R1
      216 CALL                             R19 0 1
      217 SETTABLEKS                       R19 R18 K19 ["LayoutOrder"]
      219 GETTABLEKS                       R19 R2 K51 ["Placed"]
      221 SETTABLEKS                       R19 R18 K48 ["Checked"]
      223 NEWCLOSURE                       R19 P3
      224 CAPTURE                          VAL R0
      225 SETTABLEKS                       R19 R18 K49 ["OnClick"]
      227 CALL                             R16 2 1
      228 SETTABLEKS                       R16 R15 K32 ["Checkbox"]
      230 GETUPVAL                         R16 7
      231 LOADK                            R17 K52 ["ImageLabel"]
      232 DUPTABLE                         R18 K53 [{"LayoutOrder", "Image"}]
      233 MOVE                             R19 R1
      234 CALL                             R19 0 1
      235 SETTABLEKS                       R19 R18 K19 ["LayoutOrder"]
      237 SETTABLEKS                       R7 R18 K45 ["Image"]
      239 CALL                             R16 2 1
      240 SETTABLEKS                       R16 R15 K8 ["Icon"]
      242 GETUPVAL                         R16 7
      243 LOADK                            R17 K34 ["Frame"]
      244 NEWTABLE                         R18 2 0
      246 MOVE                             R19 R1
      247 CALL                             R19 0 1
      248 SETTABLEKS                       R19 R18 K19 ["LayoutOrder"]
      250 GETUPVAL                         R19 8
      251 GETTABLEKS                       R19 R19 K21 ["Tag"]
      253 LOADK                            R20 K54 ["Role-Surface X-Column"]
      254 SETTABLE                         R20 R18 R19
      255 DUPTABLE                         R19 K55 [{"Title", "Description"}]
      256 JUMPIFNOT                        R10 ; [+31]
      257 GETUPVAL                         R20 7
      258 LOADK                            R21 K34 ["Frame"]
      259 NEWTABLE                         R22 1 0
      261 GETUPVAL                         R23 8
      262 GETTABLEKS                       R23 R23 K21 ["Tag"]
      264 LOADK                            R24 K56 ["X-FitY X-RowSpace100 Role-Surface X-Middle"]
      265 SETTABLE                         R24 R22 R23
      266 DUPTABLE                         R23 K57 [{"Title", "Tag"}]
      267 SETTABLEKS                       R11 R23 K3 ["Title"]
      269 GETUPVAL                         R24 7
      270 GETUPVAL                         R25 11
      271 DUPTABLE                         R26 K60 [{"LayoutOrder", "text", "variant"}]
      272 MOVE                             R27 R1
      273 CALL                             R27 0 1
      274 SETTABLEKS                       R27 R26 K19 ["LayoutOrder"]
      276 SETTABLEKS                       R10 R26 K58 ["text"]
      278 GETUPVAL                         R27 12
      279 GETTABLEKS                       R27 R27 K61 ["Secondary"]
      281 SETTABLEKS                       R27 R26 K59 ["variant"]
      283 CALL                             R24 2 1
      284 SETTABLEKS                       R24 R23 K21 ["Tag"]
      286 CALL                             R20 3 1
      287 JUMP                             ; [+1]
      288 MOVE                             R20 R11
      289 SETTABLEKS                       R20 R19 K3 ["Title"]
      291 GETUPVAL                         R20 7
      292 LOADK                            R21 K18 ["TextLabel"]
      293 NEWTABLE                         R22 4 0
      295 MOVE                             R23 R1
      296 CALL                             R23 0 1
      297 SETTABLEKS                       R23 R22 K19 ["LayoutOrder"]
      299 SETTABLEKS                       R6 R22 K20 ["Text"]
      301 GETUPVAL                         R23 8
      302 GETTABLEKS                       R23 R23 K21 ["Tag"]
      304 LOADK                            R24 K62 ["X-FitY"]
      305 SETTABLE                         R24 R22 R23
      306 CALL                             R20 2 1
      307 SETTABLEKS                       R20 R19 K7 ["Description"]
      309 CALL                             R16 3 1
      310 SETTABLEKS                       R16 R15 K20 ["Text"]
      312 CALL                             R12 3 -1
      313 RETURN                           R12 -1

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
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["createElement"]
       23 GETTABLEKS                       R4 R1 K10 ["useEffect"]
       25 GETTABLEKS                       R5 R1 K11 ["useRef"]
       27 GETIMPORT                        R6 K5 [require]
       29 GETTABLEKS                       R7 R0 K6 ["Packages"]
       31 GETTABLEKS                       R7 R7 K12 ["Framework"]
       33 CALL                             R6 1 1
       34 GETTABLEKS                       R7 R6 K13 ["ContextServices"]
       36 GETTABLEKS                       R7 R7 K14 ["Localization"]
       38 GETTABLEKS                       R8 R6 K15 ["Util"]
       40 GETTABLEKS                       R8 R8 K16 ["counter"]
       42 GETIMPORT                        R9 K5 [require]
       44 GETTABLEKS                       R10 R0 K17 ["Src"]
       46 GETTABLEKS                       R10 R10 K18 ["Components"]
       48 GETTABLEKS                       R10 R10 K19 ["RibbonCheckbox"]
       50 CALL                             R9 1 1
       51 GETIMPORT                        R10 K5 [require]
       53 GETTABLEKS                       R11 R0 K17 ["Src"]
       55 GETTABLEKS                       R11 R11 K15 ["Util"]
       57 GETTABLEKS                       R11 R11 K20 ["IconHelper"]
       59 CALL                             R10 1 1
       60 GETIMPORT                        R11 K5 [require]
       62 GETIMPORT                        R12 K1 [script]
       64 GETTABLEKS                       R12 R12 K21 ["Parent"]
       66 GETTABLEKS                       R12 R12 K22 ["ToolTreeHelpers"]
       68 CALL                             R11 1 1
       69 GETTABLEKS                       R12 R2 K23 ["Badge"]
       71 GETTABLEKS                       R13 R2 K24 ["Enums"]
       73 GETTABLEKS                       R13 R13 K25 ["BadgeVariant"]
       75 GETIMPORT                        R14 K27 [game]
       77 LOADK                            R16 K28 ["TweenService"]
       78 NAMECALL                         R14 R14 K29 ["GetService"]
       80 CALL                             R14 2 1
       81 GETIMPORT                        R15 K32 [TweenInfo.new]
       83 LOADK                            R16 K33 [0.1]
       84 GETIMPORT                        R17 K37 [Enum.EasingStyle.Linear]
       86 CALL                             R15 2 1
       87 GETTABLEKS                       R16 R10 K38 ["getPathForIcon"]
       89 LOADK                            R17 K39 ["ChevronRight"]
       90 LOADK                            R18 K40 ["Small"]
       91 CALL                             R16 2 1
       92 GETTABLEKS                       R17 R10 K38 ["getPathForIcon"]
       94 LOADK                            R18 K41 ["Placeholder"]
       95 LOADK                            R19 K42 ["Large"]
       96 CALL                             R17 2 1
       97 DUPCLOSURE                       R18 K43 [PROTO_4]
       98 CAPTURE                          VAL R8
       99 CAPTURE                          VAL R7
      100 CAPTURE                          VAL R17
      101 CAPTURE                          VAL R5
      102 CAPTURE                          VAL R4
      103 CAPTURE                          VAL R14
      104 CAPTURE                          VAL R15
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R1
      107 CAPTURE                          VAL R16
      108 CAPTURE                          VAL R9
      109 CAPTURE                          VAL R12
      110 CAPTURE                          VAL R13
      111 RETURN                           R18 1
