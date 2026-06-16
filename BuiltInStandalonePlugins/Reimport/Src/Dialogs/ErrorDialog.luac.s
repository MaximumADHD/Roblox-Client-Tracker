PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 LOADN                            R1 1
        4 CALL                             R0 1 1
        5 NEWTABLE                         R1 0 0
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K1 ["errors"]
       10 LOADNIL                          R3
       11 LOADNIL                          R4
       12 FORGPREP                         R2
       13 LOADN                            R7 1
       14 JUMPIFNOTLT                      R7 R5 ; [+16]
       16 MOVE                             R8 R1
       17 GETUPVAL                         R9 2
       18 GETUPVAL                         R10 3
       19 GETTABLEKS                       R10 R10 K2 ["Divider"]
       21 DUPTABLE                         R11 K4 [{"layoutOrder"}]
       22 MOVE                             R12 R0
       23 CALL                             R12 0 1
       24 SETTABLEKS                       R12 R11 K3 ["layoutOrder"]
       26 CALL                             R9 2 -1
       27 FASTCALL                         TABLE_INSERT ; [+2]
       28 GETIMPORT                        R7 K7 [table.insert]
       30 CALL                             R7 -1 0
       31 MOVE                             R8 R1
       32 GETUPVAL                         R9 2
       33 GETUPVAL                         R10 3
       34 GETTABLEKS                       R10 R10 K8 ["View"]
       36 DUPTABLE                         R11 K10 [{"layoutOrder", "tag"}]
       37 MOVE                             R12 R0
       38 CALL                             R12 0 1
       39 SETTABLEKS                       R12 R11 K3 ["layoutOrder"]
       41 LOADK                            R12 K11 ["col size-full-0 auto-y padding-y-small"]
       42 SETTABLEKS                       R12 R11 K9 ["tag"]
       44 NEWTABLE                         R12 0 2
       46 GETTABLEKS                       R14 R6 K12 ["label"]
       48 JUMPIFNOTEQKNIL                  R14 ; [+3]
       50 LOADNIL                          R13
       51 JUMP                             ; [+16]
       52 GETUPVAL                         R13 2
       53 GETUPVAL                         R14 3
       54 GETTABLEKS                       R14 R14 K13 ["Text"]
       56 DUPTABLE                         R15 K15 [{"tag", "Text", "TextWrapped"}]
       57 LOADK                            R16 K16 ["size-full-0 auto-y text-align-x-left text-title-small"]
       58 SETTABLEKS                       R16 R15 K9 ["tag"]
       60 GETTABLEKS                       R16 R6 K12 ["label"]
       62 SETTABLEKS                       R16 R15 K13 ["Text"]
       64 LOADB                            R16 1
       65 SETTABLEKS                       R16 R15 K14 ["TextWrapped"]
       67 CALL                             R13 2 1
       68 GETUPVAL                         R14 2
       69 GETUPVAL                         R15 3
       70 GETTABLEKS                       R15 R15 K13 ["Text"]
       72 DUPTABLE                         R16 K15 [{"tag", "Text", "TextWrapped"}]
       73 LOADK                            R17 K17 ["size-full-0 auto-y text-align-x-left text-body-small"]
       74 SETTABLEKS                       R17 R16 K9 ["tag"]
       76 GETTABLEKS                       R17 R6 K18 ["message"]
       78 SETTABLEKS                       R17 R16 K13 ["Text"]
       80 LOADB                            R17 1
       81 SETTABLEKS                       R17 R16 K14 ["TextWrapped"]
       83 CALL                             R14 2 -1
       84 SETLIST                          R12 R13 -1 [1]
       86 CALL                             R9 3 -1
       87 FASTCALL                         TABLE_INSERT ; [+2]
       88 GETIMPORT                        R7 K7 [table.insert]
       90 CALL                             R7 -1 0
       91 FORGLOOP                         R2 2 ; [-79]
       93 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["target"]
        3 JUMPIFNOT                        R0 ; [+13]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["onClose"]
        7 CALL                             R0 0 0
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K2 ["configure"]
       11 GETTABLEKS                       R0 R0 K3 ["show"]
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K0 ["target"]
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["errors"]
        2 JUMPIF                           R1 ; [+6]
        3 DUPTABLE                         R1 K2 [{"message"}]
        4 LOADK                            R2 K3 ["unexpected internal error"]
        5 SETTABLEKS                       R2 R1 K1 ["message"]
        7 SETTABLEKS                       R1 R0 K0 ["errors"]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K4 ["Hooks"]
       12 GETTABLEKS                       R1 R1 K5 ["useTokens"]
       14 CALL                             R1 0 1
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R2 R2 K6 ["use"]
       18 CALL                             R2 0 1
       19 NEWTABLE                         R3 0 1
       21 GETUPVAL                         R4 2
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R5 R5 K7 ["View"]
       25 DUPTABLE                         R6 K9 [{"tag"}]
       26 LOADK                            R7 K10 ["col size-full padding-medium gap-medium"]
       27 SETTABLEKS                       R7 R6 K8 ["tag"]
       29 NEWTABLE                         R7 0 3
       31 GETUPVAL                         R8 2
       32 GETUPVAL                         R9 0
       33 GETTABLEKS                       R9 R9 K7 ["View"]
       35 DUPTABLE                         R10 K9 [{"tag"}]
       36 LOADK                            R11 K11 ["row size-full-0 auto-y gap-small"]
       37 SETTABLEKS                       R11 R10 K8 ["tag"]
       39 NEWTABLE                         R11 0 2
       41 GETUPVAL                         R12 2
       42 GETUPVAL                         R13 0
       43 GETTABLEKS                       R13 R13 K12 ["Icon"]
       45 DUPTABLE                         R14 K17 [{"name", "size", "variant", "style"}]
       46 GETUPVAL                         R15 0
       47 GETTABLEKS                       R15 R15 K18 ["Enums"]
       49 GETTABLEKS                       R15 R15 K19 ["IconName"]
       51 GETTABLEKS                       R15 R15 K20 ["CircleX"]
       53 SETTABLEKS                       R15 R14 K13 ["name"]
       55 GETUPVAL                         R15 0
       56 GETTABLEKS                       R15 R15 K18 ["Enums"]
       58 GETTABLEKS                       R15 R15 K21 ["IconSize"]
       60 GETTABLEKS                       R15 R15 K22 ["Medium"]
       62 SETTABLEKS                       R15 R14 K14 ["size"]
       64 GETUPVAL                         R15 0
       65 GETTABLEKS                       R15 R15 K18 ["Enums"]
       67 GETTABLEKS                       R15 R15 K23 ["IconVariant"]
       69 GETTABLEKS                       R15 R15 K24 ["Filled"]
       71 SETTABLEKS                       R15 R14 K15 ["variant"]
       73 GETTABLEKS                       R15 R1 K25 ["Color"]
       75 GETTABLEKS                       R15 R15 K26 ["Extended"]
       77 GETTABLEKS                       R15 R15 K27 ["Red"]
       79 GETTABLEKS                       R15 R15 K28 ["Red_700"]
       81 SETTABLEKS                       R15 R14 K16 ["style"]
       83 CALL                             R12 2 1
       84 GETUPVAL                         R13 2
       85 GETUPVAL                         R14 0
       86 GETTABLEKS                       R14 R14 K29 ["Text"]
       88 DUPTABLE                         R15 K30 [{"Text", "tag"}]
       89 GETUPVAL                         R17 3
       90 CALL                             R17 0 1
       91 JUMPIFNOT                        R17 ; [+6]
       92 LOADK                            R18 K31 ["ErrorDialog"]
       93 LOADK                            R19 K32 ["Body"]
       94 NAMECALL                         R16 R2 K33 ["getText"]
       96 CALL                             R16 3 1
       97 JUMP                             ; [+1]
       98 LOADK                            R16 K34 ["Errors occured during reimport"]
       99 SETTABLEKS                       R16 R15 K29 ["Text"]
      101 LOADK                            R16 K35 [" flex-y-fill auto-y text-align-x-left text-align-y-center text-title-large"]
      102 SETTABLEKS                       R16 R15 K8 ["tag"]
      104 CALL                             R13 2 -1
      105 SETLIST                          R11 R12 -1 [1]
      107 CALL                             R8 3 1
      108 GETUPVAL                         R9 2
      109 GETUPVAL                         R10 0
      110 GETTABLEKS                       R10 R10 K7 ["View"]
      112 DUPTABLE                         R11 K9 [{"tag"}]
      113 LOADK                            R12 K36 ["col size-full-0 grow padding-left-medium"]
      114 SETTABLEKS                       R12 R11 K8 ["tag"]
      116 NEWTABLE                         R12 0 1
      118 GETUPVAL                         R13 2
      119 GETUPVAL                         R14 0
      120 GETTABLEKS                       R14 R14 K37 ["ScrollView"]
      122 DUPTABLE                         R15 K40 [{"layout", "scroll", "tag"}]
      123 DUPTABLE                         R16 K42 [{"FillDirection"}]
      124 GETIMPORT                        R17 K45 [Enum.FillDirection.Vertical]
      126 SETTABLEKS                       R17 R16 K41 ["FillDirection"]
      128 SETTABLEKS                       R16 R15 K38 ["layout"]
      130 DUPTABLE                         R16 K49 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      131 GETIMPORT                        R17 K52 [Enum.AutomaticSize.Y]
      133 SETTABLEKS                       R17 R16 K46 ["AutomaticCanvasSize"]
      135 GETIMPORT                        R17 K55 [UDim2.fromOffset]
      137 LOADN                            R18 0
      138 LOADN                            R19 0
      139 CALL                             R17 2 1
      140 SETTABLEKS                       R17 R16 K47 ["CanvasSize"]
      142 GETIMPORT                        R17 K56 [Enum.ScrollingDirection.Y]
      144 SETTABLEKS                       R17 R16 K48 ["ScrollingDirection"]
      146 SETTABLEKS                       R16 R15 K39 ["scroll"]
      148 LOADK                            R16 K57 ["col size-full"]
      149 SETTABLEKS                       R16 R15 K8 ["tag"]
      151 NEWTABLE                         R16 0 1
      153 GETUPVAL                         R17 2
      154 NEWCLOSURE                       R18 P0
      155 CAPTURE                          UPVAL U4
      156 CAPTURE                          VAL R0
      157 CAPTURE                          UPVAL U2
      158 CAPTURE                          UPVAL U0
      159 CALL                             R17 1 -1
      160 SETLIST                          R16 R17 -1 [1]
      162 CALL                             R13 3 -1
      163 SETLIST                          R12 R13 -1 [1]
      165 CALL                             R9 3 1
      166 GETUPVAL                         R10 2
      167 GETUPVAL                         R11 0
      168 GETTABLEKS                       R11 R11 K7 ["View"]
      170 DUPTABLE                         R12 K9 [{"tag"}]
      171 LOADK                            R13 K58 ["col auto-y size-full-0 align-y-bottom"]
      172 SETTABLEKS                       R13 R12 K8 ["tag"]
      174 NEWTABLE                         R13 0 2
      176 GETUPVAL                         R14 2
      177 GETUPVAL                         R15 0
      178 GETTABLEKS                       R15 R15 K59 ["Divider"]
      180 NEWTABLE                         R16 0 0
      182 CALL                             R14 2 1
      183 GETUPVAL                         R15 2
      184 GETUPVAL                         R16 0
      185 GETTABLEKS                       R16 R16 K7 ["View"]
      187 DUPTABLE                         R17 K9 [{"tag"}]
      188 LOADK                            R18 K60 ["row size-full-0 auto-y padding-top-medium gap-small align-x-right align-y-bottom"]
      189 SETTABLEKS                       R18 R17 K8 ["tag"]
      191 NEWTABLE                         R18 0 2
      193 GETUPVAL                         R19 2
      194 GETUPVAL                         R20 0
      195 GETTABLEKS                       R20 R20 K61 ["Button"]
      197 DUPTABLE                         R21 K64 [{"text", "size", "onActivated"}]
      198 GETUPVAL                         R23 3
      199 CALL                             R23 0 1
      200 JUMPIFNOT                        R23 ; [+6]
      201 LOADK                            R24 K31 ["ErrorDialog"]
      202 LOADK                            R25 K65 ["Close"]
      203 NAMECALL                         R22 R2 K33 ["getText"]
      205 CALL                             R22 3 1
      206 JUMP                             ; [+1]
      207 LOADK                            R22 K65 ["Close"]
      208 SETTABLEKS                       R22 R21 K62 ["text"]
      210 GETUPVAL                         R22 0
      211 GETTABLEKS                       R22 R22 K18 ["Enums"]
      213 GETTABLEKS                       R22 R22 K66 ["InputSize"]
      215 GETTABLEKS                       R22 R22 K67 ["XSmall"]
      217 SETTABLEKS                       R22 R21 K14 ["size"]
      219 GETTABLEKS                       R22 R0 K68 ["onClose"]
      221 SETTABLEKS                       R22 R21 K63 ["onActivated"]
      223 CALL                             R19 2 1
      224 GETUPVAL                         R20 2
      225 GETUPVAL                         R21 0
      226 GETTABLEKS                       R21 R21 K61 ["Button"]
      228 DUPTABLE                         R22 K70 [{"text", "variant", "size", "isDisabled", "onActivated"}]
      229 GETUPVAL                         R24 3
      230 CALL                             R24 0 1
      231 JUMPIFNOT                        R24 ; [+6]
      232 LOADK                            R25 K31 ["ErrorDialog"]
      233 LOADK                            R26 K71 ["Configure"]
      234 NAMECALL                         R23 R2 K33 ["getText"]
      236 CALL                             R23 3 1
      237 JUMP                             ; [+1]
      238 LOADK                            R23 K72 ["Configure Reimport Settings"]
      239 SETTABLEKS                       R23 R22 K62 ["text"]
      241 GETUPVAL                         R23 0
      242 GETTABLEKS                       R23 R23 K18 ["Enums"]
      244 GETTABLEKS                       R23 R23 K73 ["ButtonVariant"]
      246 GETTABLEKS                       R23 R23 K74 ["Emphasis"]
      248 SETTABLEKS                       R23 R22 K15 ["variant"]
      250 GETUPVAL                         R23 0
      251 GETTABLEKS                       R23 R23 K18 ["Enums"]
      253 GETTABLEKS                       R23 R23 K66 ["InputSize"]
      255 GETTABLEKS                       R23 R23 K67 ["XSmall"]
      257 SETTABLEKS                       R23 R22 K14 ["size"]
      259 GETTABLEKS                       R24 R0 K75 ["target"]
      261 NOT                              R23 R24
      262 SETTABLEKS                       R23 R22 K69 ["isDisabled"]
      264 NEWCLOSURE                       R23 P1
      265 CAPTURE                          VAL R0
      266 CAPTURE                          UPVAL U5
      267 SETTABLEKS                       R23 R22 K63 ["onActivated"]
      269 CALL                             R20 2 -1
      270 SETLIST                          R18 R19 -1 [1]
      272 CALL                             R15 3 -1
      273 SETLIST                          R13 R14 -1 [1]
      275 CALL                             R10 3 -1
      276 SETLIST                          R7 R8 -1 [1]
      278 CALL                             R4 3 -1
      279 SETLIST                          R3 R4 -1 [1]
      281 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReimportPlugin"]
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
       28 GETTABLEKS                       R4 R3 K10 ["createElement"]
       30 GETTABLEKS                       R5 R2 K11 ["ContextServices"]
       32 GETTABLEKS                       R6 R5 K12 ["Localization"]
       34 GETIMPORT                        R7 K5 [require]
       36 GETTABLEKS                       R8 R0 K13 ["Lib"]
       38 GETTABLEKS                       R8 R8 K14 ["Util"]
       40 GETTABLEKS                       R8 R8 K15 ["Counter"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K5 [require]
       45 GETTABLEKS                       R9 R0 K16 ["Src"]
       47 GETTABLEKS                       R9 R9 K17 ["Dialogs"]
       49 GETTABLEKS                       R9 R9 K18 ["Types"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K5 [require]
       54 GETTABLEKS                       R10 R0 K13 ["Lib"]
       56 GETTABLEKS                       R10 R10 K19 ["DialogRegistry"]
       58 CALL                             R9 1 1
       59 GETIMPORT                        R10 K5 [require]
       61 GETTABLEKS                       R11 R0 K20 ["Flags"]
       63 GETTABLEKS                       R11 R11 K21 ["GetFFlagReimportLocalizeDialogs"]
       65 CALL                             R10 1 1
       66 DUPCLOSURE                       R11 K22 [PROTO_2]
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R10
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R9
       73 RETURN                           R11 1
