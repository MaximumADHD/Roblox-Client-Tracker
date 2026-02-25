PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["insertBlankSecretRow"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["SecretsAsTableRows"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K2 ["OnChanged"]
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOTEQ                      R0 R2 ; [+28]
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R4 R5 K0 ["SecretsAsTableRows"]
        7 GETTABLE                         R3 R4 R1
        8 GETTABLEKS                       R2 R3 K1 ["row"]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R3 R4 K2 ["EditSecretFormNameChanged"]
       13 GETTABLEN                        R4 R2 1
       14 CALL                             R3 1 0
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R3 R4 K3 ["EditSecretFormValueChanged"]
       18 LOADK                            R4 K4 [""]
       19 CALL                             R3 1 0
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R3 R4 K5 ["EditSecretFormDomainChanged"]
       23 GETTABLEN                        R4 R2 3
       24 CALL                             R3 1 0
       25 GETUPVAL                         R4 1
       26 GETTABLEKS                       R3 R4 K6 ["EditSecretIdChanged"]
       28 MOVE                             R4 R1
       29 CALL                             R3 1 0
       30 RETURN                           R0 0
       31 GETUPVAL                         R2 2
       32 CALL                             R2 0 1
       33 JUMPIFNOTEQ                      R0 R2 ; [+15]
       35 GETUPVAL                         R3 3
       36 GETTABLEKS                       R2 R3 K7 ["deleteSecretRow"]
       38 GETUPVAL                         R4 1
       39 GETTABLEKS                       R3 R4 K0 ["SecretsAsTableRows"]
       41 MOVE                             R4 R1
       42 CALL                             R2 2 1
       43 GETUPVAL                         R4 1
       44 GETTABLEKS                       R3 R4 K8 ["OnChanged"]
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
        4 GETUPVAL                         R3 0
        5 JUMPIFNOT                        R3 ; [+385]
        6 NEWTABLE                         R3 0 3
        8 LOADK                            R6 K2 ["Security"]
        9 LOADK                            R7 K3 ["SecretNameLabel"]
       10 NAMECALL                         R4 R2 K4 ["getText"]
       12 CALL                             R4 3 1
       13 LOADK                            R7 K2 ["Security"]
       14 LOADK                            R8 K5 ["SecretValueLabel"]
       15 NAMECALL                         R5 R2 K4 ["getText"]
       17 CALL                             R5 3 1
       18 LOADK                            R8 K2 ["Security"]
       19 LOADK                            R9 K6 ["SecretDomainLabel"]
       20 NAMECALL                         R6 R2 K4 ["getText"]
       22 CALL                             R6 3 -1
       23 SETLIST                          R3 R4 -1 [1]
       25 GETTABLEKS                       R5 R1 K7 ["Disabled"]
       27 NOT                              R4 R5
       28 JUMPIFNOT                        R4 ; [+7]
       29 GETTABLEKS                       R6 R1 K8 ["SecretsAsTableRows"]
       31 LENGTH                           R5 R6
       32 JUMPIFNOTEQKN                    R5 K9 [0] ; [+2]
       34 LOADB                            R4 0 +1
       35 LOADB                            R4 1
       36 GETUPVAL                         R6 1
       37 GETTABLEKS                       R5 R6 K10 ["new"]
       39 CALL                             R5 0 1
       40 LOADN                            R7 0
       41 GETTABLEKS                       R11 R1 K8 ["SecretsAsTableRows"]
       43 LENGTH                           R10 R11
       44 MULK                             R9 R10 K11 [32]
       45 ADDK                             R8 R9 K11 [32]
       46 FASTCALL2                        MATH_MIN R7 R8 ; [+3]
       48 GETIMPORT                        R6 K14 [math.min]
       50 CALL                             R6 2 1
       51 GETTABLEKS                       R7 R1 K15 ["Stylizer"]
       53 GETUPVAL                         R10 2
       54 GETTABLEKS                       R9 R10 K16 ["Dictionary"]
       56 GETTABLEKS                       R8 R9 K17 ["join"]
       58 GETTABLEKS                       R10 R7 K18 ["fontStyle"]
       60 GETTABLEKS                       R9 R10 K19 ["Title"]
       62 DUPTABLE                         R10 K24 [{"TextColor", "Spacing", "TitleWidth", "TextSize"}]
       63 GETIMPORT                        R11 K27 [Color3.fromRGB]
       65 LOADN                            R12 128
       66 LOADN                            R13 128
       67 LOADN                            R14 128
       68 CALL                             R11 3 1
       69 SETTABLEKS                       R11 R10 K20 ["TextColor"]
       71 LOADN                            R11 10
       72 SETTABLEKS                       R11 R10 K21 ["Spacing"]
       74 LOADN                            R11 180
       75 SETTABLEKS                       R11 R10 K22 ["TitleWidth"]
       77 LOADN                            R11 24
       78 SETTABLEKS                       R11 R10 K23 ["TextSize"]
       80 CALL                             R8 2 1
       81 GETUPVAL                         R10 3
       82 GETTABLEKS                       R9 R10 K28 ["createElement"]
       84 GETUPVAL                         R10 4
       85 DUPTABLE                         R11 K32 [{"AutomaticSize", "Layout", "LayoutOrder"}]
       86 GETIMPORT                        R12 K35 [Enum.AutomaticSize.XY]
       88 SETTABLEKS                       R12 R11 K29 ["AutomaticSize"]
       90 GETIMPORT                        R12 K38 [Enum.FillDirection.Vertical]
       92 SETTABLEKS                       R12 R11 K30 ["Layout"]
       94 GETTABLEKS                       R12 R1 K31 ["LayoutOrder"]
       96 SETTABLEKS                       R12 R11 K31 ["LayoutOrder"]
       98 DUPTABLE                         R12 K43 [{"SecretsTitle", "SecretsTable", "Spacer", "Separator"}]
       99 GETUPVAL                         R14 3
      100 GETTABLEKS                       R13 R14 K28 ["createElement"]
      102 GETUPVAL                         R14 5
      103 DUPTABLE                         R15 K45 [{"LayoutOrder", "Title", "FillDirection", "Style"}]
      104 NAMECALL                         R16 R5 K46 ["getNextOrder"]
      106 CALL                             R16 1 1
      107 SETTABLEKS                       R16 R15 K31 ["LayoutOrder"]
      109 LOADK                            R18 K47 ["General"]
      110 LOADK                            R19 K48 ["TitleSecrets"]
      111 NAMECALL                         R16 R2 K4 ["getText"]
      113 CALL                             R16 3 1
      114 SETTABLEKS                       R16 R15 K19 ["Title"]
      116 GETIMPORT                        R16 K50 [Enum.FillDirection.Horizontal]
      118 SETTABLEKS                       R16 R15 K36 ["FillDirection"]
      120 GETTABLEKS                       R17 R1 K7 ["Disabled"]
      122 JUMPIFNOT                        R17 ; [+2]
      123 MOVE                             R16 R8
      124 JUMP                             ; [+1]
      125 LOADNIL                          R16
      126 SETTABLEKS                       R16 R15 K44 ["Style"]
      128 DUPTABLE                         R16 K54 [{"PaddingLeft", "CreateButton", "Description"}]
      129 GETUPVAL                         R18 3
      130 GETTABLEKS                       R17 R18 K28 ["createElement"]
      132 LOADK                            R18 K55 ["UIPadding"]
      133 DUPTABLE                         R19 K57 [{"PaddingLeft", "PaddingBottom"}]
      134 GETIMPORT                        R20 K59 [UDim.new]
      136 LOADN                            R21 0
      137 LOADN                            R22 20
      138 CALL                             R20 2 1
      139 SETTABLEKS                       R20 R19 K51 ["PaddingLeft"]
      141 GETIMPORT                        R20 K59 [UDim.new]
      143 LOADN                            R21 0
      144 LOADN                            R22 10
      145 CALL                             R20 2 1
      146 SETTABLEKS                       R20 R19 K56 ["PaddingBottom"]
      148 CALL                             R17 2 1
      149 SETTABLEKS                       R17 R16 K51 ["PaddingLeft"]
      151 GETUPVAL                         R18 3
      152 GETTABLEKS                       R17 R18 K28 ["createElement"]
      154 GETUPVAL                         R18 6
      155 DUPTABLE                         R19 K65 [{"LayoutOrder", "Style", "Text", "Size", "Position", "OnClick", "StyleModifier"}]
      156 LOADN                            R20 1
      157 SETTABLEKS                       R20 R19 K31 ["LayoutOrder"]
      159 LOADK                            R20 K66 ["GameSettingsPrimaryButton"]
      160 SETTABLEKS                       R20 R19 K44 ["Style"]
      162 LOADK                            R22 K47 ["General"]
      163 LOADK                            R23 K67 ["ButtonCreate"]
      164 NAMECALL                         R20 R2 K4 ["getText"]
      166 CALL                             R20 3 1
      167 SETTABLEKS                       R20 R19 K60 ["Text"]
      169 GETIMPORT                        R20 K69 [UDim2.new]
      171 LOADN                            R21 0
      172 LOADN                            R22 100
      173 LOADN                            R23 0
      174 LOADN                            R24 30
      175 CALL                             R20 4 1
      176 SETTABLEKS                       R20 R19 K61 ["Size"]
      178 GETIMPORT                        R20 K71 [UDim2.fromScale]
      180 LOADN                            R21 1
      181 LOADN                            R22 0
      182 CALL                             R20 2 1
      183 SETTABLEKS                       R20 R19 K62 ["Position"]
      185 NEWCLOSURE                       R20 P0
      186 CAPTURE                          UPVAL U7
      187 CAPTURE                          VAL R1
      188 SETTABLEKS                       R20 R19 K63 ["OnClick"]
      190 GETTABLEKS                       R21 R1 K7 ["Disabled"]
      192 JUMPIFNOT                        R21 ; [+4]
      193 GETUPVAL                         R21 8
      194 GETTABLEKS                       R20 R21 K7 ["Disabled"]
      196 JUMP                             ; [+1]
      197 LOADNIL                          R20
      198 SETTABLEKS                       R20 R19 K64 ["StyleModifier"]
      200 CALL                             R17 2 1
      201 SETTABLEKS                       R17 R16 K52 ["CreateButton"]
      203 GETUPVAL                         R18 3
      204 GETTABLEKS                       R17 R18 K28 ["createElement"]
      206 GETUPVAL                         R18 9
      207 DUPTABLE                         R19 K75 [{"AutomaticSize", "BackgroundTransparency", "LayoutOrder", "Style", "Text", "TextColor", "TextWrapped", "TextXAlignment"}]
      208 GETIMPORT                        R20 K35 [Enum.AutomaticSize.XY]
      210 SETTABLEKS                       R20 R19 K29 ["AutomaticSize"]
      212 LOADN                            R20 1
      213 SETTABLEKS                       R20 R19 K72 ["BackgroundTransparency"]
      215 LOADN                            R20 2
      216 SETTABLEKS                       R20 R19 K31 ["LayoutOrder"]
      218 GETTABLEKS                       R21 R7 K18 ["fontStyle"]
      220 GETTABLEKS                       R20 R21 K76 ["Small"]
      222 SETTABLEKS                       R20 R19 K44 ["Style"]
      224 GETUPVAL                         R21 10
      225 JUMPIFNOT                        R21 ; [+6]
      226 LOADK                            R22 K2 ["Security"]
      227 LOADK                            R23 K77 ["LocalSecretsDescExp"]
      228 NAMECALL                         R20 R2 K4 ["getText"]
      230 CALL                             R20 3 1
      231 JUMP                             ; [+5]
      232 LOADK                            R22 K2 ["Security"]
      233 LOADK                            R23 K78 ["LocalSecretsDesc"]
      234 NAMECALL                         R20 R2 K4 ["getText"]
      236 CALL                             R20 3 1
      237 SETTABLEKS                       R20 R19 K60 ["Text"]
      239 GETTABLEKS                       R21 R1 K7 ["Disabled"]
      241 JUMPIFNOT                        R21 ; [+7]
      242 GETIMPORT                        R20 K27 [Color3.fromRGB]
      244 LOADN                            R21 128
      245 LOADN                            R22 128
      246 LOADN                            R23 128
      247 CALL                             R20 3 1
      248 JUMP                             ; [+6]
      249 GETTABLEKS                       R22 R7 K18 ["fontStyle"]
      251 GETTABLEKS                       R21 R22 K76 ["Small"]
      253 GETTABLEKS                       R20 R21 K79 ["TextColor3"]
      255 SETTABLEKS                       R20 R19 K20 ["TextColor"]
      257 LOADB                            R20 1
      258 SETTABLEKS                       R20 R19 K73 ["TextWrapped"]
      260 GETIMPORT                        R20 K81 [Enum.TextXAlignment.Left]
      262 SETTABLEKS                       R20 R19 K74 ["TextXAlignment"]
      264 CALL                             R17 2 1
      265 SETTABLEKS                       R17 R16 K53 ["Description"]
      267 CALL                             R13 3 1
      268 SETTABLEKS                       R13 R12 K39 ["SecretsTitle"]
      270 MOVE                             R13 R4
      271 JUMPIFNOT                        R13 ; [+75]
      272 GETUPVAL                         R14 3
      273 GETTABLEKS                       R13 R14 K28 ["createElement"]
      275 GETUPVAL                         R14 11
      276 DUPTABLE                         R15 K87 [{"LayoutOrder", "Headers", "Data", "MenuItems", "OnItemClicked", "TableHeight"}]
      277 NAMECALL                         R16 R5 K46 ["getNextOrder"]
      279 CALL                             R16 1 1
      280 SETTABLEKS                       R16 R15 K31 ["LayoutOrder"]
      282 SETTABLEKS                       R3 R15 K82 ["Headers"]
      284 GETUPVAL                         R17 12
      285 JUMPIFNOT                        R17 ; [+3]
      286 GETTABLEKS                       R16 R1 K8 ["SecretsAsTableRows"]
      288 JUMP                             ; [+16]
      289 GETUPVAL                         R17 7
      290 GETTABLEKS                       R16 R17 K88 ["maskValueColumn"]
      292 GETTABLEKS                       R17 R1 K8 ["SecretsAsTableRows"]
      294 LOADK                            R20 K2 ["Security"]
      295 LOADK                            R21 K89 ["TextSecretValueHidden"]
      296 NAMECALL                         R18 R2 K4 ["getText"]
      298 CALL                             R18 3 1
      299 LOADK                            R21 K2 ["Security"]
      300 LOADK                            R22 K90 ["TextSecretValueUpdated"]
      301 NAMECALL                         R19 R2 K4 ["getText"]
      303 CALL                             R19 3 -1
      304 CALL                             R16 -1 1
      305 SETTABLEKS                       R16 R15 K83 ["Data"]
      307 NEWTABLE                         R16 0 2
      309 DUPTABLE                         R17 K92 [{"Key", "Text"}]
      310 GETUPVAL                         R18 13
      311 CALL                             R18 0 1
      312 SETTABLEKS                       R18 R17 K91 ["Key"]
      314 LOADK                            R20 K47 ["General"]
      315 LOADK                            R21 K93 ["ButtonEdit"]
      316 NAMECALL                         R18 R2 K4 ["getText"]
      318 CALL                             R18 3 1
      319 SETTABLEKS                       R18 R17 K60 ["Text"]
      321 DUPTABLE                         R18 K92 [{"Key", "Text"}]
      322 GETUPVAL                         R19 14
      323 CALL                             R19 0 1
      324 SETTABLEKS                       R19 R18 K91 ["Key"]
      326 LOADK                            R21 K47 ["General"]
      327 LOADK                            R22 K94 ["ButtonDelete"]
      328 NAMECALL                         R19 R2 K4 ["getText"]
      330 CALL                             R19 3 1
      331 SETTABLEKS                       R19 R18 K60 ["Text"]
      333 SETLIST                          R16 R17 2 [1]
      335 SETTABLEKS                       R16 R15 K84 ["MenuItems"]
      337 NEWCLOSURE                       R16 P1
      338 CAPTURE                          UPVAL U13
      339 CAPTURE                          VAL R1
      340 CAPTURE                          UPVAL U14
      341 CAPTURE                          UPVAL U7
      342 SETTABLEKS                       R16 R15 K85 ["OnItemClicked"]
      344 SETTABLEKS                       R6 R15 K86 ["TableHeight"]
      346 CALL                             R13 2 1
      347 SETTABLEKS                       R13 R12 K40 ["SecretsTable"]
      349 MOVE                             R13 R4
      350 JUMPIFNOT                        R13 ; [+23]
      351 GETUPVAL                         R14 3
      352 GETTABLEKS                       R13 R14 K28 ["createElement"]
      354 LOADK                            R14 K95 ["Frame"]
      355 DUPTABLE                         R15 K96 [{"LayoutOrder", "Size", "BackgroundTransparency"}]
      356 NAMECALL                         R16 R5 K46 ["getNextOrder"]
      358 CALL                             R16 1 1
      359 SETTABLEKS                       R16 R15 K31 ["LayoutOrder"]
      361 GETIMPORT                        R16 K69 [UDim2.new]
      363 LOADN                            R17 1
      364 LOADN                            R18 0
      365 LOADN                            R19 0
      366 LOADN                            R20 15
      367 CALL                             R16 4 1
      368 SETTABLEKS                       R16 R15 K61 ["Size"]
      370 LOADN                            R16 1
      371 SETTABLEKS                       R16 R15 K72 ["BackgroundTransparency"]
      373 CALL                             R13 2 1
      374 SETTABLEKS                       R13 R12 K41 ["Spacer"]
      376 GETUPVAL                         R14 3
      377 GETTABLEKS                       R13 R14 K28 ["createElement"]
      379 GETUPVAL                         R14 15
      380 DUPTABLE                         R15 K97 [{"LayoutOrder"}]
      381 NAMECALL                         R16 R5 K46 ["getNextOrder"]
      383 CALL                             R16 1 1
      384 SETTABLEKS                       R16 R15 K31 ["LayoutOrder"]
      386 CALL                             R13 2 1
      387 SETTABLEKS                       R13 R12 K42 ["Separator"]
      389 CALL                             R9 3 -1
      390 RETURN                           R9 -1
      391 GETUPVAL                         R4 3
      392 GETTABLEKS                       R3 R4 K28 ["createElement"]
      394 GETUPVAL                         R4 5
      395 DUPTABLE                         R5 K98 [{"LayoutOrder", "Title"}]
      396 GETTABLEKS                       R6 R1 K31 ["LayoutOrder"]
      398 SETTABLEKS                       R6 R5 K31 ["LayoutOrder"]
      400 LOADK                            R8 K47 ["General"]
      401 LOADK                            R9 K48 ["TitleSecrets"]
      402 NAMECALL                         R6 R2 K4 ["getText"]
      404 CALL                             R6 3 1
      405 SETTABLEKS                       R6 R5 K19 ["Title"]
      407 DUPTABLE                         R6 K100 [{"TextBox"}]
      408 GETUPVAL                         R8 3
      409 GETTABLEKS                       R7 R8 K28 ["createElement"]
      411 GETUPVAL                         R8 16
      412 DUPTABLE                         R9 K105 [{"Height", "MultiLine", "OnTextChanged", "Text", "BottomText"}]
      413 LOADN                            R10 130
      414 SETTABLEKS                       R10 R9 K101 ["Height"]
      416 LOADB                            R10 1
      417 SETTABLEKS                       R10 R9 K102 ["MultiLine"]
      419 GETTABLEKS                       R10 R1 K106 ["OnChanged"]
      421 SETTABLEKS                       R10 R9 K103 ["OnTextChanged"]
      423 GETTABLEKS                       R10 R1 K107 ["Secrets"]
      425 SETTABLEKS                       R10 R9 K60 ["Text"]
      427 GETUPVAL                         R11 10
      428 JUMPIFNOT                        R11 ; [+6]
      429 LOADK                            R12 K2 ["Security"]
      430 LOADK                            R13 K77 ["LocalSecretsDescExp"]
      431 NAMECALL                         R10 R2 K4 ["getText"]
      433 CALL                             R10 3 1
      434 JUMP                             ; [+5]
      435 LOADK                            R12 K2 ["Security"]
      436 LOADK                            R13 K78 ["LocalSecretsDesc"]
      437 NAMECALL                         R10 R2 K4 ["getText"]
      439 CALL                             R10 3 1
      440 SETTABLEKS                       R10 R9 K104 ["BottomText"]
      442 CALL                             R7 2 1
      443 SETTABLEKS                       R7 R6 K99 ["TextBox"]
      445 CALL                             R3 3 -1
      446 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R3 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R4 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R4 K7 ["Cryo"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R6 R0 K8 ["Src"]
       29 GETTABLEKS                       R5 R6 K9 ["Util"]
       31 GETTABLEKS                       R4 R5 K10 ["KeyProvider"]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R4 R3 K11 ["getEditKeyName"]
       36 GETTABLEKS                       R5 R3 K12 ["getDeleteKeyName"]
       38 GETIMPORT                        R6 K4 [require]
       40 GETTABLEKS                       R8 R0 K5 ["Packages"]
       42 GETTABLEKS                       R7 R8 K13 ["Framework"]
       44 CALL                             R6 1 1
       45 GETTABLEKS                       R7 R6 K14 ["UI"]
       47 GETTABLEKS                       R8 R7 K15 ["Button"]
       49 GETTABLEKS                       R9 R7 K16 ["Pane"]
       51 GETTABLEKS                       R10 R7 K17 ["Separator"]
       53 GETTABLEKS                       R11 R7 K18 ["TextLabel"]
       55 GETTABLEKS                       R12 R7 K19 ["TextInput"]
       57 GETTABLEKS                       R13 R7 K20 ["TitledFrame"]
       59 GETTABLEKS                       R15 R6 K9 ["Util"]
       61 GETTABLEKS                       R14 R15 K21 ["LayoutOrderIterator"]
       63 GETTABLEKS                       R16 R6 K9 ["Util"]
       65 GETTABLEKS                       R15 R16 K22 ["StyleModifier"]
       67 GETIMPORT                        R16 K4 [require]
       69 GETTABLEKS                       R19 R0 K8 ["Src"]
       71 GETTABLEKS                       R18 R19 K23 ["Components"]
       73 GETTABLEKS                       R17 R18 K24 ["TableWithMenu"]
       75 CALL                             R16 1 1
       76 GETTABLEKS                       R17 R6 K25 ["ContextServices"]
       78 GETTABLEKS                       R18 R17 K26 ["withContext"]
       80 GETTABLEKS                       R19 R1 K27 ["PureComponent"]
       82 LOADK                            R21 K28 ["Secrets"]
       83 NAMECALL                         R19 R19 K29 ["extend"]
       85 CALL                             R19 2 1
       86 GETIMPORT                        R20 K4 [require]
       88 GETTABLEKS                       R23 R0 K8 ["Src"]
       90 GETTABLEKS                       R22 R23 K9 ["Util"]
       92 GETTABLEKS                       R21 R22 K30 ["SecretUtils"]
       94 CALL                             R20 1 1
       95 GETIMPORT                        R21 K4 [require]
       97 GETTABLEKS                       R24 R0 K8 ["Src"]
       99 GETTABLEKS                       R23 R24 K31 ["Flags"]
      101 GETTABLEKS                       R22 R23 K32 ["getFFlagSecretsEditorImprovement"]
      103 CALL                             R21 1 1
      104 CALL                             R21 0 1
      105 GETIMPORT                        R22 K4 [require]
      107 GETTABLEKS                       R25 R0 K8 ["Src"]
      109 GETTABLEKS                       R24 R25 K31 ["Flags"]
      111 GETTABLEKS                       R23 R24 K33 ["getFFlagShowSecretValues"]
      113 CALL                             R22 1 1
      114 CALL                             R22 0 1
      115 GETIMPORT                        R23 K4 [require]
      117 GETTABLEKS                       R26 R0 K8 ["Src"]
      119 GETTABLEKS                       R25 R26 K31 ["Flags"]
      121 GETTABLEKS                       R24 R25 K34 ["getFFlagGameSettingsGameToExperience"]
      123 CALL                             R23 1 1
      124 CALL                             R23 0 1
      125 DUPCLOSURE                       R24 K35 [PROTO_2]
      126 CAPTURE                          VAL R21
      127 CAPTURE                          VAL R14
      128 CAPTURE                          VAL R2
      129 CAPTURE                          VAL R1
      130 CAPTURE                          VAL R9
      131 CAPTURE                          VAL R13
      132 CAPTURE                          VAL R8
      133 CAPTURE                          VAL R20
      134 CAPTURE                          VAL R15
      135 CAPTURE                          VAL R11
      136 CAPTURE                          VAL R23
      137 CAPTURE                          VAL R16
      138 CAPTURE                          VAL R22
      139 CAPTURE                          VAL R4
      140 CAPTURE                          VAL R5
      141 CAPTURE                          VAL R10
      142 CAPTURE                          VAL R12
      143 SETTABLEKS                       R24 R19 K36 ["render"]
      145 MOVE                             R24 R18
      146 DUPTABLE                         R25 K39 [{"Localization", "Stylizer"}]
      147 GETTABLEKS                       R26 R17 K37 ["Localization"]
      149 SETTABLEKS                       R26 R25 K37 ["Localization"]
      151 GETTABLEKS                       R26 R17 K38 ["Stylizer"]
      153 SETTABLEKS                       R26 R25 K38 ["Stylizer"]
      155 CALL                             R24 1 1
      156 MOVE                             R25 R19
      157 CALL                             R24 1 1
      158 MOVE                             R19 R24
      159 RETURN                           R19 1
