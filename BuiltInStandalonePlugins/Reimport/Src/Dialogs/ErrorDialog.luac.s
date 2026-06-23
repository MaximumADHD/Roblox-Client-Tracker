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
       19 GETUPVAL                         R3 2
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K7 ["View"]
       23 DUPTABLE                         R5 K9 [{"tag"}]
       24 LOADK                            R6 K10 ["col size-full padding-medium gap-medium"]
       25 SETTABLEKS                       R6 R5 K8 ["tag"]
       27 NEWTABLE                         R6 0 3
       29 GETUPVAL                         R7 2
       30 GETUPVAL                         R8 0
       31 GETTABLEKS                       R8 R8 K7 ["View"]
       33 DUPTABLE                         R9 K9 [{"tag"}]
       34 LOADK                            R10 K11 ["row size-full-0 auto-y gap-small"]
       35 SETTABLEKS                       R10 R9 K8 ["tag"]
       37 NEWTABLE                         R10 0 2
       39 GETUPVAL                         R11 2
       40 GETUPVAL                         R12 0
       41 GETTABLEKS                       R12 R12 K12 ["Icon"]
       43 DUPTABLE                         R13 K17 [{"name", "size", "variant", "style"}]
       44 GETUPVAL                         R14 0
       45 GETTABLEKS                       R14 R14 K18 ["Enums"]
       47 GETTABLEKS                       R14 R14 K19 ["IconName"]
       49 GETTABLEKS                       R14 R14 K20 ["CircleX"]
       51 SETTABLEKS                       R14 R13 K13 ["name"]
       53 GETUPVAL                         R14 0
       54 GETTABLEKS                       R14 R14 K18 ["Enums"]
       56 GETTABLEKS                       R14 R14 K21 ["IconSize"]
       58 GETTABLEKS                       R14 R14 K22 ["Medium"]
       60 SETTABLEKS                       R14 R13 K14 ["size"]
       62 GETUPVAL                         R14 0
       63 GETTABLEKS                       R14 R14 K18 ["Enums"]
       65 GETTABLEKS                       R14 R14 K23 ["IconVariant"]
       67 GETTABLEKS                       R14 R14 K24 ["Filled"]
       69 SETTABLEKS                       R14 R13 K15 ["variant"]
       71 GETTABLEKS                       R14 R1 K25 ["Color"]
       73 GETTABLEKS                       R14 R14 K26 ["Extended"]
       75 GETTABLEKS                       R14 R14 K27 ["Red"]
       77 GETTABLEKS                       R14 R14 K28 ["Red_700"]
       79 SETTABLEKS                       R14 R13 K16 ["style"]
       81 CALL                             R11 2 1
       82 GETUPVAL                         R12 2
       83 GETUPVAL                         R13 0
       84 GETTABLEKS                       R13 R13 K29 ["Text"]
       86 DUPTABLE                         R14 K30 [{"Text", "tag"}]
       87 GETUPVAL                         R16 3
       88 CALL                             R16 0 1
       89 JUMPIFNOT                        R16 ; [+6]
       90 LOADK                            R17 K31 ["ErrorDialog"]
       91 LOADK                            R18 K32 ["Body"]
       92 NAMECALL                         R15 R2 K33 ["getText"]
       94 CALL                             R15 3 1
       95 JUMP                             ; [+1]
       96 LOADK                            R15 K34 ["Errors occured during reimport"]
       97 SETTABLEKS                       R15 R14 K29 ["Text"]
       99 LOADK                            R15 K35 [" flex-y-fill auto-y text-align-x-left text-align-y-center text-title-large"]
      100 SETTABLEKS                       R15 R14 K8 ["tag"]
      102 CALL                             R12 2 -1
      103 SETLIST                          R10 R11 -1 [1]
      105 CALL                             R7 3 1
      106 GETUPVAL                         R8 2
      107 GETUPVAL                         R9 0
      108 GETTABLEKS                       R9 R9 K7 ["View"]
      110 DUPTABLE                         R10 K9 [{"tag"}]
      111 LOADK                            R11 K36 ["col size-full-0 grow padding-left-medium"]
      112 SETTABLEKS                       R11 R10 K8 ["tag"]
      114 NEWTABLE                         R11 0 1
      116 GETUPVAL                         R12 2
      117 GETUPVAL                         R13 0
      118 GETTABLEKS                       R13 R13 K37 ["ScrollView"]
      120 DUPTABLE                         R14 K40 [{"layout", "scroll", "tag"}]
      121 DUPTABLE                         R15 K42 [{"FillDirection"}]
      122 GETIMPORT                        R16 K45 [Enum.FillDirection.Vertical]
      124 SETTABLEKS                       R16 R15 K41 ["FillDirection"]
      126 SETTABLEKS                       R15 R14 K38 ["layout"]
      128 DUPTABLE                         R15 K49 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      129 GETIMPORT                        R16 K52 [Enum.AutomaticSize.Y]
      131 SETTABLEKS                       R16 R15 K46 ["AutomaticCanvasSize"]
      133 GETIMPORT                        R16 K55 [UDim2.fromOffset]
      135 LOADN                            R17 0
      136 LOADN                            R18 0
      137 CALL                             R16 2 1
      138 SETTABLEKS                       R16 R15 K47 ["CanvasSize"]
      140 GETIMPORT                        R16 K56 [Enum.ScrollingDirection.Y]
      142 SETTABLEKS                       R16 R15 K48 ["ScrollingDirection"]
      144 SETTABLEKS                       R15 R14 K39 ["scroll"]
      146 LOADK                            R15 K57 ["col size-full"]
      147 SETTABLEKS                       R15 R14 K8 ["tag"]
      149 NEWTABLE                         R15 0 1
      151 GETUPVAL                         R16 2
      152 NEWCLOSURE                       R17 P0
      153 CAPTURE                          UPVAL U4
      154 CAPTURE                          VAL R0
      155 CAPTURE                          UPVAL U2
      156 CAPTURE                          UPVAL U0
      157 CALL                             R16 1 -1
      158 SETLIST                          R15 R16 -1 [1]
      160 CALL                             R12 3 -1
      161 SETLIST                          R11 R12 -1 [1]
      163 CALL                             R8 3 1
      164 GETUPVAL                         R9 2
      165 GETUPVAL                         R10 0
      166 GETTABLEKS                       R10 R10 K7 ["View"]
      168 DUPTABLE                         R11 K9 [{"tag"}]
      169 LOADK                            R12 K58 ["col auto-y size-full-0 align-y-bottom"]
      170 SETTABLEKS                       R12 R11 K8 ["tag"]
      172 NEWTABLE                         R12 0 2
      174 GETUPVAL                         R13 2
      175 GETUPVAL                         R14 0
      176 GETTABLEKS                       R14 R14 K59 ["Divider"]
      178 NEWTABLE                         R15 0 0
      180 CALL                             R13 2 1
      181 GETUPVAL                         R14 2
      182 GETUPVAL                         R15 0
      183 GETTABLEKS                       R15 R15 K7 ["View"]
      185 DUPTABLE                         R16 K9 [{"tag"}]
      186 LOADK                            R17 K60 ["row size-full-0 auto-y padding-top-medium gap-small align-x-right align-y-bottom"]
      187 SETTABLEKS                       R17 R16 K8 ["tag"]
      189 NEWTABLE                         R17 0 2
      191 GETUPVAL                         R18 2
      192 GETUPVAL                         R19 0
      193 GETTABLEKS                       R19 R19 K61 ["Button"]
      195 DUPTABLE                         R20 K64 [{"text", "size", "onActivated"}]
      196 GETUPVAL                         R22 3
      197 CALL                             R22 0 1
      198 JUMPIFNOT                        R22 ; [+6]
      199 LOADK                            R23 K31 ["ErrorDialog"]
      200 LOADK                            R24 K65 ["Close"]
      201 NAMECALL                         R21 R2 K33 ["getText"]
      203 CALL                             R21 3 1
      204 JUMP                             ; [+1]
      205 LOADK                            R21 K65 ["Close"]
      206 SETTABLEKS                       R21 R20 K62 ["text"]
      208 GETUPVAL                         R21 0
      209 GETTABLEKS                       R21 R21 K18 ["Enums"]
      211 GETTABLEKS                       R21 R21 K66 ["InputSize"]
      213 GETTABLEKS                       R21 R21 K67 ["XSmall"]
      215 SETTABLEKS                       R21 R20 K14 ["size"]
      217 GETTABLEKS                       R21 R0 K68 ["onClose"]
      219 SETTABLEKS                       R21 R20 K63 ["onActivated"]
      221 CALL                             R18 2 1
      222 GETUPVAL                         R19 2
      223 GETUPVAL                         R20 0
      224 GETTABLEKS                       R20 R20 K61 ["Button"]
      226 DUPTABLE                         R21 K70 [{"text", "variant", "size", "isDisabled", "onActivated"}]
      227 GETUPVAL                         R23 3
      228 CALL                             R23 0 1
      229 JUMPIFNOT                        R23 ; [+6]
      230 LOADK                            R24 K31 ["ErrorDialog"]
      231 LOADK                            R25 K71 ["Configure"]
      232 NAMECALL                         R22 R2 K33 ["getText"]
      234 CALL                             R22 3 1
      235 JUMP                             ; [+1]
      236 LOADK                            R22 K72 ["Configure Reimport Settings"]
      237 SETTABLEKS                       R22 R21 K62 ["text"]
      239 GETUPVAL                         R22 0
      240 GETTABLEKS                       R22 R22 K18 ["Enums"]
      242 GETTABLEKS                       R22 R22 K73 ["ButtonVariant"]
      244 GETTABLEKS                       R22 R22 K74 ["Emphasis"]
      246 SETTABLEKS                       R22 R21 K15 ["variant"]
      248 GETUPVAL                         R22 0
      249 GETTABLEKS                       R22 R22 K18 ["Enums"]
      251 GETTABLEKS                       R22 R22 K66 ["InputSize"]
      253 GETTABLEKS                       R22 R22 K67 ["XSmall"]
      255 SETTABLEKS                       R22 R21 K14 ["size"]
      257 GETTABLEKS                       R23 R0 K75 ["target"]
      259 NOT                              R22 R23
      260 SETTABLEKS                       R22 R21 K69 ["isDisabled"]
      262 NEWCLOSURE                       R22 P1
      263 CAPTURE                          VAL R0
      264 CAPTURE                          UPVAL U5
      265 SETTABLEKS                       R22 R21 K63 ["onActivated"]
      267 CALL                             R19 2 -1
      268 SETLIST                          R17 R18 -1 [1]
      270 CALL                             R14 3 -1
      271 SETLIST                          R12 R13 -1 [1]
      273 CALL                             R9 3 -1
      274 SETLIST                          R6 R7 -1 [1]
      276 CALL                             R3 3 -1
      277 RETURN                           R3 -1

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
