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
       36 DUPTABLE                         R11 K11 [{["layoutOrder"], ["tag"] = "col size-full-0 auto-y padding-y-small"}]
       37 MOVE                             R12 R0
       38 CALL                             R12 0 1
       39 SETTABLEKS                       R12 R11 K3 ["layoutOrder"]
       41 NEWTABLE                         R12 0 2
       43 GETTABLEKS                       R14 R6 K12 ["label"]
       45 JUMPIFNOTEQKNIL                  R14 ; [+3]
       47 LOADNIL                          R13
       48 JUMP                             ; [+10]
       49 GETUPVAL                         R13 2
       50 GETUPVAL                         R14 3
       51 GETTABLEKS                       R14 R14 K13 ["Text"]
       53 DUPTABLE                         R15 K17 [{["tag"] = "size-full-0 auto-y text-title-small text-align-x-left", ["Text"], ["TextWrapped"] = True}]
       54 GETTABLEKS                       R16 R6 K12 ["label"]
       56 SETTABLEKS                       R16 R15 K13 ["Text"]
       58 CALL                             R13 2 1
       59 GETUPVAL                         R14 2
       60 GETUPVAL                         R15 3
       61 GETTABLEKS                       R15 R15 K13 ["Text"]
       63 DUPTABLE                         R16 K19 [{["tag"] = "size-full-0 auto-y text-body-small text-align-x-left", ["Text"], ["TextWrapped"] = True}]
       64 GETTABLEKS                       R17 R6 K20 ["message"]
       66 SETTABLEKS                       R17 R16 K13 ["Text"]
       68 CALL                             R14 2 -1
       69 SETLIST                          R12 R13 -1 [1]
       71 CALL                             R9 3 -1
       72 FASTCALL                         TABLE_INSERT ; [+2]
       73 GETIMPORT                        R7 K7 [table.insert]
       75 CALL                             R7 -1 0
       76 FORGLOOP                         R2 2 ; [-64]
       78 RETURN                           R1 1

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
        2 JUMPIF                           R1 ; [+3]
        3 DUPTABLE                         R1 K3 [{["message"] = "unexpected internal error"}]
        4 SETTABLEKS                       R1 R0 K0 ["errors"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K4 ["Hooks"]
        9 GETTABLEKS                       R1 R1 K5 ["useTokens"]
       11 CALL                             R1 0 1
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K6 ["use"]
       15 CALL                             R2 0 1
       16 GETUPVAL                         R3 2
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K7 ["View"]
       20 DUPTABLE                         R5 K10 [{["tag"] = "col gap-medium size-full padding-medium"}]
       21 NEWTABLE                         R6 0 3
       23 GETUPVAL                         R7 2
       24 GETUPVAL                         R8 0
       25 GETTABLEKS                       R8 R8 K7 ["View"]
       27 DUPTABLE                         R9 K12 [{["tag"] = "row gap-small size-full-0 auto-y"}]
       28 NEWTABLE                         R10 0 2
       30 GETUPVAL                         R11 2
       31 GETUPVAL                         R12 0
       32 GETTABLEKS                       R12 R12 K13 ["Icon"]
       34 DUPTABLE                         R13 K18 [{"name", "size", "variant", "style"}]
       35 GETUPVAL                         R14 0
       36 GETTABLEKS                       R14 R14 K19 ["Enums"]
       38 GETTABLEKS                       R14 R14 K20 ["IconName"]
       40 GETTABLEKS                       R14 R14 K21 ["CircleX"]
       42 SETTABLEKS                       R14 R13 K14 ["name"]
       44 GETUPVAL                         R14 0
       45 GETTABLEKS                       R14 R14 K19 ["Enums"]
       47 GETTABLEKS                       R14 R14 K22 ["IconSize"]
       49 GETTABLEKS                       R14 R14 K23 ["Medium"]
       51 SETTABLEKS                       R14 R13 K15 ["size"]
       53 GETUPVAL                         R14 0
       54 GETTABLEKS                       R14 R14 K19 ["Enums"]
       56 GETTABLEKS                       R14 R14 K24 ["IconVariant"]
       58 GETTABLEKS                       R14 R14 K25 ["Filled"]
       60 SETTABLEKS                       R14 R13 K16 ["variant"]
       62 GETTABLEKS                       R14 R1 K26 ["Color"]
       64 GETTABLEKS                       R14 R14 K27 ["Extended"]
       66 GETTABLEKS                       R14 R14 K28 ["Red"]
       68 GETTABLEKS                       R14 R14 K29 ["Red_700"]
       70 SETTABLEKS                       R14 R13 K17 ["style"]
       72 CALL                             R11 2 1
       73 GETUPVAL                         R12 2
       74 GETUPVAL                         R13 0
       75 GETTABLEKS                       R13 R13 K30 ["Text"]
       77 DUPTABLE                         R14 K32 [{["Text"], ["tag"] = "flex-y-fill auto-y text-title-large text-align-x-left text-align-y-center"}]
       78 LOADK                            R17 K33 ["ErrorDialog"]
       79 LOADK                            R18 K34 ["Body"]
       80 NAMECALL                         R15 R2 K35 ["getText"]
       82 CALL                             R15 3 1
       83 SETTABLEKS                       R15 R14 K30 ["Text"]
       85 CALL                             R12 2 -1
       86 SETLIST                          R10 R11 -1 [1]
       88 CALL                             R7 3 1
       89 GETUPVAL                         R8 2
       90 GETUPVAL                         R9 0
       91 GETTABLEKS                       R9 R9 K7 ["View"]
       93 DUPTABLE                         R10 K37 [{["tag"] = "col grow size-full-0 padding-left-medium"}]
       94 NEWTABLE                         R11 0 1
       96 GETUPVAL                         R12 2
       97 GETUPVAL                         R13 0
       98 GETTABLEKS                       R13 R13 K38 ["ScrollView"]
      100 DUPTABLE                         R14 K42 [{["layout"], ["scroll"], ["tag"] = "col size-full"}]
      101 DUPTABLE                         R15 K44 [{"FillDirection"}]
      102 GETIMPORT                        R16 K47 [Enum.FillDirection.Vertical]
      104 SETTABLEKS                       R16 R15 K43 ["FillDirection"]
      106 SETTABLEKS                       R15 R14 K39 ["layout"]
      108 DUPTABLE                         R15 K51 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      109 GETIMPORT                        R16 K54 [Enum.AutomaticSize.Y]
      111 SETTABLEKS                       R16 R15 K48 ["AutomaticCanvasSize"]
      113 GETIMPORT                        R16 K57 [UDim2.fromOffset]
      115 LOADN                            R17 0
      116 LOADN                            R18 0
      117 CALL                             R16 2 1
      118 SETTABLEKS                       R16 R15 K49 ["CanvasSize"]
      120 GETIMPORT                        R16 K58 [Enum.ScrollingDirection.Y]
      122 SETTABLEKS                       R16 R15 K50 ["ScrollingDirection"]
      124 SETTABLEKS                       R15 R14 K40 ["scroll"]
      126 NEWTABLE                         R15 0 1
      128 GETUPVAL                         R16 2
      129 NEWCLOSURE                       R17 P0
      130 CAPTURE                          UPVAL U3
      131 CAPTURE                          VAL R0
      132 CAPTURE                          UPVAL U2
      133 CAPTURE                          UPVAL U0
      134 CALL                             R16 1 -1
      135 SETLIST                          R15 R16 -1 [1]
      137 CALL                             R12 3 -1
      138 SETLIST                          R11 R12 -1 [1]
      140 CALL                             R8 3 1
      141 GETUPVAL                         R9 2
      142 GETUPVAL                         R10 0
      143 GETTABLEKS                       R10 R10 K7 ["View"]
      145 DUPTABLE                         R11 K60 [{["tag"] = "col align-y-bottom size-full-0 auto-y"}]
      146 NEWTABLE                         R12 0 2
      148 GETUPVAL                         R13 2
      149 GETUPVAL                         R14 0
      150 GETTABLEKS                       R14 R14 K61 ["Divider"]
      152 NEWTABLE                         R15 0 0
      154 CALL                             R13 2 1
      155 GETUPVAL                         R14 2
      156 GETUPVAL                         R15 0
      157 GETTABLEKS                       R15 R15 K7 ["View"]
      159 DUPTABLE                         R16 K63 [{["tag"] = "row align-x-right align-y-bottom gap-small size-full-0 auto-y padding-top-medium"}]
      160 NEWTABLE                         R17 0 2
      162 GETUPVAL                         R18 2
      163 GETUPVAL                         R19 0
      164 GETTABLEKS                       R19 R19 K64 ["Button"]
      166 DUPTABLE                         R20 K67 [{"text", "size", "onActivated"}]
      167 LOADK                            R23 K33 ["ErrorDialog"]
      168 LOADK                            R24 K68 ["Close"]
      169 NAMECALL                         R21 R2 K35 ["getText"]
      171 CALL                             R21 3 1
      172 SETTABLEKS                       R21 R20 K65 ["text"]
      174 GETUPVAL                         R21 0
      175 GETTABLEKS                       R21 R21 K19 ["Enums"]
      177 GETTABLEKS                       R21 R21 K69 ["InputSize"]
      179 GETTABLEKS                       R21 R21 K70 ["XSmall"]
      181 SETTABLEKS                       R21 R20 K15 ["size"]
      183 GETTABLEKS                       R21 R0 K71 ["onClose"]
      185 SETTABLEKS                       R21 R20 K66 ["onActivated"]
      187 CALL                             R18 2 1
      188 GETUPVAL                         R19 2
      189 GETUPVAL                         R20 0
      190 GETTABLEKS                       R20 R20 K64 ["Button"]
      192 DUPTABLE                         R21 K73 [{"text", "variant", "size", "isDisabled", "onActivated"}]
      193 LOADK                            R24 K33 ["ErrorDialog"]
      194 LOADK                            R25 K74 ["Configure"]
      195 NAMECALL                         R22 R2 K35 ["getText"]
      197 CALL                             R22 3 1
      198 SETTABLEKS                       R22 R21 K65 ["text"]
      200 GETUPVAL                         R22 0
      201 GETTABLEKS                       R22 R22 K19 ["Enums"]
      203 GETTABLEKS                       R22 R22 K75 ["ButtonVariant"]
      205 GETTABLEKS                       R22 R22 K76 ["Emphasis"]
      207 SETTABLEKS                       R22 R21 K16 ["variant"]
      209 GETUPVAL                         R22 0
      210 GETTABLEKS                       R22 R22 K19 ["Enums"]
      212 GETTABLEKS                       R22 R22 K69 ["InputSize"]
      214 GETTABLEKS                       R22 R22 K70 ["XSmall"]
      216 SETTABLEKS                       R22 R21 K15 ["size"]
      218 GETTABLEKS                       R23 R0 K77 ["target"]
      220 NOT                              R22 R23
      221 SETTABLEKS                       R22 R21 K72 ["isDisabled"]
      223 NEWCLOSURE                       R22 P1
      224 CAPTURE                          VAL R0
      225 CAPTURE                          UPVAL U4
      226 SETTABLEKS                       R22 R21 K66 ["onActivated"]
      228 CALL                             R19 2 -1
      229 SETLIST                          R17 R18 -1 [1]
      231 CALL                             R14 3 -1
      232 SETLIST                          R12 R13 -1 [1]
      234 CALL                             R9 3 -1
      235 SETLIST                          R6 R7 -1 [1]
      237 CALL                             R3 3 -1
      238 RETURN                           R3 -1

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
       59 DUPCLOSURE                       R10 K20 [PROTO_2]
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R9
       65 RETURN                           R10 1
