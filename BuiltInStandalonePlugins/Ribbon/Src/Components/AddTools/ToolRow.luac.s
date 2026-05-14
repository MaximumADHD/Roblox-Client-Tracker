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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnCheck"]
        3 GETUPVAL                         R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_5:
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
      212 GETUPVAL                         R17 10
      213 CALL                             R17 0 1
      214 JUMPIFNOT                        R17 ; [+25]
      215 GETUPVAL                         R16 7
      216 GETUPVAL                         R17 11
      217 DUPTABLE                         R18 K52 [{"LayoutOrder", "isChecked", "onActivated", "size", "label"}]
      218 MOVE                             R19 R1
      219 CALL                             R19 0 1
      220 SETTABLEKS                       R19 R18 K19 ["LayoutOrder"]
      222 GETTABLEKS                       R19 R2 K53 ["Placed"]
      224 SETTABLEKS                       R19 R18 K48 ["isChecked"]
      226 NEWCLOSURE                       R19 P3
      227 CAPTURE                          VAL R0
      228 SETTABLEKS                       R19 R18 K49 ["onActivated"]
      230 GETUPVAL                         R19 12
      231 GETTABLEKS                       R19 R19 K54 ["XSmall"]
      233 SETTABLEKS                       R19 R18 K50 ["size"]
      235 LOADK                            R19 K55 [""]
      236 SETTABLEKS                       R19 R18 K51 ["label"]
      238 CALL                             R16 2 1
      239 JUMP                             ; [+16]
      240 GETUPVAL                         R16 7
      241 GETUPVAL                         R17 13
      242 DUPTABLE                         R18 K58 [{"LayoutOrder", "Checked", "OnClick"}]
      243 MOVE                             R19 R1
      244 CALL                             R19 0 1
      245 SETTABLEKS                       R19 R18 K19 ["LayoutOrder"]
      247 GETTABLEKS                       R19 R2 K53 ["Placed"]
      249 SETTABLEKS                       R19 R18 K56 ["Checked"]
      251 NEWCLOSURE                       R19 P4
      252 CAPTURE                          VAL R0
      253 SETTABLEKS                       R19 R18 K57 ["OnClick"]
      255 CALL                             R16 2 1
      256 SETTABLEKS                       R16 R15 K32 ["Checkbox"]
      258 GETUPVAL                         R16 7
      259 LOADK                            R17 K59 ["ImageLabel"]
      260 DUPTABLE                         R18 K60 [{"LayoutOrder", "Image"}]
      261 MOVE                             R19 R1
      262 CALL                             R19 0 1
      263 SETTABLEKS                       R19 R18 K19 ["LayoutOrder"]
      265 SETTABLEKS                       R7 R18 K45 ["Image"]
      267 CALL                             R16 2 1
      268 SETTABLEKS                       R16 R15 K8 ["Icon"]
      270 GETUPVAL                         R16 7
      271 LOADK                            R17 K34 ["Frame"]
      272 NEWTABLE                         R18 2 0
      274 MOVE                             R19 R1
      275 CALL                             R19 0 1
      276 SETTABLEKS                       R19 R18 K19 ["LayoutOrder"]
      278 GETUPVAL                         R19 8
      279 GETTABLEKS                       R19 R19 K21 ["Tag"]
      281 LOADK                            R20 K61 ["Role-Surface X-Column"]
      282 SETTABLE                         R20 R18 R19
      283 DUPTABLE                         R19 K62 [{"Title", "Description"}]
      284 JUMPIFNOT                        R10 ; [+31]
      285 GETUPVAL                         R20 7
      286 LOADK                            R21 K34 ["Frame"]
      287 NEWTABLE                         R22 1 0
      289 GETUPVAL                         R23 8
      290 GETTABLEKS                       R23 R23 K21 ["Tag"]
      292 LOADK                            R24 K63 ["X-FitY X-RowSpace100 Role-Surface X-Middle"]
      293 SETTABLE                         R24 R22 R23
      294 DUPTABLE                         R23 K64 [{"Title", "Tag"}]
      295 SETTABLEKS                       R11 R23 K3 ["Title"]
      297 GETUPVAL                         R24 7
      298 GETUPVAL                         R25 14
      299 DUPTABLE                         R26 K67 [{"LayoutOrder", "text", "variant"}]
      300 MOVE                             R27 R1
      301 CALL                             R27 0 1
      302 SETTABLEKS                       R27 R26 K19 ["LayoutOrder"]
      304 SETTABLEKS                       R10 R26 K65 ["text"]
      306 GETUPVAL                         R27 15
      307 GETTABLEKS                       R27 R27 K68 ["Secondary"]
      309 SETTABLEKS                       R27 R26 K66 ["variant"]
      311 CALL                             R24 2 1
      312 SETTABLEKS                       R24 R23 K21 ["Tag"]
      314 CALL                             R20 3 1
      315 JUMP                             ; [+1]
      316 MOVE                             R20 R11
      317 SETTABLEKS                       R20 R19 K3 ["Title"]
      319 GETUPVAL                         R20 7
      320 LOADK                            R21 K18 ["TextLabel"]
      321 NEWTABLE                         R22 4 0
      323 MOVE                             R23 R1
      324 CALL                             R23 0 1
      325 SETTABLEKS                       R23 R22 K19 ["LayoutOrder"]
      327 SETTABLEKS                       R6 R22 K20 ["Text"]
      329 GETUPVAL                         R23 8
      330 GETTABLEKS                       R23 R23 K21 ["Tag"]
      332 LOADK                            R24 K69 ["X-FitY"]
      333 SETTABLE                         R24 R22 R23
      334 CALL                             R20 2 1
      335 SETTABLEKS                       R20 R19 K7 ["Description"]
      337 CALL                             R16 3 1
      338 SETTABLEKS                       R16 R15 K20 ["Text"]
      340 CALL                             R12 3 -1
      341 RETURN                           R12 -1

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
       69 GETIMPORT                        R12 K5 [require]
       71 GETTABLEKS                       R13 R0 K17 ["Src"]
       73 GETTABLEKS                       R13 R13 K23 ["SharedFlags"]
       75 GETTABLEKS                       R13 R13 K24 ["getFFlagRibbonCheckboxMigration"]
       77 CALL                             R12 1 1
       78 GETTABLEKS                       R13 R2 K25 ["Badge"]
       80 GETTABLEKS                       R14 R2 K26 ["Checkbox"]
       82 GETTABLEKS                       R15 R2 K27 ["Enums"]
       84 GETTABLEKS                       R15 R15 K28 ["InputSize"]
       86 GETTABLEKS                       R16 R2 K27 ["Enums"]
       88 GETTABLEKS                       R16 R16 K29 ["BadgeVariant"]
       90 GETIMPORT                        R17 K31 [game]
       92 LOADK                            R19 K32 ["TweenService"]
       93 NAMECALL                         R17 R17 K33 ["GetService"]
       95 CALL                             R17 2 1
       96 GETIMPORT                        R18 K36 [TweenInfo.new]
       98 LOADK                            R19 K37 [0.1]
       99 GETIMPORT                        R20 K41 [Enum.EasingStyle.Linear]
      101 CALL                             R18 2 1
      102 GETTABLEKS                       R19 R10 K42 ["getPathForIcon"]
      104 LOADK                            R20 K43 ["ChevronRight"]
      105 LOADK                            R21 K44 ["Small"]
      106 CALL                             R19 2 1
      107 GETTABLEKS                       R20 R10 K42 ["getPathForIcon"]
      109 LOADK                            R21 K45 ["Placeholder"]
      110 LOADK                            R22 K46 ["Large"]
      111 CALL                             R20 2 1
      112 DUPCLOSURE                       R21 K47 [PROTO_5]
      113 CAPTURE                          VAL R8
      114 CAPTURE                          VAL R7
      115 CAPTURE                          VAL R20
      116 CAPTURE                          VAL R5
      117 CAPTURE                          VAL R4
      118 CAPTURE                          VAL R17
      119 CAPTURE                          VAL R18
      120 CAPTURE                          VAL R3
      121 CAPTURE                          VAL R1
      122 CAPTURE                          VAL R19
      123 CAPTURE                          VAL R12
      124 CAPTURE                          VAL R14
      125 CAPTURE                          VAL R15
      126 CAPTURE                          VAL R9
      127 CAPTURE                          VAL R13
      128 CAPTURE                          VAL R16
      129 RETURN                           R21 1
