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
       26 GETUPVAL                         R8 3
       27 CALL                             R8 0 1
       28 JUMPIF                           R8 ; [+3]
       29 GETUPVAL                         R8 4
       30 CALL                             R8 0 1
       31 JUMPIFNOT                        R8 ; [+2]
       32 LOADK                            R7 K10 ["col size-full padding-medium gap-medium"]
       33 JUMP                             ; [+1]
       34 LOADK                            R7 K11 ["col size-full flex-y-fill padding-medium gap-medium"]
       35 SETTABLEKS                       R7 R6 K8 ["tag"]
       37 NEWTABLE                         R7 0 3
       39 GETUPVAL                         R8 2
       40 GETUPVAL                         R9 0
       41 GETTABLEKS                       R9 R9 K7 ["View"]
       43 DUPTABLE                         R10 K9 [{"tag"}]
       44 LOADK                            R11 K12 ["row size-full-0 auto-y gap-small"]
       45 SETTABLEKS                       R11 R10 K8 ["tag"]
       47 NEWTABLE                         R11 0 2
       49 GETUPVAL                         R12 2
       50 GETUPVAL                         R13 0
       51 GETTABLEKS                       R13 R13 K13 ["Icon"]
       53 DUPTABLE                         R14 K18 [{"name", "size", "variant", "style"}]
       54 GETUPVAL                         R15 0
       55 GETTABLEKS                       R15 R15 K19 ["Enums"]
       57 GETTABLEKS                       R15 R15 K20 ["IconName"]
       59 GETTABLEKS                       R15 R15 K21 ["CircleX"]
       61 SETTABLEKS                       R15 R14 K14 ["name"]
       63 GETUPVAL                         R15 0
       64 GETTABLEKS                       R15 R15 K19 ["Enums"]
       66 GETTABLEKS                       R15 R15 K22 ["IconSize"]
       68 GETTABLEKS                       R15 R15 K23 ["Medium"]
       70 SETTABLEKS                       R15 R14 K15 ["size"]
       72 GETUPVAL                         R15 0
       73 GETTABLEKS                       R15 R15 K19 ["Enums"]
       75 GETTABLEKS                       R15 R15 K24 ["IconVariant"]
       77 GETTABLEKS                       R15 R15 K25 ["Filled"]
       79 SETTABLEKS                       R15 R14 K16 ["variant"]
       81 GETTABLEKS                       R15 R1 K26 ["Color"]
       83 GETTABLEKS                       R15 R15 K27 ["Extended"]
       85 GETTABLEKS                       R15 R15 K28 ["Red"]
       87 GETTABLEKS                       R15 R15 K29 ["Red_700"]
       89 SETTABLEKS                       R15 R14 K17 ["style"]
       91 CALL                             R12 2 1
       92 GETUPVAL                         R13 2
       93 GETUPVAL                         R14 0
       94 GETTABLEKS                       R14 R14 K30 ["Text"]
       96 DUPTABLE                         R15 K31 [{"Text", "tag"}]
       97 GETUPVAL                         R17 5
       98 CALL                             R17 0 1
       99 JUMPIFNOT                        R17 ; [+6]
      100 LOADK                            R18 K32 ["ErrorDialog"]
      101 LOADK                            R19 K33 ["Body"]
      102 NAMECALL                         R16 R2 K34 ["getText"]
      104 CALL                             R16 3 1
      105 JUMP                             ; [+1]
      106 LOADK                            R16 K35 ["Errors occured during reimport"]
      107 SETTABLEKS                       R16 R15 K30 ["Text"]
      109 LOADK                            R16 K36 [" flex-y-fill auto-y text-align-x-left text-align-y-center text-title-large"]
      110 SETTABLEKS                       R16 R15 K8 ["tag"]
      112 CALL                             R13 2 -1
      113 SETLIST                          R11 R12 -1 [1]
      115 CALL                             R8 3 1
      116 GETUPVAL                         R9 2
      117 GETUPVAL                         R10 0
      118 GETTABLEKS                       R10 R10 K7 ["View"]
      120 DUPTABLE                         R11 K9 [{"tag"}]
      121 GETUPVAL                         R13 3
      122 CALL                             R13 0 1
      123 JUMPIF                           R13 ; [+3]
      124 GETUPVAL                         R13 4
      125 CALL                             R13 0 1
      126 JUMPIFNOT                        R13 ; [+2]
      127 LOADK                            R12 K37 ["col size-full-0 grow padding-left-medium"]
      128 JUMP                             ; [+1]
      129 LOADK                            R12 K38 ["col size-full-0 auto-y padding-left-medium"]
      130 SETTABLEKS                       R12 R11 K8 ["tag"]
      132 NEWTABLE                         R12 0 1
      134 GETUPVAL                         R13 2
      135 GETUPVAL                         R14 0
      136 GETTABLEKS                       R14 R14 K39 ["ScrollView"]
      138 DUPTABLE                         R15 K42 [{"layout", "scroll", "tag"}]
      139 DUPTABLE                         R16 K44 [{"FillDirection"}]
      140 GETIMPORT                        R17 K47 [Enum.FillDirection.Vertical]
      142 SETTABLEKS                       R17 R16 K43 ["FillDirection"]
      144 SETTABLEKS                       R16 R15 K40 ["layout"]
      146 DUPTABLE                         R16 K51 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      147 GETIMPORT                        R17 K54 [Enum.AutomaticSize.Y]
      149 SETTABLEKS                       R17 R16 K48 ["AutomaticCanvasSize"]
      151 GETIMPORT                        R17 K57 [UDim2.fromOffset]
      153 LOADN                            R18 0
      154 LOADN                            R19 0
      155 CALL                             R17 2 1
      156 SETTABLEKS                       R17 R16 K49 ["CanvasSize"]
      158 GETIMPORT                        R17 K58 [Enum.ScrollingDirection.Y]
      160 SETTABLEKS                       R17 R16 K50 ["ScrollingDirection"]
      162 SETTABLEKS                       R16 R15 K41 ["scroll"]
      164 LOADK                            R16 K59 ["col size-full"]
      165 SETTABLEKS                       R16 R15 K8 ["tag"]
      167 NEWTABLE                         R16 0 1
      169 GETUPVAL                         R17 2
      170 NEWCLOSURE                       R18 P0
      171 CAPTURE                          UPVAL U6
      172 CAPTURE                          VAL R0
      173 CAPTURE                          UPVAL U2
      174 CAPTURE                          UPVAL U0
      175 CALL                             R17 1 -1
      176 SETLIST                          R16 R17 -1 [1]
      178 CALL                             R13 3 -1
      179 SETLIST                          R12 R13 -1 [1]
      181 CALL                             R9 3 1
      182 GETUPVAL                         R11 3
      183 CALL                             R11 0 1
      184 JUMPIF                           R11 ; [+3]
      185 GETUPVAL                         R11 4
      186 CALL                             R11 0 1
      187 JUMPIFNOT                        R11 ; [+121]
      188 GETUPVAL                         R10 2
      189 GETUPVAL                         R11 0
      190 GETTABLEKS                       R11 R11 K7 ["View"]
      192 DUPTABLE                         R12 K9 [{"tag"}]
      193 LOADK                            R13 K60 ["col auto-y size-full-0 align-y-bottom"]
      194 SETTABLEKS                       R13 R12 K8 ["tag"]
      196 NEWTABLE                         R13 0 2
      198 GETUPVAL                         R14 2
      199 GETUPVAL                         R15 0
      200 GETTABLEKS                       R15 R15 K61 ["Divider"]
      202 NEWTABLE                         R16 0 0
      204 CALL                             R14 2 1
      205 GETUPVAL                         R15 2
      206 GETUPVAL                         R16 0
      207 GETTABLEKS                       R16 R16 K7 ["View"]
      209 DUPTABLE                         R17 K9 [{"tag"}]
      210 LOADK                            R18 K62 ["row size-full-0 auto-y padding-top-medium gap-small align-x-right align-y-bottom"]
      211 SETTABLEKS                       R18 R17 K8 ["tag"]
      213 NEWTABLE                         R18 0 2
      215 GETUPVAL                         R20 3
      216 CALL                             R20 0 1
      217 JUMPIFNOT                        R20 ; [+32]
      218 GETUPVAL                         R19 2
      219 GETUPVAL                         R20 0
      220 GETTABLEKS                       R20 R20 K63 ["Button"]
      222 DUPTABLE                         R21 K66 [{"text", "size", "onActivated"}]
      223 GETUPVAL                         R23 5
      224 CALL                             R23 0 1
      225 JUMPIFNOT                        R23 ; [+6]
      226 LOADK                            R24 K32 ["ErrorDialog"]
      227 LOADK                            R25 K67 ["Close"]
      228 NAMECALL                         R22 R2 K34 ["getText"]
      230 CALL                             R22 3 1
      231 JUMP                             ; [+1]
      232 LOADK                            R22 K67 ["Close"]
      233 SETTABLEKS                       R22 R21 K64 ["text"]
      235 GETUPVAL                         R22 0
      236 GETTABLEKS                       R22 R22 K19 ["Enums"]
      238 GETTABLEKS                       R22 R22 K68 ["InputSize"]
      240 GETTABLEKS                       R22 R22 K69 ["XSmall"]
      242 SETTABLEKS                       R22 R21 K15 ["size"]
      244 GETTABLEKS                       R22 R0 K70 ["onClose"]
      246 SETTABLEKS                       R22 R21 K65 ["onActivated"]
      248 CALL                             R19 2 1
      249 JUMP                             ; [+1]
      250 LOADNIL                          R19
      251 GETUPVAL                         R21 4
      252 CALL                             R21 0 1
      253 JUMPIFNOT                        R21 ; [+47]
      254 GETUPVAL                         R20 2
      255 GETUPVAL                         R21 0
      256 GETTABLEKS                       R21 R21 K63 ["Button"]
      258 DUPTABLE                         R22 K72 [{"text", "variant", "size", "isDisabled", "onActivated"}]
      259 GETUPVAL                         R24 5
      260 CALL                             R24 0 1
      261 JUMPIFNOT                        R24 ; [+6]
      262 LOADK                            R25 K32 ["ErrorDialog"]
      263 LOADK                            R26 K73 ["Configure"]
      264 NAMECALL                         R23 R2 K34 ["getText"]
      266 CALL                             R23 3 1
      267 JUMP                             ; [+1]
      268 LOADK                            R23 K74 ["Configure Reimport Settings"]
      269 SETTABLEKS                       R23 R22 K64 ["text"]
      271 GETUPVAL                         R23 0
      272 GETTABLEKS                       R23 R23 K19 ["Enums"]
      274 GETTABLEKS                       R23 R23 K75 ["ButtonVariant"]
      276 GETTABLEKS                       R23 R23 K76 ["Emphasis"]
      278 SETTABLEKS                       R23 R22 K16 ["variant"]
      280 GETUPVAL                         R23 0
      281 GETTABLEKS                       R23 R23 K19 ["Enums"]
      283 GETTABLEKS                       R23 R23 K68 ["InputSize"]
      285 GETTABLEKS                       R23 R23 K69 ["XSmall"]
      287 SETTABLEKS                       R23 R22 K15 ["size"]
      289 GETTABLEKS                       R24 R0 K77 ["target"]
      291 NOT                              R23 R24
      292 SETTABLEKS                       R23 R22 K71 ["isDisabled"]
      294 NEWCLOSURE                       R23 P1
      295 CAPTURE                          VAL R0
      296 CAPTURE                          UPVAL U7
      297 SETTABLEKS                       R23 R22 K65 ["onActivated"]
      299 CALL                             R20 2 1
      300 JUMP                             ; [+1]
      301 LOADNIL                          R20
      302 SETLIST                          R18 R19 2 [1]
      304 CALL                             R15 3 -1
      305 SETLIST                          R13 R14 -1 [1]
      307 CALL                             R10 3 1
      308 JUMP                             ; [+1]
      309 LOADNIL                          R10
      310 SETLIST                          R7 R8 3 [1]
      312 CALL                             R4 3 -1
      313 SETLIST                          R3 R4 -1 [1]
      315 RETURN                           R3 1

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
       63 GETTABLEKS                       R11 R11 K21 ["GetFFlagReimportErrorCloseButton"]
       65 CALL                             R10 1 1
       66 GETIMPORT                        R11 K5 [require]
       68 GETTABLEKS                       R12 R0 K20 ["Flags"]
       70 GETTABLEKS                       R12 R12 K22 ["GetFFlagReimportErrorConfigButton"]
       72 CALL                             R11 1 1
       73 GETIMPORT                        R12 K5 [require]
       75 GETTABLEKS                       R13 R0 K20 ["Flags"]
       77 GETTABLEKS                       R13 R13 K23 ["GetFFlagReimportLocalizeDialogs"]
       79 CALL                             R12 1 1
       80 DUPCLOSURE                       R13 K24 [PROTO_2]
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R4
       84 CAPTURE                          VAL R10
       85 CAPTURE                          VAL R11
       86 CAPTURE                          VAL R12
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R9
       89 RETURN                           R13 1
