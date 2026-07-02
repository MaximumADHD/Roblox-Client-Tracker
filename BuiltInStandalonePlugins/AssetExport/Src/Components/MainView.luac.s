PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["cancelExport"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+6]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 2
        5 NAMECALL                         R0 R0 K0 ["exportRequested"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 MOVE                             R4 R2
       10 CALL                             R3 1 1
       11 GETUPVAL                         R4 3
       12 MOVE                             R5 R2
       13 CALL                             R4 1 1
       14 GETUPVAL                         R5 4
       15 MOVE                             R6 R2
       16 CALL                             R5 1 1
       17 LOADK                            R8 K1 ["Buttons"]
       18 LOADK                            R9 K2 ["Export"]
       19 NAMECALL                         R6 R1 K3 ["getText"]
       21 CALL                             R6 3 1
       22 JUMPIF                           R3 ; [+1]
       23 JUMPIF                           R4 ; [+6]
       24 LOADK                            R9 K1 ["Buttons"]
       25 LOADK                            R10 K4 ["Processing"]
       26 NAMECALL                         R7 R1 K3 ["getText"]
       28 CALL                             R7 3 1
       29 MOVE                             R6 R7
       30 NEWTABLE                         R7 0 3
       32 LOADK                            R8 K5 ["skinning"]
       33 LOADK                            R9 K6 ["textures"]
       34 LOADK                            R10 K7 ["cages"]
       35 SETLIST                          R7 R8 3 [1]
       37 GETUPVAL                         R8 5
       38 CALL                             R8 0 1
       39 JUMPIFNOT                        R8 ; [+8]
       40 LOADN                            R10 3
       41 LOADK                            R11 K8 ["attachments"]
       42 FASTCALL3                        TABLE_INSERT R7 R10 R11
       44 MOVE                             R9 R7
       45 GETIMPORT                        R8 K11 [table.insert]
       47 CALL                             R8 3 0
       48 GETUPVAL                         R8 6
       49 GETTABLEKS                       R8 R8 K12 ["createElement"]
       51 GETUPVAL                         R9 7
       52 GETTABLEKS                       R9 R9 K13 ["View"]
       54 DUPTABLE                         R10 K18 [{["tag"] = "col size-full padding-medium bg-surface-300", ["LayoutOrder"] = 1}]
       55 DUPTABLE                         R11 K22 [{"Header", "CenterPanel", "ButtonPanel"}]
       56 GETUPVAL                         R12 6
       57 GETTABLEKS                       R12 R12 K12 ["createElement"]
       59 GETUPVAL                         R13 7
       60 GETTABLEKS                       R13 R13 K13 ["View"]
       62 DUPTABLE                         R14 K24 [{["tag"] = "row align-y-top gap-small size-full-0 auto-y padding-small"}]
       63 DUPTABLE                         R15 K28 [{"iconElement", "textPanel", "show"}]
       64 GETUPVAL                         R16 6
       65 GETTABLEKS                       R16 R16 K12 ["createElement"]
       67 GETUPVAL                         R17 7
       68 GETTABLEKS                       R17 R17 K29 ["Image"]
       70 DUPTABLE                         R18 K32 [{["Image"] = "rbxassetid://71912387248131", ["Size"], ["LayoutOrder"] = 1}]
       71 GETIMPORT                        R19 K35 [UDim2.fromOffset]
       73 LOADN                            R20 36
       74 LOADN                            R21 36
       75 CALL                             R19 2 1
       76 SETTABLEKS                       R19 R18 K31 ["Size"]
       78 CALL                             R16 2 1
       79 SETTABLEKS                       R16 R15 K25 ["iconElement"]
       81 GETUPVAL                         R16 6
       82 GETTABLEKS                       R16 R16 K12 ["createElement"]
       84 GETUPVAL                         R17 7
       85 GETTABLEKS                       R17 R17 K13 ["View"]
       87 DUPTABLE                         R18 K38 [{["tag"] = "col align-y-top grow gap-small size-0-0 auto-y", ["LayoutOrder"] = 2}]
       88 DUPTABLE                         R19 K41 [{"MainText", "SupportText"}]
       89 GETUPVAL                         R20 6
       90 GETTABLEKS                       R20 R20 K12 ["createElement"]
       92 GETUPVAL                         R21 7
       93 GETTABLEKS                       R21 R21 K42 ["Text"]
       95 DUPTABLE                         R22 K44 [{["tag"] = "size-full-0 auto-y text-title-medium text-no-wrap text-align-x-left text-truncate-end", ["Text"], ["LayoutOrder"] = 1}]
       96 LOADK                            R25 K45 ["Title"]
       97 LOADK                            R26 K46 ["Customize"]
       98 NAMECALL                         R23 R1 K3 ["getText"]
      100 CALL                             R23 3 1
      101 SETTABLEKS                       R23 R22 K42 ["Text"]
      103 CALL                             R20 2 1
      104 SETTABLEKS                       R20 R19 K39 ["MainText"]
      106 GETUPVAL                         R20 6
      107 GETTABLEKS                       R20 R20 K12 ["createElement"]
      109 GETUPVAL                         R21 7
      110 GETTABLEKS                       R21 R21 K42 ["Text"]
      112 DUPTABLE                         R22 K48 [{["tag"] = "size-full-0 auto-y text-body-medium text-wrap text-align-x-left", ["Text"], ["LayoutOrder"] = 2}]
      113 LOADK                            R25 K49 ["Info"]
      114 LOADK                            R26 K46 ["Customize"]
      115 NAMECALL                         R23 R1 K3 ["getText"]
      117 CALL                             R23 3 1
      118 SETTABLEKS                       R23 R22 K42 ["Text"]
      120 CALL                             R20 2 1
      121 SETTABLEKS                       R20 R19 K40 ["SupportText"]
      123 CALL                             R16 3 1
      124 SETTABLEKS                       R16 R15 K26 ["textPanel"]
      126 GETUPVAL                         R16 6
      127 GETTABLEKS                       R16 R16 K12 ["createElement"]
      129 GETUPVAL                         R17 7
      130 GETTABLEKS                       R17 R17 K13 ["View"]
      132 DUPTABLE                         R18 K52 [{["tag"] = "row align-y-center size-0-full auto-xy", ["LayoutOrder"] = 3}]
      133 NEWTABLE                         R19 0 0
      135 CALL                             R16 3 1
      136 SETTABLEKS                       R16 R15 K27 ["show"]
      138 CALL                             R12 3 1
      139 SETTABLEKS                       R12 R11 K19 ["Header"]
      141 GETUPVAL                         R12 6
      142 GETTABLEKS                       R12 R12 K12 ["createElement"]
      144 GETUPVAL                         R13 7
      145 GETTABLEKS                       R13 R13 K13 ["View"]
      147 DUPTABLE                         R14 K54 [{["tag"] = "row align-y-top grow gap-small size-full-0 padding-small", ["LayoutOrder"] = 2}]
      148 DUPTABLE                         R15 K57 [{"spacer", "Settings"}]
      149 GETUPVAL                         R16 6
      150 GETTABLEKS                       R16 R16 K12 ["createElement"]
      152 GETUPVAL                         R17 7
      153 GETTABLEKS                       R17 R17 K13 ["View"]
      155 DUPTABLE                         R18 K58 [{["Size"], ["LayoutOrder"] = 1}]
      156 GETIMPORT                        R19 K35 [UDim2.fromOffset]
      158 LOADN                            R20 36
      159 LOADN                            R21 36
      160 CALL                             R19 2 1
      161 SETTABLEKS                       R19 R18 K31 ["Size"]
      163 CALL                             R16 2 1
      164 SETTABLEKS                       R16 R15 K55 ["spacer"]
      166 GETUPVAL                         R16 6
      167 GETTABLEKS                       R16 R16 K12 ["createElement"]
      169 GETUPVAL                         R17 7
      170 GETTABLEKS                       R17 R17 K13 ["View"]
      172 DUPTABLE                         R18 K60 [{["tag"] = "grow size-0-full", ["LayoutOrder"] = 2}]
      173 DUPTABLE                         R19 K62 [{"scroll"}]
      174 GETUPVAL                         R20 6
      175 GETTABLEKS                       R20 R20 K12 ["createElement"]
      177 GETUPVAL                         R21 7
      178 GETTABLEKS                       R21 R21 K63 ["ScrollView"]
      180 DUPTABLE                         R22 K65 [{["tag"] = "size-full", ["scroll"]}]
      181 DUPTABLE                         R23 K70 [{"scrollBarVisibility", "ScrollingDirection", "AutomaticCanvasSize", "CanvasSize"}]
      182 GETUPVAL                         R24 7
      183 GETTABLEKS                       R24 R24 K71 ["Enums"]
      185 GETTABLEKS                       R24 R24 K72 ["ScrollBarVisibility"]
      187 GETTABLEKS                       R24 R24 K73 ["Auto"]
      189 SETTABLEKS                       R24 R23 K66 ["scrollBarVisibility"]
      191 GETIMPORT                        R24 K76 [Enum.ScrollingDirection.Y]
      193 SETTABLEKS                       R24 R23 K67 ["ScrollingDirection"]
      195 GETIMPORT                        R24 K78 [Enum.AutomaticSize.Y]
      197 SETTABLEKS                       R24 R23 K68 ["AutomaticCanvasSize"]
      199 GETIMPORT                        R24 K80 [UDim2.fromScale]
      201 LOADN                            R25 0
      202 LOADN                            R26 0
      203 CALL                             R24 2 1
      204 SETTABLEKS                       R24 R23 K69 ["CanvasSize"]
      206 SETTABLEKS                       R23 R22 K61 ["scroll"]
      208 DUPTABLE                         R23 K82 [{"SettingsContainer"}]
      209 GETUPVAL                         R24 6
      210 GETTABLEKS                       R24 R24 K12 ["createElement"]
      212 GETUPVAL                         R25 8
      213 DUPTABLE                         R26 K87 [{["title"] = "Include", ["settingsEnabled"], ["settings"]}]
      214 JUMPIFEQKS                       R5 K88 ["Main"] ; [+2]
      216 LOADB                            R27 0 +1
      217 LOADB                            R27 1
      218 SETTABLEKS                       R27 R26 K85 ["settingsEnabled"]
      220 SETTABLEKS                       R7 R26 K86 ["settings"]
      222 CALL                             R24 2 1
      223 SETTABLEKS                       R24 R23 K81 ["SettingsContainer"]
      225 CALL                             R20 3 1
      226 SETTABLEKS                       R20 R19 K61 ["scroll"]
      228 CALL                             R16 3 1
      229 SETTABLEKS                       R16 R15 K56 ["Settings"]
      231 CALL                             R12 3 1
      232 SETTABLEKS                       R12 R11 K20 ["CenterPanel"]
      234 GETUPVAL                         R12 6
      235 GETTABLEKS                       R12 R12 K12 ["createElement"]
      237 GETUPVAL                         R13 7
      238 GETTABLEKS                       R13 R13 K13 ["View"]
      240 DUPTABLE                         R14 K91 [{["tag"] = "row align-x-right gap-small size-full-1200 padding-small bg-surface-300", ["LayoutOrder"] = 4}]
      241 DUPTABLE                         R15 K93 [{"Cancel", "Export"}]
      242 GETUPVAL                         R16 6
      243 GETTABLEKS                       R16 R16 K12 ["createElement"]
      245 GETUPVAL                         R17 7
      246 GETTABLEKS                       R17 R17 K94 ["Button"]
      248 DUPTABLE                         R18 K101 [{["text"], ["variant"], ["onActivated"], ["isDisabled"] = False, ["size"], ["LayoutOrder"] = 1}]
      249 LOADK                            R21 K1 ["Buttons"]
      250 LOADK                            R22 K92 ["Cancel"]
      251 NAMECALL                         R19 R1 K3 ["getText"]
      253 CALL                             R19 3 1
      254 SETTABLEKS                       R19 R18 K95 ["text"]
      256 GETUPVAL                         R19 7
      257 GETTABLEKS                       R19 R19 K71 ["Enums"]
      259 GETTABLEKS                       R19 R19 K102 ["ButtonVariant"]
      261 GETTABLEKS                       R19 R19 K103 ["Standard"]
      263 SETTABLEKS                       R19 R18 K96 ["variant"]
      265 NEWCLOSURE                       R19 P0
      266 CAPTURE                          VAL R2
      267 SETTABLEKS                       R19 R18 K97 ["onActivated"]
      269 GETUPVAL                         R19 7
      270 GETTABLEKS                       R19 R19 K71 ["Enums"]
      272 GETTABLEKS                       R19 R19 K104 ["InputSize"]
      274 GETTABLEKS                       R19 R19 K105 ["Small"]
      276 SETTABLEKS                       R19 R18 K100 ["size"]
      278 CALL                             R16 2 1
      279 SETTABLEKS                       R16 R15 K92 ["Cancel"]
      281 GETUPVAL                         R16 6
      282 GETTABLEKS                       R16 R16 K12 ["createElement"]
      284 GETUPVAL                         R17 7
      285 GETTABLEKS                       R17 R17 K94 ["Button"]
      287 DUPTABLE                         R18 K106 [{["text"], ["variant"], ["onActivated"], ["isDisabled"], ["size"], ["LayoutOrder"] = 2}]
      288 SETTABLEKS                       R6 R18 K95 ["text"]
      290 GETUPVAL                         R19 7
      291 GETTABLEKS                       R19 R19 K71 ["Enums"]
      293 GETTABLEKS                       R19 R19 K102 ["ButtonVariant"]
      295 GETTABLEKS                       R19 R19 K107 ["Emphasis"]
      297 SETTABLEKS                       R19 R18 K96 ["variant"]
      299 NEWCLOSURE                       R19 P1
      300 CAPTURE                          VAL R3
      301 CAPTURE                          VAL R4
      302 CAPTURE                          VAL R2
      303 SETTABLEKS                       R19 R18 K97 ["onActivated"]
      305 MOVE                             R19 R3
      306 JUMPIF                           R19 ; [+1]
      307 NOT                              R19 R4
      308 SETTABLEKS                       R19 R18 K98 ["isDisabled"]
      310 GETUPVAL                         R19 7
      311 GETTABLEKS                       R19 R19 K71 ["Enums"]
      313 GETTABLEKS                       R19 R19 K104 ["InputSize"]
      315 GETTABLEKS                       R19 R19 K105 ["Small"]
      317 SETTABLEKS                       R19 R18 K100 ["size"]
      319 CALL                             R16 2 1
      320 SETTABLEKS                       R16 R15 K2 ["Export"]
      322 CALL                             R12 3 1
      323 SETTABLEKS                       R12 R11 K21 ["ButtonPanel"]
      325 CALL                             R8 3 -1
      326 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetExport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Flags"]
       34 GETTABLEKS                       R5 R5 K12 ["getFFlagCreateAttachmentsOnAssetDm"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R2 K13 ["ContextServices"]
       39 GETTABLEKS                       R6 R5 K14 ["Localization"]
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R8 R0 K10 ["Src"]
       45 GETTABLEKS                       R8 R8 K15 ["Components"]
       47 GETTABLEKS                       R8 R8 K16 ["SettingsContainer"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K5 [require]
       52 GETTABLEKS                       R9 R0 K10 ["Src"]
       54 GETTABLEKS                       R9 R9 K17 ["Controllers"]
       56 GETTABLEKS                       R9 R9 K18 ["ExportController"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K5 [require]
       61 GETTABLEKS                       R10 R0 K10 ["Src"]
       63 GETTABLEKS                       R10 R10 K19 ["Hooks"]
       65 GETTABLEKS                       R10 R10 K20 ["usePermissionsReady"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R11 R0 K10 ["Src"]
       72 GETTABLEKS                       R11 R11 K19 ["Hooks"]
       74 GETTABLEKS                       R11 R11 K21 ["useExportProcessing"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K10 ["Src"]
       81 GETTABLEKS                       R12 R12 K19 ["Hooks"]
       83 GETTABLEKS                       R12 R12 K22 ["useViewState"]
       85 CALL                             R11 1 1
       86 DUPCLOSURE                       R12 K23 [PROTO_2]
       87 CAPTURE                          VAL R6
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R10
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R11
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R1
       94 CAPTURE                          VAL R3
       95 CAPTURE                          VAL R7
       96 RETURN                           R12 1
