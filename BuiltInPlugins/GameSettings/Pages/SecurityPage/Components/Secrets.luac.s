PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["insertBlankSecretRow"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["SecretsAsTableRows"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K2 ["OnChanged"]
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOTEQ                      R0 R2 ; [+28]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K0 ["SecretsAsTableRows"]
        7 GETTABLE                         R2 R3 R1
        8 GETTABLEKS                       R2 R2 K1 ["row"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K2 ["EditSecretFormNameChanged"]
       13 GETTABLEN                        R4 R2 1
       14 CALL                             R3 1 0
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K3 ["EditSecretFormValueChanged"]
       18 LOADK                            R4 K4 [""]
       19 CALL                             R3 1 0
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R3 R3 K5 ["EditSecretFormDomainChanged"]
       23 GETTABLEN                        R4 R2 3
       24 CALL                             R3 1 0
       25 GETUPVAL                         R3 1
       26 GETTABLEKS                       R3 R3 K6 ["EditSecretIdChanged"]
       28 MOVE                             R4 R1
       29 CALL                             R3 1 0
       30 RETURN                           R0 0
       31 GETUPVAL                         R2 2
       32 CALL                             R2 0 1
       33 JUMPIFNOTEQ                      R0 R2 ; [+15]
       35 GETUPVAL                         R2 3
       36 GETTABLEKS                       R2 R2 K7 ["deleteSecretRow"]
       38 GETUPVAL                         R3 1
       39 GETTABLEKS                       R3 R3 K0 ["SecretsAsTableRows"]
       41 MOVE                             R4 R1
       42 CALL                             R2 2 1
       43 GETUPVAL                         R3 1
       44 GETTABLEKS                       R3 R3 K8 ["OnChanged"]
       46 MOVE                             R4 R2
       47 CALL                             R3 1 0
       48 RETURN                           R0 0
       49 GETIMPORT                        R2 K10 [error]
       51 LOADK                            R3 K11 ["Invalid Key"]
       52 CALL                             R2 1 0
       53 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 NEWTABLE                         R3 0 3
        6 LOADK                            R6 K2 ["Security"]
        7 LOADK                            R7 K3 ["SecretNameLabel"]
        8 NAMECALL                         R4 R2 K4 ["getText"]
       10 CALL                             R4 3 1
       11 LOADK                            R7 K2 ["Security"]
       12 LOADK                            R8 K5 ["SecretValueLabel"]
       13 NAMECALL                         R5 R2 K4 ["getText"]
       15 CALL                             R5 3 1
       16 LOADK                            R8 K2 ["Security"]
       17 LOADK                            R9 K6 ["SecretDomainLabel"]
       18 NAMECALL                         R6 R2 K4 ["getText"]
       20 CALL                             R6 3 -1
       21 SETLIST                          R3 R4 -1 [1]
       23 GETTABLEKS                       R5 R1 K7 ["Disabled"]
       25 NOT                              R4 R5
       26 JUMPIFNOT                        R4 ; [+7]
       27 GETTABLEKS                       R6 R1 K8 ["SecretsAsTableRows"]
       29 LENGTH                           R5 R6
       30 JUMPIFNOTEQKN                    R5 K9 [0] ; [+2]
       32 LOADB                            R4 0 +1
       33 LOADB                            R4 1
       34 GETUPVAL                         R5 0
       35 GETTABLEKS                       R5 R5 K10 ["new"]
       37 CALL                             R5 0 1
       38 LOADN                            R7 256
       39 GETTABLEKS                       R11 R1 K8 ["SecretsAsTableRows"]
       41 LENGTH                           R10 R11
       42 MULK                             R9 R10 K11 [32]
       43 ADDK                             R8 R9 K11 [32]
       44 FASTCALL2                        MATH_MIN R7 R8 ; [+3]
       46 GETIMPORT                        R6 K14 [math.min]
       48 CALL                             R6 2 1
       49 GETTABLEKS                       R7 R1 K15 ["Stylizer"]
       51 GETUPVAL                         R8 1
       52 GETTABLEKS                       R8 R8 K16 ["Dictionary"]
       54 GETTABLEKS                       R8 R8 K17 ["join"]
       56 GETTABLEKS                       R9 R7 K18 ["fontStyle"]
       58 GETTABLEKS                       R9 R9 K19 ["Title"]
       60 DUPTABLE                         R10 K27 [{["TextColor"], ["Spacing"] = 10, ["TitleWidth"] = 180, ["TextSize"] = 24}]
       61 GETIMPORT                        R11 K30 [Color3.fromRGB]
       63 LOADN                            R12 128
       64 LOADN                            R13 128
       65 LOADN                            R14 128
       66 CALL                             R11 3 1
       67 SETTABLEKS                       R11 R10 K20 ["TextColor"]
       69 CALL                             R8 2 1
       70 GETUPVAL                         R9 2
       71 GETTABLEKS                       R9 R9 K31 ["createElement"]
       73 GETUPVAL                         R10 3
       74 DUPTABLE                         R11 K35 [{"AutomaticSize", "Layout", "LayoutOrder"}]
       75 GETIMPORT                        R12 K38 [Enum.AutomaticSize.XY]
       77 SETTABLEKS                       R12 R11 K32 ["AutomaticSize"]
       79 GETIMPORT                        R12 K41 [Enum.FillDirection.Vertical]
       81 SETTABLEKS                       R12 R11 K33 ["Layout"]
       83 GETTABLEKS                       R12 R1 K34 ["LayoutOrder"]
       85 SETTABLEKS                       R12 R11 K34 ["LayoutOrder"]
       87 DUPTABLE                         R12 K46 [{"SecretsTitle", "SecretsTable", "Spacer", "Separator"}]
       88 GETUPVAL                         R13 2
       89 GETTABLEKS                       R13 R13 K31 ["createElement"]
       91 GETUPVAL                         R14 4
       92 DUPTABLE                         R15 K48 [{"LayoutOrder", "Title", "FillDirection", "Style"}]
       93 NAMECALL                         R16 R5 K49 ["getNextOrder"]
       95 CALL                             R16 1 1
       96 SETTABLEKS                       R16 R15 K34 ["LayoutOrder"]
       98 LOADK                            R18 K50 ["General"]
       99 LOADK                            R19 K51 ["TitleSecrets"]
      100 NAMECALL                         R16 R2 K4 ["getText"]
      102 CALL                             R16 3 1
      103 SETTABLEKS                       R16 R15 K19 ["Title"]
      105 GETIMPORT                        R16 K53 [Enum.FillDirection.Horizontal]
      107 SETTABLEKS                       R16 R15 K39 ["FillDirection"]
      109 GETTABLEKS                       R17 R1 K7 ["Disabled"]
      111 JUMPIFNOT                        R17 ; [+2]
      112 MOVE                             R16 R8
      113 JUMP                             ; [+1]
      114 LOADNIL                          R16
      115 SETTABLEKS                       R16 R15 K47 ["Style"]
      117 DUPTABLE                         R16 K57 [{"PaddingLeft", "CreateButton", "Description"}]
      118 GETUPVAL                         R17 2
      119 GETTABLEKS                       R17 R17 K31 ["createElement"]
      121 LOADK                            R18 K58 ["UIPadding"]
      122 DUPTABLE                         R19 K60 [{"PaddingLeft", "PaddingBottom"}]
      123 GETIMPORT                        R20 K62 [UDim.new]
      125 LOADN                            R21 0
      126 LOADN                            R22 20
      127 CALL                             R20 2 1
      128 SETTABLEKS                       R20 R19 K54 ["PaddingLeft"]
      130 GETIMPORT                        R20 K62 [UDim.new]
      132 LOADN                            R21 0
      133 LOADN                            R22 10
      134 CALL                             R20 2 1
      135 SETTABLEKS                       R20 R19 K59 ["PaddingBottom"]
      137 CALL                             R17 2 1
      138 SETTABLEKS                       R17 R16 K54 ["PaddingLeft"]
      140 GETUPVAL                         R17 2
      141 GETTABLEKS                       R17 R17 K31 ["createElement"]
      143 GETUPVAL                         R18 5
      144 DUPTABLE                         R19 K70 [{["LayoutOrder"] = 1, ["Style"] = "GameSettingsPrimaryButton", ["Text"], ["Size"], ["Position"], ["OnClick"], ["StyleModifier"]}]
      145 LOADK                            R22 K50 ["General"]
      146 LOADK                            R23 K71 ["ButtonCreate"]
      147 NAMECALL                         R20 R2 K4 ["getText"]
      149 CALL                             R20 3 1
      150 SETTABLEKS                       R20 R19 K65 ["Text"]
      152 GETIMPORT                        R20 K73 [UDim2.new]
      154 LOADN                            R21 0
      155 LOADN                            R22 100
      156 LOADN                            R23 0
      157 LOADN                            R24 30
      158 CALL                             R20 4 1
      159 SETTABLEKS                       R20 R19 K66 ["Size"]
      161 GETIMPORT                        R20 K75 [UDim2.fromScale]
      163 LOADN                            R21 1
      164 LOADN                            R22 0
      165 CALL                             R20 2 1
      166 SETTABLEKS                       R20 R19 K67 ["Position"]
      168 NEWCLOSURE                       R20 P0
      169 CAPTURE                          UPVAL U6
      170 CAPTURE                          VAL R1
      171 SETTABLEKS                       R20 R19 K68 ["OnClick"]
      173 GETTABLEKS                       R21 R1 K7 ["Disabled"]
      175 JUMPIFNOT                        R21 ; [+4]
      176 GETUPVAL                         R20 7
      177 GETTABLEKS                       R20 R20 K7 ["Disabled"]
      179 JUMP                             ; [+1]
      180 LOADNIL                          R20
      181 SETTABLEKS                       R20 R19 K69 ["StyleModifier"]
      183 CALL                             R17 2 1
      184 SETTABLEKS                       R17 R16 K55 ["CreateButton"]
      186 GETUPVAL                         R17 2
      187 GETTABLEKS                       R17 R17 K31 ["createElement"]
      189 GETUPVAL                         R18 8
      190 DUPTABLE                         R19 K81 [{["AutomaticSize"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 2, ["Style"], ["Text"], ["TextColor"], ["TextWrapped"] = True, ["TextXAlignment"]}]
      191 GETIMPORT                        R20 K38 [Enum.AutomaticSize.XY]
      193 SETTABLEKS                       R20 R19 K32 ["AutomaticSize"]
      195 GETTABLEKS                       R20 R7 K18 ["fontStyle"]
      197 GETTABLEKS                       R20 R20 K82 ["Small"]
      199 SETTABLEKS                       R20 R19 K47 ["Style"]
      201 GETUPVAL                         R21 9
      202 JUMPIFNOT                        R21 ; [+6]
      203 LOADK                            R22 K2 ["Security"]
      204 LOADK                            R23 K83 ["LocalSecretsDescExp"]
      205 NAMECALL                         R20 R2 K4 ["getText"]
      207 CALL                             R20 3 1
      208 JUMP                             ; [+5]
      209 LOADK                            R22 K2 ["Security"]
      210 LOADK                            R23 K84 ["LocalSecretsDesc"]
      211 NAMECALL                         R20 R2 K4 ["getText"]
      213 CALL                             R20 3 1
      214 SETTABLEKS                       R20 R19 K65 ["Text"]
      216 GETTABLEKS                       R21 R1 K7 ["Disabled"]
      218 JUMPIFNOT                        R21 ; [+7]
      219 GETIMPORT                        R20 K30 [Color3.fromRGB]
      221 LOADN                            R21 128
      222 LOADN                            R22 128
      223 LOADN                            R23 128
      224 CALL                             R20 3 1
      225 JUMP                             ; [+6]
      226 GETTABLEKS                       R20 R7 K18 ["fontStyle"]
      228 GETTABLEKS                       R20 R20 K82 ["Small"]
      230 GETTABLEKS                       R20 R20 K85 ["TextColor3"]
      232 SETTABLEKS                       R20 R19 K20 ["TextColor"]
      234 GETIMPORT                        R20 K87 [Enum.TextXAlignment.Left]
      236 SETTABLEKS                       R20 R19 K80 ["TextXAlignment"]
      238 CALL                             R17 2 1
      239 SETTABLEKS                       R17 R16 K56 ["Description"]
      241 CALL                             R13 3 1
      242 SETTABLEKS                       R13 R12 K42 ["SecretsTitle"]
      244 MOVE                             R13 R4
      245 JUMPIFNOT                        R13 ; [+75]
      246 GETUPVAL                         R13 2
      247 GETTABLEKS                       R13 R13 K31 ["createElement"]
      249 GETUPVAL                         R14 10
      250 DUPTABLE                         R15 K93 [{"LayoutOrder", "Headers", "Data", "MenuItems", "OnItemClicked", "TableHeight"}]
      251 NAMECALL                         R16 R5 K49 ["getNextOrder"]
      253 CALL                             R16 1 1
      254 SETTABLEKS                       R16 R15 K34 ["LayoutOrder"]
      256 SETTABLEKS                       R3 R15 K88 ["Headers"]
      258 GETUPVAL                         R17 11
      259 JUMPIFNOT                        R17 ; [+3]
      260 GETTABLEKS                       R16 R1 K8 ["SecretsAsTableRows"]
      262 JUMP                             ; [+16]
      263 GETUPVAL                         R16 6
      264 GETTABLEKS                       R16 R16 K94 ["maskValueColumn"]
      266 GETTABLEKS                       R17 R1 K8 ["SecretsAsTableRows"]
      268 LOADK                            R20 K2 ["Security"]
      269 LOADK                            R21 K95 ["TextSecretValueHidden"]
      270 NAMECALL                         R18 R2 K4 ["getText"]
      272 CALL                             R18 3 1
      273 LOADK                            R21 K2 ["Security"]
      274 LOADK                            R22 K96 ["TextSecretValueUpdated"]
      275 NAMECALL                         R19 R2 K4 ["getText"]
      277 CALL                             R19 3 -1
      278 CALL                             R16 -1 1
      279 SETTABLEKS                       R16 R15 K89 ["Data"]
      281 NEWTABLE                         R16 0 2
      283 DUPTABLE                         R17 K98 [{"Key", "Text"}]
      284 GETUPVAL                         R18 12
      285 CALL                             R18 0 1
      286 SETTABLEKS                       R18 R17 K97 ["Key"]
      288 LOADK                            R20 K50 ["General"]
      289 LOADK                            R21 K99 ["ButtonEdit"]
      290 NAMECALL                         R18 R2 K4 ["getText"]
      292 CALL                             R18 3 1
      293 SETTABLEKS                       R18 R17 K65 ["Text"]
      295 DUPTABLE                         R18 K98 [{"Key", "Text"}]
      296 GETUPVAL                         R19 13
      297 CALL                             R19 0 1
      298 SETTABLEKS                       R19 R18 K97 ["Key"]
      300 LOADK                            R21 K50 ["General"]
      301 LOADK                            R22 K100 ["ButtonDelete"]
      302 NAMECALL                         R19 R2 K4 ["getText"]
      304 CALL                             R19 3 1
      305 SETTABLEKS                       R19 R18 K65 ["Text"]
      307 SETLIST                          R16 R17 2 [1]
      309 SETTABLEKS                       R16 R15 K90 ["MenuItems"]
      311 NEWCLOSURE                       R16 P1
      312 CAPTURE                          UPVAL U12
      313 CAPTURE                          VAL R1
      314 CAPTURE                          UPVAL U13
      315 CAPTURE                          UPVAL U6
      316 SETTABLEKS                       R16 R15 K91 ["OnItemClicked"]
      318 SETTABLEKS                       R6 R15 K92 ["TableHeight"]
      320 CALL                             R13 2 1
      321 SETTABLEKS                       R13 R12 K43 ["SecretsTable"]
      323 MOVE                             R13 R4
      324 JUMPIFNOT                        R13 ; [+20]
      325 GETUPVAL                         R13 2
      326 GETTABLEKS                       R13 R13 K31 ["createElement"]
      328 LOADK                            R14 K101 ["Frame"]
      329 DUPTABLE                         R15 K102 [{["LayoutOrder"], ["Size"], ["BackgroundTransparency"] = 1}]
      330 NAMECALL                         R16 R5 K49 ["getNextOrder"]
      332 CALL                             R16 1 1
      333 SETTABLEKS                       R16 R15 K34 ["LayoutOrder"]
      335 GETIMPORT                        R16 K73 [UDim2.new]
      337 LOADN                            R17 1
      338 LOADN                            R18 0
      339 LOADN                            R19 0
      340 LOADN                            R20 15
      341 CALL                             R16 4 1
      342 SETTABLEKS                       R16 R15 K66 ["Size"]
      344 CALL                             R13 2 1
      345 SETTABLEKS                       R13 R12 K44 ["Spacer"]
      347 GETUPVAL                         R13 2
      348 GETTABLEKS                       R13 R13 K31 ["createElement"]
      350 GETUPVAL                         R14 14
      351 DUPTABLE                         R15 K103 [{"LayoutOrder"}]
      352 NAMECALL                         R16 R5 K49 ["getNextOrder"]
      354 CALL                             R16 1 1
      355 SETTABLEKS                       R16 R15 K34 ["LayoutOrder"]
      357 CALL                             R13 2 1
      358 SETTABLEKS                       R13 R12 K45 ["Separator"]
      360 CALL                             R9 3 -1
      361 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R3 K7 ["Cryo"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K8 ["Src"]
       29 GETTABLEKS                       R4 R4 K9 ["Util"]
       31 GETTABLEKS                       R4 R4 K10 ["KeyProvider"]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R4 R3 K11 ["getEditKeyName"]
       36 GETTABLEKS                       R5 R3 K12 ["getDeleteKeyName"]
       38 GETIMPORT                        R6 K4 [require]
       40 GETTABLEKS                       R7 R0 K5 ["Packages"]
       42 GETTABLEKS                       R7 R7 K13 ["Framework"]
       44 CALL                             R6 1 1
       45 GETTABLEKS                       R7 R6 K14 ["UI"]
       47 GETTABLEKS                       R8 R7 K15 ["Button"]
       49 GETTABLEKS                       R9 R7 K16 ["Pane"]
       51 GETTABLEKS                       R10 R7 K17 ["Separator"]
       53 GETTABLEKS                       R11 R7 K18 ["TextLabel"]
       55 GETTABLEKS                       R12 R7 K19 ["TitledFrame"]
       57 GETTABLEKS                       R13 R6 K9 ["Util"]
       59 GETTABLEKS                       R13 R13 K20 ["LayoutOrderIterator"]
       61 GETTABLEKS                       R14 R6 K9 ["Util"]
       63 GETTABLEKS                       R14 R14 K21 ["StyleModifier"]
       65 GETIMPORT                        R15 K4 [require]
       67 GETTABLEKS                       R16 R0 K8 ["Src"]
       69 GETTABLEKS                       R16 R16 K22 ["Components"]
       71 GETTABLEKS                       R16 R16 K23 ["TableWithMenu"]
       73 CALL                             R15 1 1
       74 GETTABLEKS                       R16 R6 K24 ["ContextServices"]
       76 GETTABLEKS                       R17 R16 K25 ["withContext"]
       78 GETTABLEKS                       R18 R1 K26 ["PureComponent"]
       80 LOADK                            R20 K27 ["Secrets"]
       81 NAMECALL                         R18 R18 K28 ["extend"]
       83 CALL                             R18 2 1
       84 GETIMPORT                        R19 K4 [require]
       86 GETTABLEKS                       R20 R0 K8 ["Src"]
       88 GETTABLEKS                       R20 R20 K9 ["Util"]
       90 GETTABLEKS                       R20 R20 K29 ["SecretUtils"]
       92 CALL                             R19 1 1
       93 GETIMPORT                        R20 K4 [require]
       95 GETTABLEKS                       R21 R0 K8 ["Src"]
       97 GETTABLEKS                       R21 R21 K30 ["Flags"]
       99 GETTABLEKS                       R21 R21 K31 ["getFFlagShowSecretValues"]
      101 CALL                             R20 1 1
      102 CALL                             R20 0 1
      103 GETIMPORT                        R21 K4 [require]
      105 GETTABLEKS                       R22 R0 K8 ["Src"]
      107 GETTABLEKS                       R22 R22 K30 ["Flags"]
      109 GETTABLEKS                       R22 R22 K32 ["getFFlagGameSettingsGameToExperience"]
      111 CALL                             R21 1 1
      112 CALL                             R21 0 1
      113 DUPCLOSURE                       R22 K33 [PROTO_2]
      114 CAPTURE                          VAL R13
      115 CAPTURE                          VAL R2
      116 CAPTURE                          VAL R1
      117 CAPTURE                          VAL R9
      118 CAPTURE                          VAL R12
      119 CAPTURE                          VAL R8
      120 CAPTURE                          VAL R19
      121 CAPTURE                          VAL R14
      122 CAPTURE                          VAL R11
      123 CAPTURE                          VAL R21
      124 CAPTURE                          VAL R15
      125 CAPTURE                          VAL R20
      126 CAPTURE                          VAL R4
      127 CAPTURE                          VAL R5
      128 CAPTURE                          VAL R10
      129 SETTABLEKS                       R22 R18 K34 ["render"]
      131 MOVE                             R22 R17
      132 DUPTABLE                         R23 K37 [{"Localization", "Stylizer"}]
      133 GETTABLEKS                       R24 R16 K35 ["Localization"]
      135 SETTABLEKS                       R24 R23 K35 ["Localization"]
      137 GETTABLEKS                       R24 R16 K36 ["Stylizer"]
      139 SETTABLEKS                       R24 R23 K36 ["Stylizer"]
      141 CALL                             R22 1 1
      142 MOVE                             R23 R18
      143 CALL                             R22 1 1
      144 MOVE                             R18 R22
      145 RETURN                           R18 1
