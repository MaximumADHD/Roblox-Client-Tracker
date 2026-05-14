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
       15 NEWTABLE                         R2 0 1
       17 GETUPVAL                         R3 1
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K6 ["View"]
       21 DUPTABLE                         R5 K8 [{"tag"}]
       22 GETUPVAL                         R7 2
       23 CALL                             R7 0 1
       24 JUMPIF                           R7 ; [+3]
       25 GETUPVAL                         R7 3
       26 CALL                             R7 0 1
       27 JUMPIFNOT                        R7 ; [+2]
       28 LOADK                            R6 K9 ["col size-full padding-medium gap-medium"]
       29 JUMP                             ; [+1]
       30 LOADK                            R6 K10 ["col size-full flex-y-fill padding-medium gap-medium"]
       31 SETTABLEKS                       R6 R5 K7 ["tag"]
       33 NEWTABLE                         R6 0 3
       35 GETUPVAL                         R7 1
       36 GETUPVAL                         R8 0
       37 GETTABLEKS                       R8 R8 K6 ["View"]
       39 DUPTABLE                         R9 K8 [{"tag"}]
       40 LOADK                            R10 K11 ["row size-full-0 auto-y gap-small"]
       41 SETTABLEKS                       R10 R9 K7 ["tag"]
       43 NEWTABLE                         R10 0 2
       45 GETUPVAL                         R11 1
       46 GETUPVAL                         R12 0
       47 GETTABLEKS                       R12 R12 K12 ["Icon"]
       49 DUPTABLE                         R13 K17 [{"name", "size", "variant", "style"}]
       50 GETUPVAL                         R14 0
       51 GETTABLEKS                       R14 R14 K18 ["Enums"]
       53 GETTABLEKS                       R14 R14 K19 ["IconName"]
       55 GETTABLEKS                       R14 R14 K20 ["CircleX"]
       57 SETTABLEKS                       R14 R13 K13 ["name"]
       59 GETUPVAL                         R14 0
       60 GETTABLEKS                       R14 R14 K18 ["Enums"]
       62 GETTABLEKS                       R14 R14 K21 ["IconSize"]
       64 GETTABLEKS                       R14 R14 K22 ["Medium"]
       66 SETTABLEKS                       R14 R13 K14 ["size"]
       68 GETUPVAL                         R14 0
       69 GETTABLEKS                       R14 R14 K18 ["Enums"]
       71 GETTABLEKS                       R14 R14 K23 ["IconVariant"]
       73 GETTABLEKS                       R14 R14 K24 ["Filled"]
       75 SETTABLEKS                       R14 R13 K15 ["variant"]
       77 GETTABLEKS                       R14 R1 K25 ["Color"]
       79 GETTABLEKS                       R14 R14 K26 ["Extended"]
       81 GETTABLEKS                       R14 R14 K27 ["Red"]
       83 GETTABLEKS                       R14 R14 K28 ["Red_700"]
       85 SETTABLEKS                       R14 R13 K16 ["style"]
       87 CALL                             R11 2 1
       88 GETUPVAL                         R12 1
       89 GETUPVAL                         R13 0
       90 GETTABLEKS                       R13 R13 K29 ["Text"]
       92 DUPTABLE                         R14 K30 [{"Text", "tag"}]
       93 LOADK                            R15 K31 ["Errors occured during reimport"]
       94 SETTABLEKS                       R15 R14 K29 ["Text"]
       96 LOADK                            R15 K32 [" flex-y-fill auto-y text-align-x-left text-align-y-center text-title-large"]
       97 SETTABLEKS                       R15 R14 K7 ["tag"]
       99 CALL                             R12 2 -1
      100 SETLIST                          R10 R11 -1 [1]
      102 CALL                             R7 3 1
      103 GETUPVAL                         R8 1
      104 GETUPVAL                         R9 0
      105 GETTABLEKS                       R9 R9 K6 ["View"]
      107 DUPTABLE                         R10 K8 [{"tag"}]
      108 GETUPVAL                         R12 2
      109 CALL                             R12 0 1
      110 JUMPIF                           R12 ; [+3]
      111 GETUPVAL                         R12 3
      112 CALL                             R12 0 1
      113 JUMPIFNOT                        R12 ; [+2]
      114 LOADK                            R11 K33 ["col size-full-0 grow padding-left-medium"]
      115 JUMP                             ; [+1]
      116 LOADK                            R11 K34 ["col size-full-0 auto-y padding-left-medium"]
      117 SETTABLEKS                       R11 R10 K7 ["tag"]
      119 NEWTABLE                         R11 0 1
      121 GETUPVAL                         R12 1
      122 GETUPVAL                         R13 0
      123 GETTABLEKS                       R13 R13 K35 ["ScrollView"]
      125 DUPTABLE                         R14 K38 [{"layout", "scroll", "tag"}]
      126 DUPTABLE                         R15 K40 [{"FillDirection"}]
      127 GETIMPORT                        R16 K43 [Enum.FillDirection.Vertical]
      129 SETTABLEKS                       R16 R15 K39 ["FillDirection"]
      131 SETTABLEKS                       R15 R14 K36 ["layout"]
      133 DUPTABLE                         R15 K47 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      134 GETIMPORT                        R16 K50 [Enum.AutomaticSize.Y]
      136 SETTABLEKS                       R16 R15 K44 ["AutomaticCanvasSize"]
      138 GETIMPORT                        R16 K53 [UDim2.fromOffset]
      140 LOADN                            R17 0
      141 LOADN                            R18 0
      142 CALL                             R16 2 1
      143 SETTABLEKS                       R16 R15 K45 ["CanvasSize"]
      145 GETIMPORT                        R16 K54 [Enum.ScrollingDirection.Y]
      147 SETTABLEKS                       R16 R15 K46 ["ScrollingDirection"]
      149 SETTABLEKS                       R15 R14 K37 ["scroll"]
      151 LOADK                            R15 K55 ["col size-full"]
      152 SETTABLEKS                       R15 R14 K7 ["tag"]
      154 NEWTABLE                         R15 0 1
      156 GETUPVAL                         R16 1
      157 NEWCLOSURE                       R17 P0
      158 CAPTURE                          UPVAL U4
      159 CAPTURE                          VAL R0
      160 CAPTURE                          UPVAL U1
      161 CAPTURE                          UPVAL U0
      162 CALL                             R16 1 -1
      163 SETLIST                          R15 R16 -1 [1]
      165 CALL                             R12 3 -1
      166 SETLIST                          R11 R12 -1 [1]
      168 CALL                             R8 3 1
      169 GETUPVAL                         R10 2
      170 CALL                             R10 0 1
      171 JUMPIF                           R10 ; [+3]
      172 GETUPVAL                         R10 3
      173 CALL                             R10 0 1
      174 JUMPIFNOT                        R10 ; [+103]
      175 GETUPVAL                         R9 1
      176 GETUPVAL                         R10 0
      177 GETTABLEKS                       R10 R10 K6 ["View"]
      179 DUPTABLE                         R11 K8 [{"tag"}]
      180 LOADK                            R12 K56 ["col auto-y size-full-0 align-y-bottom"]
      181 SETTABLEKS                       R12 R11 K7 ["tag"]
      183 NEWTABLE                         R12 0 2
      185 GETUPVAL                         R13 1
      186 GETUPVAL                         R14 0
      187 GETTABLEKS                       R14 R14 K57 ["Divider"]
      189 NEWTABLE                         R15 0 0
      191 CALL                             R13 2 1
      192 GETUPVAL                         R14 1
      193 GETUPVAL                         R15 0
      194 GETTABLEKS                       R15 R15 K6 ["View"]
      196 DUPTABLE                         R16 K8 [{"tag"}]
      197 LOADK                            R17 K58 ["row size-full-0 auto-y padding-top-medium gap-small align-x-right align-y-bottom"]
      198 SETTABLEKS                       R17 R16 K7 ["tag"]
      200 NEWTABLE                         R17 0 2
      202 GETUPVAL                         R19 2
      203 CALL                             R19 0 1
      204 JUMPIFNOT                        R19 ; [+23]
      205 GETUPVAL                         R18 1
      206 GETUPVAL                         R19 0
      207 GETTABLEKS                       R19 R19 K59 ["Button"]
      209 DUPTABLE                         R20 K62 [{"text", "size", "onActivated"}]
      210 LOADK                            R21 K63 ["Close"]
      211 SETTABLEKS                       R21 R20 K60 ["text"]
      213 GETUPVAL                         R21 0
      214 GETTABLEKS                       R21 R21 K18 ["Enums"]
      216 GETTABLEKS                       R21 R21 K64 ["InputSize"]
      218 GETTABLEKS                       R21 R21 K65 ["XSmall"]
      220 SETTABLEKS                       R21 R20 K14 ["size"]
      222 GETTABLEKS                       R21 R0 K66 ["onClose"]
      224 SETTABLEKS                       R21 R20 K61 ["onActivated"]
      226 CALL                             R18 2 1
      227 JUMP                             ; [+1]
      228 LOADNIL                          R18
      229 GETUPVAL                         R20 3
      230 CALL                             R20 0 1
      231 JUMPIFNOT                        R20 ; [+38]
      232 GETUPVAL                         R19 1
      233 GETUPVAL                         R20 0
      234 GETTABLEKS                       R20 R20 K59 ["Button"]
      236 DUPTABLE                         R21 K68 [{"text", "variant", "size", "isDisabled", "onActivated"}]
      237 LOADK                            R22 K69 ["Configure Reimport Settings"]
      238 SETTABLEKS                       R22 R21 K60 ["text"]
      240 GETUPVAL                         R22 0
      241 GETTABLEKS                       R22 R22 K18 ["Enums"]
      243 GETTABLEKS                       R22 R22 K70 ["ButtonVariant"]
      245 GETTABLEKS                       R22 R22 K71 ["Emphasis"]
      247 SETTABLEKS                       R22 R21 K15 ["variant"]
      249 GETUPVAL                         R22 0
      250 GETTABLEKS                       R22 R22 K18 ["Enums"]
      252 GETTABLEKS                       R22 R22 K64 ["InputSize"]
      254 GETTABLEKS                       R22 R22 K65 ["XSmall"]
      256 SETTABLEKS                       R22 R21 K14 ["size"]
      258 GETTABLEKS                       R23 R0 K72 ["target"]
      260 NOT                              R22 R23
      261 SETTABLEKS                       R22 R21 K67 ["isDisabled"]
      263 NEWCLOSURE                       R22 P1
      264 CAPTURE                          VAL R0
      265 CAPTURE                          UPVAL U5
      266 SETTABLEKS                       R22 R21 K61 ["onActivated"]
      268 CALL                             R19 2 1
      269 JUMP                             ; [+1]
      270 LOADNIL                          R19
      271 SETLIST                          R17 R18 2 [1]
      273 CALL                             R14 3 -1
      274 SETLIST                          R12 R13 -1 [1]
      276 CALL                             R9 3 1
      277 JUMP                             ; [+1]
      278 LOADNIL                          R9
      279 SETLIST                          R6 R7 3 [1]
      281 CALL                             R3 3 -1
      282 SETLIST                          R2 R3 -1 [1]
      284 RETURN                           R2 1

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
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["createElement"]
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R0 K10 ["Lib"]
       27 GETTABLEKS                       R5 R5 K11 ["Util"]
       29 GETTABLEKS                       R5 R5 K12 ["Counter"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R0 K13 ["Src"]
       36 GETTABLEKS                       R6 R6 K14 ["Dialogs"]
       38 GETTABLEKS                       R6 R6 K15 ["Types"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R7 R0 K10 ["Lib"]
       45 GETTABLEKS                       R7 R7 K16 ["DialogRegistry"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K5 [require]
       50 GETTABLEKS                       R8 R0 K17 ["Flags"]
       52 GETTABLEKS                       R8 R8 K18 ["GetFFlagReimportErrorCloseButton"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K5 [require]
       57 GETTABLEKS                       R9 R0 K17 ["Flags"]
       59 GETTABLEKS                       R9 R9 K19 ["GetFFlagReimportErrorConfigButton"]
       61 CALL                             R8 1 1
       62 DUPCLOSURE                       R9 K20 [PROTO_2]
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R6
       69 RETURN                           R9 1
