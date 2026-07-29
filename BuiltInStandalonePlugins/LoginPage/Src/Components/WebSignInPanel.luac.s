PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["BeginLoginPageFlowAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["OpenAuthorizationUrlAsync"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 JUMPIFNOT                        R0 ; [+2]
        6 MOVE                             R2 R1
        7 JUMP                             ; [+1]
        8 LOADK                            R2 K2 [""]
        9 GETIMPORT                        R3 K1 [pcall]
       11 NEWCLOSURE                       R4 P1
       12 CAPTURE                          UPVAL U0
       13 CALL                             R3 1 2
       14 JUMPIFNOT                        R3 ; [+6]
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R5 R5 K3 ["reportLoginBrowserOpenedSuccess"]
       18 MOVE                             R6 R2
       19 CALL                             R5 1 0
       20 RETURN                           R0 0
       21 GETUPVAL                         R5 1
       22 GETTABLEKS                       R5 R5 K4 ["reportLoginBrowserOpenedFailed"]
       24 MOVE                             R6 R2
       25 FASTCALL1                        TOSTRING R4 ; [+3]
       26 MOVE                             R8 R4
       27 GETIMPORT                        R7 K6 [tostring]
       29 CALL                             R7 1 1
       30 CALL                             R5 2 0
       31 GETIMPORT                        R5 K8 [warn]
       33 LOADK                            R7 K9 ["OpenAuthorizationUrlAsync failed: "]
       34 FASTCALL1                        TOSTRING R4 ; [+3]
       35 MOVE                             R9 R4
       36 GETIMPORT                        R8 K6 [tostring]
       38 CALL                             R8 1 1
       39 CONCAT                           R6 R7 R8
       40 CALL                             R5 1 0
       41 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["BeginLoginPageFlowAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["OpenSignUpInExternalBrowserAsync"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 JUMPIFNOT                        R0 ; [+2]
        6 MOVE                             R2 R1
        7 JUMP                             ; [+1]
        8 LOADK                            R2 K2 [""]
        9 GETIMPORT                        R3 K1 [pcall]
       11 NEWCLOSURE                       R4 P1
       12 CAPTURE                          UPVAL U0
       13 CALL                             R3 1 2
       14 JUMPIFNOT                        R3 ; [+6]
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R5 R5 K3 ["reportSignUpBrowserOpenedSuccess"]
       18 MOVE                             R6 R2
       19 CALL                             R5 1 0
       20 RETURN                           R0 0
       21 GETUPVAL                         R5 1
       22 GETTABLEKS                       R5 R5 K4 ["reportSignUpBrowserOpenedFailed"]
       24 MOVE                             R6 R2
       25 FASTCALL1                        TOSTRING R4 ; [+3]
       26 MOVE                             R8 R4
       27 GETIMPORT                        R7 K6 [tostring]
       29 CALL                             R7 1 1
       30 CALL                             R5 2 0
       31 GETIMPORT                        R5 K8 [warn]
       33 LOADK                            R7 K9 ["OpenSignUpInExternalBrowserAsync failed: "]
       34 FASTCALL1                        TOSTRING R4 ; [+3]
       35 MOVE                             R9 R4
       36 GETIMPORT                        R8 K6 [tostring]
       38 CALL                             R8 1 1
       39 CONCAT                           R6 R7 R8
       40 CALL                             R5 1 0
       41 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_8:
        0 NEWCLOSURE                       R10 P0
        1 CAPTURE                          VAL R8
        2 CAPTURE                          UPVAL U0
        3 GETUPVAL                         R11 1
        4 GETTABLEKS                       R11 R11 K0 ["createElement"]
        6 LOADK                            R12 K1 ["Frame"]
        7 DUPTABLE                         R13 K11 [{["Size"], ["AutomaticSize"], ["AnchorPoint"], ["Position"], ["LayoutOrder"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
        8 GETIMPORT                        R14 K14 [UDim2.new]
       10 LOADN                            R15 1
       11 LOADN                            R16 0
       12 LOADN                            R17 0
       13 LOADN                            R18 0
       14 CALL                             R14 4 1
       15 SETTABLEKS                       R14 R13 K2 ["Size"]
       17 GETIMPORT                        R14 K17 [Enum.AutomaticSize.Y]
       19 SETTABLEKS                       R14 R13 K3 ["AutomaticSize"]
       21 SETTABLEKS                       R5 R13 K4 ["AnchorPoint"]
       23 SETTABLEKS                       R6 R13 K5 ["Position"]
       25 SETTABLEKS                       R9 R13 K6 ["LayoutOrder"]
       27 DUPTABLE                         R14 K22 [{"Layout", "Padding", "HeadingBody", "FirstStep"}]
       28 GETUPVAL                         R15 1
       29 GETTABLEKS                       R15 R15 K0 ["createElement"]
       31 LOADK                            R16 K23 ["UIListLayout"]
       32 DUPTABLE                         R17 K27 [{"SortOrder", "FillDirection", "HorizontalAlignment", "Padding"}]
       33 GETIMPORT                        R18 K28 [Enum.SortOrder.LayoutOrder]
       35 SETTABLEKS                       R18 R17 K24 ["SortOrder"]
       37 GETIMPORT                        R18 K30 [Enum.FillDirection.Vertical]
       39 SETTABLEKS                       R18 R17 K25 ["FillDirection"]
       41 GETIMPORT                        R18 K32 [Enum.HorizontalAlignment.Left]
       43 SETTABLEKS                       R18 R17 K26 ["HorizontalAlignment"]
       45 GETIMPORT                        R18 K34 [UDim.new]
       47 LOADN                            R19 0
       48 MOVE                             R20 R3
       49 CALL                             R18 2 1
       50 SETTABLEKS                       R18 R17 K19 ["Padding"]
       52 CALL                             R15 2 1
       53 SETTABLEKS                       R15 R14 K18 ["Layout"]
       55 GETUPVAL                         R15 1
       56 GETTABLEKS                       R15 R15 K0 ["createElement"]
       58 LOADK                            R16 K35 ["UIPadding"]
       59 DUPTABLE                         R17 K38 [{"PaddingLeft", "PaddingRight"}]
       60 GETIMPORT                        R18 K34 [UDim.new]
       62 LOADN                            R19 0
       63 MOVE                             R20 R2
       64 CALL                             R18 2 1
       65 SETTABLEKS                       R18 R17 K36 ["PaddingLeft"]
       67 GETIMPORT                        R18 K34 [UDim.new]
       69 LOADN                            R19 0
       70 MOVE                             R20 R2
       71 CALL                             R18 2 1
       72 SETTABLEKS                       R18 R17 K37 ["PaddingRight"]
       74 CALL                             R15 2 1
       75 SETTABLEKS                       R15 R14 K19 ["Padding"]
       77 GETUPVAL                         R15 1
       78 GETTABLEKS                       R15 R15 K0 ["createElement"]
       80 LOADK                            R16 K1 ["Frame"]
       81 DUPTABLE                         R17 K39 [{["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["LayoutOrder"] = 1}]
       82 GETIMPORT                        R18 K14 [UDim2.new]
       84 LOADN                            R19 1
       85 LOADN                            R20 0
       86 LOADN                            R21 0
       87 LOADN                            R22 0
       88 CALL                             R18 4 1
       89 SETTABLEKS                       R18 R17 K2 ["Size"]
       91 GETIMPORT                        R18 K17 [Enum.AutomaticSize.Y]
       93 SETTABLEKS                       R18 R17 K3 ["AutomaticSize"]
       95 DUPTABLE                         R18 K43 [{"HeadingBodyLayout", "Heading", "Body"}]
       96 GETUPVAL                         R19 1
       97 GETTABLEKS                       R19 R19 K0 ["createElement"]
       99 LOADK                            R20 K23 ["UIListLayout"]
      100 DUPTABLE                         R21 K44 [{"SortOrder", "FillDirection", "Padding"}]
      101 GETIMPORT                        R22 K28 [Enum.SortOrder.LayoutOrder]
      103 SETTABLEKS                       R22 R21 K24 ["SortOrder"]
      105 GETIMPORT                        R22 K30 [Enum.FillDirection.Vertical]
      107 SETTABLEKS                       R22 R21 K25 ["FillDirection"]
      109 GETIMPORT                        R22 K34 [UDim.new]
      111 LOADN                            R23 0
      112 GETTABLEKS                       R24 R0 K19 ["Padding"]
      114 GETTABLEKS                       R24 R24 K45 ["XSmall"]
      116 CALL                             R22 2 1
      117 SETTABLEKS                       R22 R21 K19 ["Padding"]
      119 CALL                             R19 2 1
      120 SETTABLEKS                       R19 R18 K40 ["HeadingBodyLayout"]
      122 GETUPVAL                         R19 1
      123 GETTABLEKS                       R19 R19 K0 ["createElement"]
      125 LOADK                            R20 K46 ["TextLabel"]
      126 DUPTABLE                         R21 K52 [{["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 1, ["Text"], ["TextColor3"], ["Font"], ["TextSize"], ["TextXAlignment"], ["LayoutOrder"] = 1}]
      127 GETIMPORT                        R22 K14 [UDim2.new]
      129 LOADN                            R23 1
      130 LOADN                            R24 0
      131 LOADN                            R25 0
      132 LOADN                            R26 0
      133 CALL                             R22 4 1
      134 SETTABLEKS                       R22 R21 K2 ["Size"]
      136 GETIMPORT                        R22 K17 [Enum.AutomaticSize.Y]
      138 SETTABLEKS                       R22 R21 K3 ["AutomaticSize"]
      140 LOADK                            R24 K41 ["Heading"]
      141 LOADK                            R25 K53 ["SignIn"]
      142 NAMECALL                         R22 R1 K54 ["getText"]
      144 CALL                             R22 3 1
      145 SETTABLEKS                       R22 R21 K47 ["Text"]
      147 GETTABLEKS                       R22 R0 K55 ["DarkMode"]
      149 GETTABLEKS                       R22 R22 K56 ["Content"]
      151 GETTABLEKS                       R22 R22 K57 ["Emphasis"]
      153 GETTABLEKS                       R22 R22 K58 ["Color3"]
      155 SETTABLEKS                       R22 R21 K48 ["TextColor3"]
      157 GETIMPORT                        R22 K60 [Enum.Font.BuilderSansBold]
      159 SETTABLEKS                       R22 R21 K49 ["Font"]
      161 GETTABLEKS                       R22 R0 K61 ["Typography"]
      163 GETTABLEKS                       R22 R22 K62 ["HeadingLarge"]
      165 GETTABLEKS                       R22 R22 K63 ["FontSize"]
      167 SETTABLEKS                       R22 R21 K50 ["TextSize"]
      169 GETIMPORT                        R22 K64 [Enum.TextXAlignment.Left]
      171 SETTABLEKS                       R22 R21 K51 ["TextXAlignment"]
      173 CALL                             R19 2 1
      174 SETTABLEKS                       R19 R18 K41 ["Heading"]
      176 GETUPVAL                         R19 1
      177 GETTABLEKS                       R19 R19 K0 ["createElement"]
      179 LOADK                            R20 K46 ["TextLabel"]
      180 DUPTABLE                         R21 K66 [{["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 1, ["Text"], ["TextColor3"], ["Font"], ["TextSize"], ["TextXAlignment"], ["LayoutOrder"] = 2}]
      181 GETIMPORT                        R22 K14 [UDim2.new]
      183 LOADN                            R23 1
      184 LOADN                            R24 0
      185 LOADN                            R25 0
      186 LOADN                            R26 0
      187 CALL                             R22 4 1
      188 SETTABLEKS                       R22 R21 K2 ["Size"]
      190 GETIMPORT                        R22 K17 [Enum.AutomaticSize.Y]
      192 SETTABLEKS                       R22 R21 K3 ["AutomaticSize"]
      194 LOADK                            R24 K41 ["Heading"]
      195 LOADK                            R25 K67 ["SignInUpsell"]
      196 NAMECALL                         R22 R1 K54 ["getText"]
      198 CALL                             R22 3 1
      199 SETTABLEKS                       R22 R21 K47 ["Text"]
      201 GETTABLEKS                       R22 R0 K55 ["DarkMode"]
      203 GETTABLEKS                       R22 R22 K56 ["Content"]
      205 GETTABLEKS                       R22 R22 K68 ["Default"]
      207 GETTABLEKS                       R22 R22 K58 ["Color3"]
      209 SETTABLEKS                       R22 R21 K48 ["TextColor3"]
      211 GETTABLEKS                       R22 R0 K61 ["Typography"]
      213 GETTABLEKS                       R22 R22 K69 ["BodyLarge"]
      215 GETTABLEKS                       R22 R22 K49 ["Font"]
      217 SETTABLEKS                       R22 R21 K49 ["Font"]
      219 GETTABLEKS                       R22 R0 K61 ["Typography"]
      221 GETTABLEKS                       R22 R22 K69 ["BodyLarge"]
      223 GETTABLEKS                       R22 R22 K63 ["FontSize"]
      225 SETTABLEKS                       R22 R21 K50 ["TextSize"]
      227 GETIMPORT                        R22 K64 [Enum.TextXAlignment.Left]
      229 SETTABLEKS                       R22 R21 K51 ["TextXAlignment"]
      231 CALL                             R19 2 1
      232 SETTABLEKS                       R19 R18 K42 ["Body"]
      234 CALL                             R15 3 1
      235 SETTABLEKS                       R15 R14 K20 ["HeadingBody"]
      237 GETUPVAL                         R15 1
      238 GETTABLEKS                       R15 R15 K0 ["createElement"]
      240 LOADK                            R16 K1 ["Frame"]
      241 DUPTABLE                         R17 K70 [{["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["LayoutOrder"] = 2}]
      242 GETIMPORT                        R18 K14 [UDim2.new]
      244 LOADN                            R19 1
      245 LOADN                            R20 0
      246 LOADN                            R21 0
      247 LOADN                            R22 0
      248 CALL                             R18 4 1
      249 SETTABLEKS                       R18 R17 K2 ["Size"]
      251 GETIMPORT                        R18 K17 [Enum.AutomaticSize.Y]
      253 SETTABLEKS                       R18 R17 K3 ["AutomaticSize"]
      255 DUPTABLE                         R18 K74 [{"FirstStepLayout", "SignInButton", "CreateAccountRow"}]
      256 GETUPVAL                         R19 1
      257 GETTABLEKS                       R19 R19 K0 ["createElement"]
      259 LOADK                            R20 K23 ["UIListLayout"]
      260 DUPTABLE                         R21 K27 [{"SortOrder", "FillDirection", "HorizontalAlignment", "Padding"}]
      261 GETIMPORT                        R22 K28 [Enum.SortOrder.LayoutOrder]
      263 SETTABLEKS                       R22 R21 K24 ["SortOrder"]
      265 GETIMPORT                        R22 K30 [Enum.FillDirection.Vertical]
      267 SETTABLEKS                       R22 R21 K25 ["FillDirection"]
      269 GETIMPORT                        R22 K76 [Enum.HorizontalAlignment.Center]
      271 SETTABLEKS                       R22 R21 K26 ["HorizontalAlignment"]
      273 GETIMPORT                        R22 K34 [UDim.new]
      275 LOADN                            R23 0
      276 MOVE                             R24 R4
      277 CALL                             R22 2 1
      278 SETTABLEKS                       R22 R21 K19 ["Padding"]
      280 CALL                             R19 2 1
      281 SETTABLEKS                       R19 R18 K71 ["FirstStepLayout"]
      283 GETUPVAL                         R19 1
      284 GETTABLEKS                       R19 R19 K0 ["createElement"]
      286 LOADK                            R20 K77 ["TextButton"]
      287 NEWTABLE                         R21 8 0
      289 GETIMPORT                        R22 K14 [UDim2.new]
      291 LOADN                            R23 1
      292 LOADN                            R24 0
      293 LOADN                            R25 0
      294 GETTABLEKS                       R26 R0 K2 ["Size"]
      296 GETTABLEKS                       R26 R26 K78 ["Size_1000"]
      298 CALL                             R22 4 1
      299 SETTABLEKS                       R22 R21 K2 ["Size"]
      301 GETTABLEKS                       R22 R0 K55 ["DarkMode"]
      303 GETTABLEKS                       R22 R22 K79 ["ActionEmphasis"]
      305 GETTABLEKS                       R22 R22 K80 ["Background"]
      307 GETTABLEKS                       R22 R22 K58 ["Color3"]
      309 SETTABLEKS                       R22 R21 K81 ["BackgroundColor3"]
      311 GETTABLEKS                       R22 R0 K55 ["DarkMode"]
      313 GETTABLEKS                       R22 R22 K79 ["ActionEmphasis"]
      315 GETTABLEKS                       R22 R22 K80 ["Background"]
      317 GETTABLEKS                       R22 R22 K82 ["Transparency"]
      319 SETTABLEKS                       R22 R21 K7 ["BackgroundTransparency"]
      321 LOADK                            R22 K83 [""]
      322 SETTABLEKS                       R22 R21 K47 ["Text"]
      324 LOADB                            R22 1
      325 SETTABLEKS                       R22 R21 K84 ["AutoButtonColor"]
      327 LOADN                            R22 1
      328 SETTABLEKS                       R22 R21 K6 ["LayoutOrder"]
      330 GETUPVAL                         R22 1
      331 GETTABLEKS                       R22 R22 K85 ["Event"]
      333 GETTABLEKS                       R22 R22 K86 ["Activated"]
      335 SETTABLE                         R10 R21 R22
      336 DUPTABLE                         R22 K91 [{"Corner", "ButtonLayout", "ButtonIcon", "ButtonText"}]
      337 GETUPVAL                         R23 1
      338 GETTABLEKS                       R23 R23 K0 ["createElement"]
      340 LOADK                            R24 K92 ["UICorner"]
      341 DUPTABLE                         R25 K94 [{"CornerRadius"}]
      342 GETIMPORT                        R26 K34 [UDim.new]
      344 LOADN                            R27 0
      345 GETTABLEKS                       R28 R0 K95 ["Radius"]
      347 GETTABLEKS                       R28 R28 K96 ["Medium"]
      349 CALL                             R26 2 1
      350 SETTABLEKS                       R26 R25 K93 ["CornerRadius"]
      352 CALL                             R23 2 1
      353 SETTABLEKS                       R23 R22 K87 ["Corner"]
      355 GETUPVAL                         R23 1
      356 GETTABLEKS                       R23 R23 K0 ["createElement"]
      358 LOADK                            R24 K23 ["UIListLayout"]
      359 DUPTABLE                         R25 K98 [{"SortOrder", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
      360 GETIMPORT                        R26 K28 [Enum.SortOrder.LayoutOrder]
      362 SETTABLEKS                       R26 R25 K24 ["SortOrder"]
      364 GETIMPORT                        R26 K100 [Enum.FillDirection.Horizontal]
      366 SETTABLEKS                       R26 R25 K25 ["FillDirection"]
      368 GETIMPORT                        R26 K76 [Enum.HorizontalAlignment.Center]
      370 SETTABLEKS                       R26 R25 K26 ["HorizontalAlignment"]
      372 GETIMPORT                        R26 K101 [Enum.VerticalAlignment.Center]
      374 SETTABLEKS                       R26 R25 K97 ["VerticalAlignment"]
      376 GETIMPORT                        R26 K34 [UDim.new]
      378 LOADN                            R27 0
      379 GETTABLEKS                       R28 R0 K19 ["Padding"]
      381 GETTABLEKS                       R28 R28 K102 ["Small"]
      383 CALL                             R26 2 1
      384 SETTABLEKS                       R26 R25 K19 ["Padding"]
      386 CALL                             R23 2 1
      387 SETTABLEKS                       R23 R22 K88 ["ButtonLayout"]
      389 GETUPVAL                         R23 1
      390 GETTABLEKS                       R23 R23 K0 ["createElement"]
      392 GETUPVAL                         R24 2
      393 DUPTABLE                         R25 K107 [{["name"] = "arrow-up-right-from-square", ["style"], ["size"], ["LayoutOrder"] = 1}]
      394 GETTABLEKS                       R26 R0 K55 ["DarkMode"]
      396 GETTABLEKS                       R26 R26 K79 ["ActionEmphasis"]
      398 GETTABLEKS                       R26 R26 K108 ["Foreground"]
      400 SETTABLEKS                       R26 R25 K105 ["style"]
      402 GETUPVAL                         R26 3
      403 GETTABLEKS                       R26 R26 K96 ["Medium"]
      405 SETTABLEKS                       R26 R25 K106 ["size"]
      407 CALL                             R23 2 1
      408 SETTABLEKS                       R23 R22 K89 ["ButtonIcon"]
      410 GETUPVAL                         R23 1
      411 GETTABLEKS                       R23 R23 K0 ["createElement"]
      413 LOADK                            R24 K46 ["TextLabel"]
      414 DUPTABLE                         R25 K110 [{["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 1, ["Text"], ["TextColor3"], ["FontFace"], ["TextSize"], ["LayoutOrder"] = 2}]
      415 GETIMPORT                        R26 K112 [UDim2.fromOffset]
      417 LOADN                            R27 0
      418 LOADN                            R28 0
      419 CALL                             R26 2 1
      420 SETTABLEKS                       R26 R25 K2 ["Size"]
      422 GETIMPORT                        R26 K114 [Enum.AutomaticSize.XY]
      424 SETTABLEKS                       R26 R25 K3 ["AutomaticSize"]
      426 LOADK                            R28 K115 ["Button"]
      427 LOADK                            R29 K53 ["SignIn"]
      428 NAMECALL                         R26 R1 K54 ["getText"]
      430 CALL                             R26 3 1
      431 SETTABLEKS                       R26 R25 K47 ["Text"]
      433 GETTABLEKS                       R26 R0 K55 ["DarkMode"]
      435 GETTABLEKS                       R26 R26 K79 ["ActionEmphasis"]
      437 GETTABLEKS                       R26 R26 K108 ["Foreground"]
      439 GETTABLEKS                       R26 R26 K58 ["Color3"]
      441 SETTABLEKS                       R26 R25 K48 ["TextColor3"]
      443 GETUPVAL                         R26 4
      444 SETTABLEKS                       R26 R25 K109 ["FontFace"]
      446 GETTABLEKS                       R26 R0 K61 ["Typography"]
      448 GETTABLEKS                       R26 R26 K116 ["LabelMedium"]
      450 GETTABLEKS                       R26 R26 K63 ["FontSize"]
      452 SETTABLEKS                       R26 R25 K50 ["TextSize"]
      454 CALL                             R23 2 1
      455 SETTABLEKS                       R23 R22 K90 ["ButtonText"]
      457 CALL                             R19 3 1
      458 SETTABLEKS                       R19 R18 K72 ["SignInButton"]
      460 GETUPVAL                         R19 1
      461 GETTABLEKS                       R19 R19 K0 ["createElement"]
      463 GETUPVAL                         R20 5
      464 DUPTABLE                         R21 K119 [{["tag"] = "row align-y-center gap-xsmall auto-x", ["Size"], ["LayoutOrder"] = 2}]
      465 GETIMPORT                        R22 K112 [UDim2.fromOffset]
      467 LOADN                            R23 0
      468 GETTABLEKS                       R24 R0 K2 ["Size"]
      470 GETTABLEKS                       R24 R24 K78 ["Size_1000"]
      472 CALL                             R22 2 1
      473 SETTABLEKS                       R22 R21 K2 ["Size"]
      475 DUPTABLE                         R22 K122 [{"Prompt", "CreateOne"}]
      476 GETUPVAL                         R23 1
      477 GETTABLEKS                       R23 R23 K0 ["createElement"]
      479 GETUPVAL                         R24 6
      480 DUPTABLE                         R25 K125 [{["tag"] = "auto-xy text-label-medium", ["Text"], ["fontStyle"], ["LayoutOrder"] = 1}]
      481 LOADK                            R28 K126 ["Label"]
      482 LOADK                            R29 K127 ["SignUp1"]
      483 NAMECALL                         R26 R1 K54 ["getText"]
      485 CALL                             R26 3 1
      486 SETTABLEKS                       R26 R25 K47 ["Text"]
      488 DUPTABLE                         R26 K128 [{"Font"}]
      489 GETUPVAL                         R27 4
      490 SETTABLEKS                       R27 R26 K49 ["Font"]
      492 SETTABLEKS                       R26 R25 K124 ["fontStyle"]
      494 CALL                             R23 2 1
      495 SETTABLEKS                       R23 R22 K120 ["Prompt"]
      497 GETUPVAL                         R23 1
      498 GETTABLEKS                       R23 R23 K0 ["createElement"]
      500 GETUPVAL                         R24 6
      501 DUPTABLE                         R25 K134 [{["tag"] = "auto-xy text-label-medium", ["Text"], ["RichText"] = True, ["fontStyle"], ["onActivated"], ["onStateChanged"], ["stateLayer"], ["LayoutOrder"] = 2}]
      502 LOADK                            R27 K135 ["<u>"]
      503 LOADK                            R32 K126 ["Label"]
      504 LOADK                            R33 K136 ["SignUp2"]
      505 NAMECALL                         R30 R1 K54 ["getText"]
      507 CALL                             R30 3 1
      508 MOVE                             R28 R30
      509 LOADK                            R29 K137 ["</u>"]
      510 CONCAT                           R26 R27 R29
      511 SETTABLEKS                       R26 R25 K47 ["Text"]
      513 DUPTABLE                         R26 K128 [{"Font"}]
      514 GETUPVAL                         R27 4
      515 SETTABLEKS                       R27 R26 K49 ["Font"]
      517 SETTABLEKS                       R26 R25 K124 ["fontStyle"]
      519 NEWCLOSURE                       R26 P1
      520 CAPTURE                          VAL R8
      521 CAPTURE                          UPVAL U0
      522 SETTABLEKS                       R26 R25 K131 ["onActivated"]
      524 GETTABLEKS                       R26 R7 K132 ["onStateChanged"]
      526 SETTABLEKS                       R26 R25 K132 ["onStateChanged"]
      528 GETTABLEKS                       R26 R7 K133 ["stateLayer"]
      530 SETTABLEKS                       R26 R25 K133 ["stateLayer"]
      532 CALL                             R23 2 1
      533 SETTABLEKS                       R23 R22 K121 ["CreateOne"]
      535 CALL                             R19 3 1
      536 SETTABLEKS                       R19 R18 K73 ["CreateAccountRow"]
      538 CALL                             R15 3 1
      539 SETTABLEKS                       R15 R14 K21 ["FirstStep"]
      541 CALL                             R11 3 -1
      542 RETURN                           R11 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R4 R0 K0 ["AbsoluteContentSize"]
        4 GETTABLEKS                       R4 R4 K1 ["Y"]
        6 ADD                              R2 R3 R4
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useContext"]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K1 ["Context"]
        8 CALL                             R2 1 1
        9 GETTABLEKS                       R3 R1 K2 ["Margin"]
       11 GETTABLEKS                       R3 R3 K3 ["Large"]
       13 GETTABLEKS                       R4 R1 K4 ["Padding"]
       15 GETTABLEKS                       R4 R4 K5 ["XXLarge"]
       17 GETTABLEKS                       R5 R1 K4 ["Padding"]
       19 GETTABLEKS                       R5 R5 K6 ["Small"]
       21 GETUPVAL                         R6 3
       22 CALL                             R6 0 1
       23 GETTABLEKS                       R7 R0 K7 ["isNarrow"]
       25 JUMPIFNOT                        R7 ; [+129]
       26 GETTABLEKS                       R7 R0 K8 ["onMinHeightChanged"]
       28 GETUPVAL                         R8 1
       29 GETTABLEKS                       R8 R8 K9 ["createElement"]
       31 LOADK                            R9 K10 ["Frame"]
       32 DUPTABLE                         R10 K17 [{["Position"], ["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
       33 GETTABLEKS                       R11 R0 K11 ["Position"]
       35 SETTABLEKS                       R11 R10 K11 ["Position"]
       37 GETTABLEKS                       R11 R0 K12 ["Size"]
       39 SETTABLEKS                       R11 R10 K12 ["Size"]
       41 DUPTABLE                         R11 K22 [{"RootPadding", "Layout", "StudioLogo", "SignInPrompt"}]
       42 GETUPVAL                         R12 1
       43 GETTABLEKS                       R12 R12 K9 ["createElement"]
       45 LOADK                            R13 K23 ["UIPadding"]
       46 DUPTABLE                         R14 K27 [{"PaddingLeft", "PaddingTop", "PaddingRight"}]
       47 GETIMPORT                        R15 K30 [UDim.new]
       49 LOADN                            R16 0
       50 MOVE                             R17 R3
       51 CALL                             R15 2 1
       52 SETTABLEKS                       R15 R14 K24 ["PaddingLeft"]
       54 GETIMPORT                        R15 K30 [UDim.new]
       56 LOADN                            R16 0
       57 MOVE                             R17 R3
       58 CALL                             R15 2 1
       59 SETTABLEKS                       R15 R14 K25 ["PaddingTop"]
       61 GETIMPORT                        R15 K30 [UDim.new]
       63 LOADN                            R16 0
       64 MOVE                             R17 R3
       65 CALL                             R15 2 1
       66 SETTABLEKS                       R15 R14 K26 ["PaddingRight"]
       68 CALL                             R12 2 1
       69 SETTABLEKS                       R12 R11 K18 ["RootPadding"]
       71 GETUPVAL                         R12 1
       72 GETTABLEKS                       R12 R12 K9 ["createElement"]
       74 LOADK                            R13 K31 ["UIListLayout"]
       75 NEWTABLE                         R14 8 0
       77 GETIMPORT                        R15 K35 [Enum.SortOrder.LayoutOrder]
       79 SETTABLEKS                       R15 R14 K33 ["SortOrder"]
       81 GETIMPORT                        R15 K38 [Enum.FillDirection.Vertical]
       83 SETTABLEKS                       R15 R14 K36 ["FillDirection"]
       85 GETIMPORT                        R15 K30 [UDim.new]
       87 LOADN                            R16 0
       88 MOVE                             R17 R4
       89 CALL                             R15 2 1
       90 SETTABLEKS                       R15 R14 K4 ["Padding"]
       92 GETIMPORT                        R15 K41 [Enum.HorizontalAlignment.Left]
       94 SETTABLEKS                       R15 R14 K39 ["HorizontalAlignment"]
       96 GETUPVAL                         R15 1
       97 GETTABLEKS                       R15 R15 K42 ["Change"]
       99 GETTABLEKS                       R15 R15 K43 ["AbsoluteContentSize"]
      101 JUMPIFNOT                        R7 ; [+4]
      102 NEWCLOSURE                       R16 P0
      103 CAPTURE                          VAL R7
      104 CAPTURE                          VAL R3
      105 JUMP                             ; [+1]
      106 LOADNIL                          R16
      107 SETTABLE                         R16 R14 R15
      108 CALL                             R12 2 1
      109 SETTABLEKS                       R12 R11 K19 ["Layout"]
      111 GETUPVAL                         R12 1
      112 GETTABLEKS                       R12 R12 K9 ["createElement"]
      114 LOADK                            R13 K44 ["ImageLabel"]
      115 DUPTABLE                         R14 K48 [{["Image"] = "rbxasset://textures/LoginPage/RobloxStudioLockupLoginPage.png", ["Size"], ["BackgroundTransparency"] = 1, ["ScaleType"], ["LayoutOrder"] = 1}]
      116 GETIMPORT                        R15 K51 [UDim2.fromOffset]
      118 LOADN                            R16 250
      119 LOADN                            R17 27
      120 CALL                             R15 2 1
      121 SETTABLEKS                       R15 R14 K12 ["Size"]
      123 GETIMPORT                        R15 K53 [Enum.ScaleType.Fit]
      125 SETTABLEKS                       R15 R14 K47 ["ScaleType"]
      127 CALL                             R12 2 1
      128 SETTABLEKS                       R12 R11 K20 ["StudioLogo"]
      130 GETUPVAL                         R12 4
      131 MOVE                             R13 R1
      132 MOVE                             R14 R2
      133 LOADN                            R15 0
      134 MOVE                             R16 R4
      135 MOVE                             R17 R5
      136 GETIMPORT                        R18 K55 [Vector2.new]
      138 LOADN                            R19 0
      139 LOADN                            R20 0
      140 CALL                             R18 2 1
      141 GETIMPORT                        R19 K51 [UDim2.fromOffset]
      143 LOADN                            R20 0
      144 LOADN                            R21 0
      145 CALL                             R19 2 1
      146 MOVE                             R20 R6
      147 GETTABLEKS                       R21 R0 K56 ["LoginPluginBridge"]
      149 LOADN                            R22 2
      150 CALL                             R12 10 1
      151 SETTABLEKS                       R12 R11 K21 ["SignInPrompt"]
      153 CALL                             R8 3 -1
      154 RETURN                           R8 -1
      155 GETUPVAL                         R7 1
      156 GETTABLEKS                       R7 R7 K9 ["createElement"]
      158 LOADK                            R8 K10 ["Frame"]
      159 DUPTABLE                         R9 K17 [{["Position"], ["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
      160 GETTABLEKS                       R10 R0 K11 ["Position"]
      162 SETTABLEKS                       R10 R9 K11 ["Position"]
      164 GETTABLEKS                       R10 R0 K12 ["Size"]
      166 SETTABLEKS                       R10 R9 K12 ["Size"]
      168 DUPTABLE                         R10 K58 [{"StudioLogo", "SignInPrompt", "TermsPrivacy"}]
      169 GETUPVAL                         R11 1
      170 GETTABLEKS                       R11 R11 K9 ["createElement"]
      172 LOADK                            R12 K44 ["ImageLabel"]
      173 DUPTABLE                         R13 K59 [{["Image"] = "rbxasset://textures/LoginPage/RobloxStudioLockupLoginPage.png", ["Size"], ["Position"], ["BackgroundTransparency"] = 1, ["ScaleType"]}]
      174 GETIMPORT                        R14 K51 [UDim2.fromOffset]
      176 LOADN                            R15 250
      177 LOADN                            R16 27
      178 CALL                             R14 2 1
      179 SETTABLEKS                       R14 R13 K12 ["Size"]
      181 GETIMPORT                        R14 K51 [UDim2.fromOffset]
      183 MOVE                             R15 R3
      184 MOVE                             R16 R3
      185 CALL                             R14 2 1
      186 SETTABLEKS                       R14 R13 K11 ["Position"]
      188 GETIMPORT                        R14 K53 [Enum.ScaleType.Fit]
      190 SETTABLEKS                       R14 R13 K47 ["ScaleType"]
      192 CALL                             R11 2 1
      193 SETTABLEKS                       R11 R10 K20 ["StudioLogo"]
      195 GETUPVAL                         R11 4
      196 MOVE                             R12 R1
      197 MOVE                             R13 R2
      198 MOVE                             R14 R3
      199 MOVE                             R15 R4
      200 MOVE                             R16 R5
      201 GETIMPORT                        R17 K55 [Vector2.new]
      203 LOADN                            R18 0
      204 LOADK                            R19 K60 [0.5]
      205 CALL                             R17 2 1
      206 GETIMPORT                        R18 K61 [UDim2.new]
      208 LOADN                            R19 0
      209 LOADN                            R20 0
      210 LOADK                            R21 K60 [0.5]
      211 LOADN                            R22 0
      212 CALL                             R18 4 1
      213 MOVE                             R19 R6
      214 GETTABLEKS                       R20 R0 K56 ["LoginPluginBridge"]
      216 CALL                             R11 9 1
      217 SETTABLEKS                       R11 R10 K21 ["SignInPrompt"]
      219 GETUPVAL                         R11 1
      220 GETTABLEKS                       R11 R11 K9 ["createElement"]
      222 GETUPVAL                         R12 5
      223 DUPTABLE                         R13 K64 [{["layout"] = "webPanelBottom"}]
      224 CALL                             R11 2 1
      225 SETTABLEKS                       R11 R10 K57 ["TermsPrivacy"]
      227 CALL                             R7 3 -1
      228 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["LoginPage"]
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
       21 GETTABLEKS                       R3 R2 K9 ["Hooks"]
       23 GETTABLEKS                       R3 R3 K10 ["useTokens"]
       25 GETTABLEKS                       R4 R2 K11 ["Icon"]
       27 GETTABLEKS                       R5 R2 K12 ["Enums"]
       29 GETTABLEKS                       R5 R5 K13 ["IconSize"]
       31 GETTABLEKS                       R6 R2 K14 ["Text"]
       33 GETTABLEKS                       R7 R2 K15 ["View"]
       35 GETIMPORT                        R8 K5 [require]
       37 GETTABLEKS                       R9 R0 K6 ["Packages"]
       39 GETTABLEKS                       R9 R9 K16 ["StudioFoundation"]
       41 CALL                             R8 1 1
       42 GETTABLEKS                       R9 R8 K17 ["Contexts"]
       44 GETTABLEKS                       R9 R9 K18 ["Localization"]
       46 GETIMPORT                        R10 K5 [require]
       48 GETIMPORT                        R11 K1 [script]
       50 GETTABLEKS                       R11 R11 K19 ["Parent"]
       52 GETTABLEKS                       R11 R11 K20 ["TermsPrivacyLinks"]
       54 CALL                             R10 1 1
       55 GETIMPORT                        R11 K5 [require]
       57 GETTABLEKS                       R12 R0 K21 ["Src"]
       59 GETTABLEKS                       R12 R12 K9 ["Hooks"]
       61 GETTABLEKS                       R12 R12 K22 ["useLinkInteractions"]
       63 CALL                             R11 1 1
       64 GETIMPORT                        R12 K5 [require]
       66 GETTABLEKS                       R13 R0 K21 ["Src"]
       68 GETTABLEKS                       R13 R13 K23 ["Util"]
       70 GETTABLEKS                       R13 R13 K24 ["Analytics"]
       72 CALL                             R12 1 1
       73 GETIMPORT                        R13 K27 [Font.new]
       75 LOADK                            R14 K28 ["rbxasset://fonts/families/BuilderSans.json"]
       76 GETIMPORT                        R15 K32 [Enum.FontWeight.SemiBold]
       78 CALL                             R13 2 1
       79 DUPCLOSURE                       R14 K33 [PROTO_8]
       80 CAPTURE                          VAL R12
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R5
       84 CAPTURE                          VAL R13
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R6
       87 DUPCLOSURE                       R15 K34 [PROTO_10]
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R11
       92 CAPTURE                          VAL R14
       93 CAPTURE                          VAL R10
       94 RETURN                           R15 1
