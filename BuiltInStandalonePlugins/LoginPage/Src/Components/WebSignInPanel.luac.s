PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K7 [{"Image", "ImageContent", "Size", "ScaleType", "Position", "LayoutOrder"}]
        5 GETTABLEKS                       R5 R0 K1 ["Image"]
        7 SETTABLEKS                       R5 R4 K1 ["Image"]
        9 GETTABLEKS                       R5 R0 K2 ["ImageContent"]
       11 SETTABLEKS                       R5 R4 K2 ["ImageContent"]
       13 GETIMPORT                        R5 K10 [UDim2.fromOffset]
       15 LOADN                            R6 250
       16 LOADN                            R7 27
       17 CALL                             R5 2 1
       18 SETTABLEKS                       R5 R4 K3 ["Size"]
       20 GETTABLEKS                       R5 R0 K4 ["ScaleType"]
       22 SETTABLEKS                       R5 R4 K4 ["ScaleType"]
       24 GETTABLEKS                       R5 R1 K5 ["Position"]
       26 SETTABLEKS                       R5 R4 K5 ["Position"]
       28 GETTABLEKS                       R5 R1 K6 ["LayoutOrder"]
       30 SETTABLEKS                       R5 R4 K6 ["LayoutOrder"]
       32 CALL                             R2 2 -1
       33 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 LOADK                            R2 K1 ["ImageLabel"]
        4 DUPTABLE                         R3 K9 [{["Image"], ["Size"], ["BackgroundTransparency"] = 1, ["ScaleType"], ["Position"], ["LayoutOrder"]}]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K10 ["STUDIO_LOCKUP_IMAGE"]
        8 SETTABLEKS                       R4 R3 K2 ["Image"]
       10 GETIMPORT                        R4 K13 [UDim2.fromOffset]
       12 LOADN                            R5 250
       13 LOADN                            R6 27
       14 CALL                             R4 2 1
       15 SETTABLEKS                       R4 R3 K3 ["Size"]
       17 GETIMPORT                        R4 K16 [Enum.ScaleType.Fit]
       19 SETTABLEKS                       R4 R3 K6 ["ScaleType"]
       21 GETTABLEKS                       R4 R0 K7 ["Position"]
       23 SETTABLEKS                       R4 R3 K7 ["Position"]
       25 GETTABLEKS                       R4 R0 K8 ["LayoutOrder"]
       27 SETTABLEKS                       R4 R3 K8 ["LayoutOrder"]
       29 CALL                             R1 2 -1
       30 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["BeginLoginPageFlowAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["OpenAuthorizationUrlAsync"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
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

PROTO_5:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["BeginLoginPageFlowAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["OpenSignUpInExternalBrowserAsync"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_10:
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
      180 DUPTABLE                         R21 K67 [{["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 1, ["Text"], ["TextColor3"], ["Font"], ["FontFace"], ["TextSize"], ["TextXAlignment"], ["LayoutOrder"] = 2}]
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
      195 LOADK                            R25 K68 ["SignInUpsell"]
      196 NAMECALL                         R22 R1 K54 ["getText"]
      198 CALL                             R22 3 1
      199 SETTABLEKS                       R22 R21 K47 ["Text"]
      201 GETTABLEKS                       R22 R0 K55 ["DarkMode"]
      203 GETTABLEKS                       R22 R22 K56 ["Content"]
      205 GETTABLEKS                       R22 R22 K69 ["Default"]
      207 GETTABLEKS                       R22 R22 K58 ["Color3"]
      209 SETTABLEKS                       R22 R21 K48 ["TextColor3"]
      211 GETUPVAL                         R23 2
      212 JUMPIFNOT                        R23 ; [+2]
      213 LOADNIL                          R22
      214 JUMP                             ; [+6]
      215 GETTABLEKS                       R22 R0 K61 ["Typography"]
      217 GETTABLEKS                       R22 R22 K70 ["BodyLarge"]
      219 GETTABLEKS                       R22 R22 K49 ["Font"]
      221 SETTABLEKS                       R22 R21 K49 ["Font"]
      223 GETUPVAL                         R23 2
      224 JUMPIFNOT                        R23 ; [+9]
      225 GETUPVAL                         R22 3
      226 GETTABLEKS                       R23 R0 K61 ["Typography"]
      228 GETTABLEKS                       R23 R23 K70 ["BodyLarge"]
      230 GETTABLEKS                       R23 R23 K49 ["Font"]
      232 CALL                             R22 1 1
      233 JUMP                             ; [+1]
      234 LOADNIL                          R22
      235 SETTABLEKS                       R22 R21 K65 ["FontFace"]
      237 GETTABLEKS                       R22 R0 K61 ["Typography"]
      239 GETTABLEKS                       R22 R22 K70 ["BodyLarge"]
      241 GETTABLEKS                       R22 R22 K63 ["FontSize"]
      243 SETTABLEKS                       R22 R21 K50 ["TextSize"]
      245 GETIMPORT                        R22 K64 [Enum.TextXAlignment.Left]
      247 SETTABLEKS                       R22 R21 K51 ["TextXAlignment"]
      249 CALL                             R19 2 1
      250 SETTABLEKS                       R19 R18 K42 ["Body"]
      252 CALL                             R15 3 1
      253 SETTABLEKS                       R15 R14 K20 ["HeadingBody"]
      255 GETUPVAL                         R15 1
      256 GETTABLEKS                       R15 R15 K0 ["createElement"]
      258 LOADK                            R16 K1 ["Frame"]
      259 DUPTABLE                         R17 K71 [{["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["LayoutOrder"] = 2}]
      260 GETIMPORT                        R18 K14 [UDim2.new]
      262 LOADN                            R19 1
      263 LOADN                            R20 0
      264 LOADN                            R21 0
      265 LOADN                            R22 0
      266 CALL                             R18 4 1
      267 SETTABLEKS                       R18 R17 K2 ["Size"]
      269 GETIMPORT                        R18 K17 [Enum.AutomaticSize.Y]
      271 SETTABLEKS                       R18 R17 K3 ["AutomaticSize"]
      273 DUPTABLE                         R18 K75 [{"FirstStepLayout", "SignInButton", "CreateAccountRow"}]
      274 GETUPVAL                         R19 1
      275 GETTABLEKS                       R19 R19 K0 ["createElement"]
      277 LOADK                            R20 K23 ["UIListLayout"]
      278 DUPTABLE                         R21 K27 [{"SortOrder", "FillDirection", "HorizontalAlignment", "Padding"}]
      279 GETIMPORT                        R22 K28 [Enum.SortOrder.LayoutOrder]
      281 SETTABLEKS                       R22 R21 K24 ["SortOrder"]
      283 GETIMPORT                        R22 K30 [Enum.FillDirection.Vertical]
      285 SETTABLEKS                       R22 R21 K25 ["FillDirection"]
      287 GETIMPORT                        R22 K77 [Enum.HorizontalAlignment.Center]
      289 SETTABLEKS                       R22 R21 K26 ["HorizontalAlignment"]
      291 GETIMPORT                        R22 K34 [UDim.new]
      293 LOADN                            R23 0
      294 MOVE                             R24 R4
      295 CALL                             R22 2 1
      296 SETTABLEKS                       R22 R21 K19 ["Padding"]
      298 CALL                             R19 2 1
      299 SETTABLEKS                       R19 R18 K72 ["FirstStepLayout"]
      301 GETUPVAL                         R19 1
      302 GETTABLEKS                       R19 R19 K0 ["createElement"]
      304 LOADK                            R20 K78 ["TextButton"]
      305 NEWTABLE                         R21 8 0
      307 GETIMPORT                        R22 K14 [UDim2.new]
      309 LOADN                            R23 1
      310 LOADN                            R24 0
      311 LOADN                            R25 0
      312 GETTABLEKS                       R26 R0 K2 ["Size"]
      314 GETTABLEKS                       R26 R26 K79 ["Size_1000"]
      316 CALL                             R22 4 1
      317 SETTABLEKS                       R22 R21 K2 ["Size"]
      319 GETTABLEKS                       R22 R0 K55 ["DarkMode"]
      321 GETTABLEKS                       R22 R22 K80 ["ActionEmphasis"]
      323 GETTABLEKS                       R22 R22 K81 ["Background"]
      325 GETTABLEKS                       R22 R22 K58 ["Color3"]
      327 SETTABLEKS                       R22 R21 K82 ["BackgroundColor3"]
      329 GETTABLEKS                       R22 R0 K55 ["DarkMode"]
      331 GETTABLEKS                       R22 R22 K80 ["ActionEmphasis"]
      333 GETTABLEKS                       R22 R22 K81 ["Background"]
      335 GETTABLEKS                       R22 R22 K83 ["Transparency"]
      337 SETTABLEKS                       R22 R21 K7 ["BackgroundTransparency"]
      339 LOADK                            R22 K84 [""]
      340 SETTABLEKS                       R22 R21 K47 ["Text"]
      342 LOADB                            R22 1
      343 SETTABLEKS                       R22 R21 K85 ["AutoButtonColor"]
      345 LOADN                            R22 1
      346 SETTABLEKS                       R22 R21 K6 ["LayoutOrder"]
      348 GETUPVAL                         R22 1
      349 GETTABLEKS                       R22 R22 K86 ["Event"]
      351 GETTABLEKS                       R22 R22 K87 ["Activated"]
      353 SETTABLE                         R10 R21 R22
      354 DUPTABLE                         R22 K92 [{"Corner", "ButtonLayout", "ButtonIcon", "ButtonText"}]
      355 GETUPVAL                         R23 1
      356 GETTABLEKS                       R23 R23 K0 ["createElement"]
      358 LOADK                            R24 K93 ["UICorner"]
      359 DUPTABLE                         R25 K95 [{"CornerRadius"}]
      360 GETIMPORT                        R26 K34 [UDim.new]
      362 LOADN                            R27 0
      363 GETTABLEKS                       R28 R0 K96 ["Radius"]
      365 GETTABLEKS                       R28 R28 K97 ["Medium"]
      367 CALL                             R26 2 1
      368 SETTABLEKS                       R26 R25 K94 ["CornerRadius"]
      370 CALL                             R23 2 1
      371 SETTABLEKS                       R23 R22 K88 ["Corner"]
      373 GETUPVAL                         R23 1
      374 GETTABLEKS                       R23 R23 K0 ["createElement"]
      376 LOADK                            R24 K23 ["UIListLayout"]
      377 DUPTABLE                         R25 K99 [{"SortOrder", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
      378 GETIMPORT                        R26 K28 [Enum.SortOrder.LayoutOrder]
      380 SETTABLEKS                       R26 R25 K24 ["SortOrder"]
      382 GETIMPORT                        R26 K101 [Enum.FillDirection.Horizontal]
      384 SETTABLEKS                       R26 R25 K25 ["FillDirection"]
      386 GETIMPORT                        R26 K77 [Enum.HorizontalAlignment.Center]
      388 SETTABLEKS                       R26 R25 K26 ["HorizontalAlignment"]
      390 GETIMPORT                        R26 K102 [Enum.VerticalAlignment.Center]
      392 SETTABLEKS                       R26 R25 K98 ["VerticalAlignment"]
      394 GETIMPORT                        R26 K34 [UDim.new]
      396 LOADN                            R27 0
      397 GETTABLEKS                       R28 R0 K19 ["Padding"]
      399 GETTABLEKS                       R28 R28 K103 ["Small"]
      401 CALL                             R26 2 1
      402 SETTABLEKS                       R26 R25 K19 ["Padding"]
      404 CALL                             R23 2 1
      405 SETTABLEKS                       R23 R22 K89 ["ButtonLayout"]
      407 GETUPVAL                         R23 1
      408 GETTABLEKS                       R23 R23 K0 ["createElement"]
      410 GETUPVAL                         R24 4
      411 DUPTABLE                         R25 K108 [{["name"] = "arrow-up-right-from-square", ["style"], ["size"], ["LayoutOrder"] = 1}]
      412 GETTABLEKS                       R26 R0 K55 ["DarkMode"]
      414 GETTABLEKS                       R26 R26 K80 ["ActionEmphasis"]
      416 GETTABLEKS                       R26 R26 K109 ["Foreground"]
      418 SETTABLEKS                       R26 R25 K106 ["style"]
      420 GETUPVAL                         R26 5
      421 GETTABLEKS                       R26 R26 K97 ["Medium"]
      423 SETTABLEKS                       R26 R25 K107 ["size"]
      425 CALL                             R23 2 1
      426 SETTABLEKS                       R23 R22 K90 ["ButtonIcon"]
      428 GETUPVAL                         R23 1
      429 GETTABLEKS                       R23 R23 K0 ["createElement"]
      431 LOADK                            R24 K46 ["TextLabel"]
      432 DUPTABLE                         R25 K110 [{["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 1, ["Text"], ["TextColor3"], ["FontFace"], ["TextSize"], ["LayoutOrder"] = 2}]
      433 GETIMPORT                        R26 K112 [UDim2.fromOffset]
      435 LOADN                            R27 0
      436 LOADN                            R28 0
      437 CALL                             R26 2 1
      438 SETTABLEKS                       R26 R25 K2 ["Size"]
      440 GETIMPORT                        R26 K114 [Enum.AutomaticSize.XY]
      442 SETTABLEKS                       R26 R25 K3 ["AutomaticSize"]
      444 LOADK                            R28 K115 ["Button"]
      445 LOADK                            R29 K53 ["SignIn"]
      446 NAMECALL                         R26 R1 K54 ["getText"]
      448 CALL                             R26 3 1
      449 SETTABLEKS                       R26 R25 K47 ["Text"]
      451 GETTABLEKS                       R26 R0 K55 ["DarkMode"]
      453 GETTABLEKS                       R26 R26 K80 ["ActionEmphasis"]
      455 GETTABLEKS                       R26 R26 K109 ["Foreground"]
      457 GETTABLEKS                       R26 R26 K58 ["Color3"]
      459 SETTABLEKS                       R26 R25 K48 ["TextColor3"]
      461 GETUPVAL                         R26 6
      462 SETTABLEKS                       R26 R25 K65 ["FontFace"]
      464 GETTABLEKS                       R26 R0 K61 ["Typography"]
      466 GETTABLEKS                       R26 R26 K116 ["LabelMedium"]
      468 GETTABLEKS                       R26 R26 K63 ["FontSize"]
      470 SETTABLEKS                       R26 R25 K50 ["TextSize"]
      472 CALL                             R23 2 1
      473 SETTABLEKS                       R23 R22 K91 ["ButtonText"]
      475 CALL                             R19 3 1
      476 SETTABLEKS                       R19 R18 K73 ["SignInButton"]
      478 GETUPVAL                         R19 1
      479 GETTABLEKS                       R19 R19 K0 ["createElement"]
      481 GETUPVAL                         R20 7
      482 DUPTABLE                         R21 K119 [{["tag"] = "row align-y-center gap-xsmall auto-x", ["Size"], ["LayoutOrder"] = 2}]
      483 GETIMPORT                        R22 K112 [UDim2.fromOffset]
      485 LOADN                            R23 0
      486 GETTABLEKS                       R24 R0 K2 ["Size"]
      488 GETTABLEKS                       R24 R24 K79 ["Size_1000"]
      490 CALL                             R22 2 1
      491 SETTABLEKS                       R22 R21 K2 ["Size"]
      493 DUPTABLE                         R22 K122 [{"Prompt", "CreateOne"}]
      494 GETUPVAL                         R23 1
      495 GETTABLEKS                       R23 R23 K0 ["createElement"]
      497 GETUPVAL                         R24 8
      498 DUPTABLE                         R25 K125 [{["tag"] = "auto-xy text-label-medium", ["Text"], ["fontStyle"], ["LayoutOrder"] = 1}]
      499 LOADK                            R28 K126 ["Label"]
      500 LOADK                            R29 K127 ["SignUp1"]
      501 NAMECALL                         R26 R1 K54 ["getText"]
      503 CALL                             R26 3 1
      504 SETTABLEKS                       R26 R25 K47 ["Text"]
      506 DUPTABLE                         R26 K128 [{"Font"}]
      507 GETUPVAL                         R27 6
      508 SETTABLEKS                       R27 R26 K49 ["Font"]
      510 SETTABLEKS                       R26 R25 K124 ["fontStyle"]
      512 CALL                             R23 2 1
      513 SETTABLEKS                       R23 R22 K120 ["Prompt"]
      515 GETUPVAL                         R23 1
      516 GETTABLEKS                       R23 R23 K0 ["createElement"]
      518 GETUPVAL                         R24 8
      519 DUPTABLE                         R25 K134 [{["tag"] = "auto-xy text-label-medium", ["Text"], ["RichText"] = True, ["fontStyle"], ["onActivated"], ["onStateChanged"], ["stateLayer"], ["LayoutOrder"] = 2}]
      520 LOADK                            R27 K135 ["<u>"]
      521 LOADK                            R32 K126 ["Label"]
      522 LOADK                            R33 K136 ["SignUp2"]
      523 NAMECALL                         R30 R1 K54 ["getText"]
      525 CALL                             R30 3 1
      526 MOVE                             R28 R30
      527 LOADK                            R29 K137 ["</u>"]
      528 CONCAT                           R26 R27 R29
      529 SETTABLEKS                       R26 R25 K47 ["Text"]
      531 DUPTABLE                         R26 K128 [{"Font"}]
      532 GETUPVAL                         R27 6
      533 SETTABLEKS                       R27 R26 K49 ["Font"]
      535 SETTABLEKS                       R26 R25 K124 ["fontStyle"]
      537 NEWCLOSURE                       R26 P1
      538 CAPTURE                          VAL R8
      539 CAPTURE                          UPVAL U0
      540 SETTABLEKS                       R26 R25 K131 ["onActivated"]
      542 GETTABLEKS                       R26 R7 K132 ["onStateChanged"]
      544 SETTABLEKS                       R26 R25 K132 ["onStateChanged"]
      546 GETTABLEKS                       R26 R7 K133 ["stateLayer"]
      548 SETTABLEKS                       R26 R25 K133 ["stateLayer"]
      550 CALL                             R23 2 1
      551 SETTABLEKS                       R23 R22 K121 ["CreateOne"]
      553 CALL                             R19 3 1
      554 SETTABLEKS                       R19 R18 K74 ["CreateAccountRow"]
      556 CALL                             R15 3 1
      557 SETTABLEKS                       R15 R14 K21 ["FirstStep"]
      559 CALL                             R11 3 -1
      560 RETURN                           R11 -1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R4 R0 K0 ["AbsoluteContentSize"]
        4 GETTABLEKS                       R4 R4 K1 ["Y"]
        6 ADD                              R2 R3 R4
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_12:
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
       23 GETUPVAL                         R7 4
       24 GETTABLEKS                       R7 R7 K7 ["useImage"]
       26 GETUPVAL                         R8 4
       27 GETTABLEKS                       R8 R8 K8 ["STUDIO_LOCKUP_IMAGE"]
       29 GETIMPORT                        R9 K12 [Enum.ScaleType.Fit]
       31 CALL                             R7 2 1
       32 GETTABLEKS                       R8 R0 K13 ["isNarrow"]
       34 JUMPIFNOT                        R8 ; [+125]
       35 GETTABLEKS                       R8 R0 K14 ["onMinHeightChanged"]
       37 GETUPVAL                         R9 1
       38 GETTABLEKS                       R9 R9 K15 ["createElement"]
       40 LOADK                            R10 K16 ["Frame"]
       41 DUPTABLE                         R11 K23 [{["Position"], ["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
       42 GETTABLEKS                       R12 R0 K17 ["Position"]
       44 SETTABLEKS                       R12 R11 K17 ["Position"]
       46 GETTABLEKS                       R12 R0 K18 ["Size"]
       48 SETTABLEKS                       R12 R11 K18 ["Size"]
       50 DUPTABLE                         R12 K28 [{"RootPadding", "Layout", "StudioLogo", "SignInPrompt"}]
       51 GETUPVAL                         R13 1
       52 GETTABLEKS                       R13 R13 K15 ["createElement"]
       54 LOADK                            R14 K29 ["UIPadding"]
       55 DUPTABLE                         R15 K33 [{"PaddingLeft", "PaddingTop", "PaddingRight"}]
       56 GETIMPORT                        R16 K36 [UDim.new]
       58 LOADN                            R17 0
       59 MOVE                             R18 R3
       60 CALL                             R16 2 1
       61 SETTABLEKS                       R16 R15 K30 ["PaddingLeft"]
       63 GETIMPORT                        R16 K36 [UDim.new]
       65 LOADN                            R17 0
       66 MOVE                             R18 R3
       67 CALL                             R16 2 1
       68 SETTABLEKS                       R16 R15 K31 ["PaddingTop"]
       70 GETIMPORT                        R16 K36 [UDim.new]
       72 LOADN                            R17 0
       73 MOVE                             R18 R3
       74 CALL                             R16 2 1
       75 SETTABLEKS                       R16 R15 K32 ["PaddingRight"]
       77 CALL                             R13 2 1
       78 SETTABLEKS                       R13 R12 K24 ["RootPadding"]
       80 GETUPVAL                         R13 1
       81 GETTABLEKS                       R13 R13 K15 ["createElement"]
       83 LOADK                            R14 K37 ["UIListLayout"]
       84 NEWTABLE                         R15 8 0
       86 GETIMPORT                        R16 K40 [Enum.SortOrder.LayoutOrder]
       88 SETTABLEKS                       R16 R15 K38 ["SortOrder"]
       90 GETIMPORT                        R16 K43 [Enum.FillDirection.Vertical]
       92 SETTABLEKS                       R16 R15 K41 ["FillDirection"]
       94 GETIMPORT                        R16 K36 [UDim.new]
       96 LOADN                            R17 0
       97 MOVE                             R18 R4
       98 CALL                             R16 2 1
       99 SETTABLEKS                       R16 R15 K4 ["Padding"]
      101 GETIMPORT                        R16 K46 [Enum.HorizontalAlignment.Left]
      103 SETTABLEKS                       R16 R15 K44 ["HorizontalAlignment"]
      105 GETUPVAL                         R16 1
      106 GETTABLEKS                       R16 R16 K47 ["Change"]
      108 GETTABLEKS                       R16 R16 K48 ["AbsoluteContentSize"]
      110 JUMPIFNOT                        R8 ; [+4]
      111 NEWCLOSURE                       R17 P0
      112 CAPTURE                          VAL R8
      113 CAPTURE                          VAL R3
      114 JUMP                             ; [+1]
      115 LOADNIL                          R17
      116 SETTABLE                         R17 R15 R16
      117 CALL                             R13 2 1
      118 SETTABLEKS                       R13 R12 K25 ["Layout"]
      120 GETUPVAL                         R14 5
      121 GETTABLEKS                       R14 R14 K49 ["getFFlagLoginPageEnableBlankImageFallback"]
      123 CALL                             R14 0 1
      124 JUMPIFNOT                        R14 ; [+5]
      125 GETUPVAL                         R13 6
      126 MOVE                             R14 R7
      127 DUPTABLE                         R15 K50 [{["LayoutOrder"] = 1}]
      128 CALL                             R13 2 1
      129 JUMP                             ; [+3]
      130 GETUPVAL                         R13 7
      131 DUPTABLE                         R14 K50 [{["LayoutOrder"] = 1}]
      132 CALL                             R13 1 1
      133 SETTABLEKS                       R13 R12 K26 ["StudioLogo"]
      135 GETUPVAL                         R13 8
      136 MOVE                             R14 R1
      137 MOVE                             R15 R2
      138 LOADN                            R16 0
      139 MOVE                             R17 R4
      140 MOVE                             R18 R5
      141 GETIMPORT                        R19 K52 [Vector2.new]
      143 LOADN                            R20 0
      144 LOADN                            R21 0
      145 CALL                             R19 2 1
      146 GETIMPORT                        R20 K55 [UDim2.fromOffset]
      148 LOADN                            R21 0
      149 LOADN                            R22 0
      150 CALL                             R20 2 1
      151 MOVE                             R21 R6
      152 GETTABLEKS                       R22 R0 K56 ["LoginPluginBridge"]
      154 LOADN                            R23 2
      155 CALL                             R13 10 1
      156 SETTABLEKS                       R13 R12 K27 ["SignInPrompt"]
      158 CALL                             R9 3 -1
      159 RETURN                           R9 -1
      160 GETUPVAL                         R8 1
      161 GETTABLEKS                       R8 R8 K15 ["createElement"]
      163 LOADK                            R9 K16 ["Frame"]
      164 DUPTABLE                         R10 K23 [{["Position"], ["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
      165 GETTABLEKS                       R11 R0 K17 ["Position"]
      167 SETTABLEKS                       R11 R10 K17 ["Position"]
      169 GETTABLEKS                       R11 R0 K18 ["Size"]
      171 SETTABLEKS                       R11 R10 K18 ["Size"]
      173 DUPTABLE                         R11 K58 [{"StudioLogo", "SignInPrompt", "TermsPrivacy"}]
      174 GETUPVAL                         R13 5
      175 GETTABLEKS                       R13 R13 K49 ["getFFlagLoginPageEnableBlankImageFallback"]
      177 CALL                             R13 0 1
      178 JUMPIFNOT                        R13 ; [+12]
      179 GETUPVAL                         R12 6
      180 MOVE                             R13 R7
      181 DUPTABLE                         R14 K59 [{"Position"}]
      182 GETIMPORT                        R15 K55 [UDim2.fromOffset]
      184 MOVE                             R16 R3
      185 MOVE                             R17 R3
      186 CALL                             R15 2 1
      187 SETTABLEKS                       R15 R14 K17 ["Position"]
      189 CALL                             R12 2 1
      190 JUMP                             ; [+10]
      191 GETUPVAL                         R12 7
      192 DUPTABLE                         R13 K59 [{"Position"}]
      193 GETIMPORT                        R14 K55 [UDim2.fromOffset]
      195 MOVE                             R15 R3
      196 MOVE                             R16 R3
      197 CALL                             R14 2 1
      198 SETTABLEKS                       R14 R13 K17 ["Position"]
      200 CALL                             R12 1 1
      201 SETTABLEKS                       R12 R11 K26 ["StudioLogo"]
      203 GETUPVAL                         R12 8
      204 MOVE                             R13 R1
      205 MOVE                             R14 R2
      206 MOVE                             R15 R3
      207 MOVE                             R16 R4
      208 MOVE                             R17 R5
      209 GETIMPORT                        R18 K52 [Vector2.new]
      211 LOADN                            R19 0
      212 LOADK                            R20 K60 [0.5]
      213 CALL                             R18 2 1
      214 GETIMPORT                        R19 K61 [UDim2.new]
      216 LOADN                            R20 0
      217 LOADN                            R21 0
      218 LOADK                            R22 K60 [0.5]
      219 LOADN                            R23 0
      220 CALL                             R19 4 1
      221 MOVE                             R20 R6
      222 GETTABLEKS                       R21 R0 K56 ["LoginPluginBridge"]
      224 CALL                             R12 9 1
      225 SETTABLEKS                       R12 R11 K27 ["SignInPrompt"]
      227 GETUPVAL                         R12 1
      228 GETTABLEKS                       R12 R12 K15 ["createElement"]
      230 GETUPVAL                         R13 9
      231 DUPTABLE                         R14 K64 [{["layout"] = "webPanelBottom"}]
      232 CALL                             R12 2 1
      233 SETTABLEKS                       R12 R11 K57 ["TermsPrivacy"]
      235 CALL                             R8 3 -1
      236 RETURN                           R8 -1

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
       35 GETTABLEKS                       R8 R2 K16 ["Utility"]
       37 GETTABLEKS                       R8 R8 K17 ["Flags"]
       39 GETTABLEKS                       R8 R8 K18 ["FoundationStudioFontFaceMigration"]
       41 GETTABLEKS                       R9 R2 K16 ["Utility"]
       43 GETTABLEKS                       R9 R9 K19 ["normalizeFontFace"]
       45 GETIMPORT                        R10 K5 [require]
       47 GETTABLEKS                       R11 R0 K6 ["Packages"]
       49 GETTABLEKS                       R11 R11 K20 ["StudioFoundation"]
       51 CALL                             R10 1 1
       52 GETTABLEKS                       R11 R10 K21 ["Contexts"]
       54 GETTABLEKS                       R11 R11 K22 ["Localization"]
       56 GETIMPORT                        R12 K5 [require]
       58 GETIMPORT                        R13 K1 [script]
       60 GETTABLEKS                       R13 R13 K23 ["Parent"]
       62 GETTABLEKS                       R13 R13 K24 ["TermsPrivacyLinks"]
       64 CALL                             R12 1 1
       65 GETIMPORT                        R13 K5 [require]
       67 GETTABLEKS                       R14 R0 K25 ["Src"]
       69 GETTABLEKS                       R14 R14 K9 ["Hooks"]
       71 GETTABLEKS                       R14 R14 K26 ["useLinkInteractions"]
       73 CALL                             R13 1 1
       74 GETIMPORT                        R14 K5 [require]
       76 GETTABLEKS                       R15 R0 K25 ["Src"]
       78 GETTABLEKS                       R15 R15 K27 ["Util"]
       80 GETTABLEKS                       R15 R15 K28 ["Analytics"]
       82 CALL                             R14 1 1
       83 GETIMPORT                        R15 K5 [require]
       85 GETTABLEKS                       R16 R0 K25 ["Src"]
       87 GETTABLEKS                       R16 R16 K27 ["Util"]
       89 GETTABLEKS                       R16 R16 K29 ["LoginPageImages"]
       91 CALL                             R15 1 1
       92 GETIMPORT                        R16 K5 [require]
       94 GETTABLEKS                       R17 R0 K30 ["Bin"]
       96 GETTABLEKS                       R17 R17 K31 ["Common"]
       98 GETTABLEKS                       R17 R17 K32 ["defineLuaFlags"]
      100 CALL                             R16 1 1
      101 GETIMPORT                        R17 K35 [Font.new]
      103 LOADK                            R18 K36 ["rbxasset://fonts/families/BuilderSans.json"]
      104 GETIMPORT                        R19 K40 [Enum.FontWeight.SemiBold]
      106 CALL                             R17 2 1
      107 GETTABLEKS                       R18 R2 K41 ["Image"]
      109 DUPCLOSURE                       R19 K42 [PROTO_0]
      110 CAPTURE                          VAL R1
      111 CAPTURE                          VAL R18
      112 DUPCLOSURE                       R20 K43 [PROTO_1]
      113 CAPTURE                          VAL R1
      114 CAPTURE                          VAL R15
      115 DUPCLOSURE                       R21 K44 [PROTO_10]
      116 CAPTURE                          VAL R14
      117 CAPTURE                          VAL R1
      118 CAPTURE                          VAL R8
      119 CAPTURE                          VAL R9
      120 CAPTURE                          VAL R4
      121 CAPTURE                          VAL R5
      122 CAPTURE                          VAL R17
      123 CAPTURE                          VAL R7
      124 CAPTURE                          VAL R6
      125 DUPCLOSURE                       R22 K45 [PROTO_12]
      126 CAPTURE                          VAL R3
      127 CAPTURE                          VAL R1
      128 CAPTURE                          VAL R11
      129 CAPTURE                          VAL R13
      130 CAPTURE                          VAL R15
      131 CAPTURE                          VAL R16
      132 CAPTURE                          VAL R19
      133 CAPTURE                          VAL R20
      134 CAPTURE                          VAL R21
      135 CAPTURE                          VAL R12
      136 RETURN                           R22 1
