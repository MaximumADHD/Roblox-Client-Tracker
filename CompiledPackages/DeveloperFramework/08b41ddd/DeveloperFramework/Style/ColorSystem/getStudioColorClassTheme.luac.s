PROTO_0:
        0 NEWTABLE                         R1 64 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["BackgroundPaper"]
        5 GETUPVAL                         R6 1
        6 GETTABLEKS                       R5 R6 K1 ["Background"]
        8 GETTABLEKS                       R4 R5 K2 ["Paper"]
       10 GETTABLE                         R3 R4 R0
       11 SETTABLE                         R3 R1 R2
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K3 ["BackgroundDefault"]
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R5 R6 K1 ["Background"]
       18 GETTABLEKS                       R4 R5 K4 ["Default"]
       20 GETTABLE                         R3 R4 R0
       21 SETTABLE                         R3 R1 R2
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R2 R3 K5 ["ForegroundMain"]
       25 GETUPVAL                         R6 1
       26 GETTABLEKS                       R5 R6 K6 ["Foreground"]
       28 GETTABLEKS                       R4 R5 K7 ["Main"]
       30 GETTABLE                         R3 R4 R0
       31 SETTABLE                         R3 R1 R2
       32 GETUPVAL                         R3 0
       33 GETTABLEKS                       R2 R3 K8 ["ForegroundMuted"]
       35 GETUPVAL                         R6 1
       36 GETTABLEKS                       R5 R6 K6 ["Foreground"]
       38 GETTABLEKS                       R4 R5 K9 ["Muted"]
       40 GETTABLE                         R3 R4 R0
       41 SETTABLE                         R3 R1 R2
       42 GETUPVAL                         R3 0
       43 GETTABLEKS                       R2 R3 K10 ["ForegroundContrast"]
       45 GETUPVAL                         R6 1
       46 GETTABLEKS                       R5 R6 K6 ["Foreground"]
       48 GETTABLEKS                       R4 R5 K11 ["Contrast"]
       50 GETTABLE                         R3 R4 R0
       51 SETTABLE                         R3 R1 R2
       52 GETUPVAL                         R3 0
       53 GETTABLEKS                       R2 R3 K12 ["TextPrimary"]
       55 GETUPVAL                         R6 1
       56 GETTABLEKS                       R5 R6 K13 ["Text"]
       58 GETTABLEKS                       R4 R5 K14 ["Primary"]
       60 GETTABLE                         R3 R4 R0
       61 SETTABLE                         R3 R1 R2
       62 GETUPVAL                         R3 0
       63 GETTABLEKS                       R2 R3 K15 ["TextSecondary"]
       65 GETUPVAL                         R6 1
       66 GETTABLEKS                       R5 R6 K13 ["Text"]
       68 GETTABLEKS                       R4 R5 K16 ["Secondary"]
       70 GETTABLE                         R3 R4 R0
       71 SETTABLE                         R3 R1 R2
       72 GETUPVAL                         R3 0
       73 GETTABLEKS                       R2 R3 K17 ["TextContrast"]
       75 GETUPVAL                         R6 1
       76 GETTABLEKS                       R5 R6 K13 ["Text"]
       78 GETTABLEKS                       R4 R5 K11 ["Contrast"]
       80 GETTABLE                         R3 R4 R0
       81 SETTABLE                         R3 R1 R2
       82 GETUPVAL                         R3 0
       83 GETTABLEKS                       R2 R3 K18 ["TextLink"]
       85 GETUPVAL                         R6 1
       86 GETTABLEKS                       R5 R6 K13 ["Text"]
       88 GETTABLEKS                       R4 R5 K19 ["Link"]
       90 GETTABLE                         R3 R4 R0
       91 SETTABLE                         R3 R1 R2
       92 GETUPVAL                         R3 0
       93 GETTABLEKS                       R2 R3 K20 ["TextDisabled"]
       95 GETUPVAL                         R6 1
       96 GETTABLEKS                       R5 R6 K13 ["Text"]
       98 GETTABLEKS                       R4 R5 K21 ["Disabled"]
      100 GETTABLE                         R3 R4 R0
      101 SETTABLE                         R3 R1 R2
      102 GETUPVAL                         R3 0
      103 GETTABLEKS                       R2 R3 K22 ["TextError"]
      105 GETUPVAL                         R6 1
      106 GETTABLEKS                       R5 R6 K13 ["Text"]
      108 GETTABLEKS                       R4 R5 K23 ["Error"]
      110 GETTABLE                         R3 R4 R0
      111 SETTABLE                         R3 R1 R2
      112 GETUPVAL                         R3 0
      113 GETTABLEKS                       R2 R3 K24 ["TextSuccess"]
      115 GETUPVAL                         R6 1
      116 GETTABLEKS                       R5 R6 K13 ["Text"]
      118 GETTABLEKS                       R4 R5 K25 ["Success"]
      120 GETTABLE                         R3 R4 R0
      121 SETTABLE                         R3 R1 R2
      122 GETUPVAL                         R3 0
      123 GETTABLEKS                       R2 R3 K26 ["TextWarning"]
      125 GETUPVAL                         R6 1
      126 GETTABLEKS                       R5 R6 K13 ["Text"]
      128 GETTABLEKS                       R4 R5 K27 ["Warning"]
      130 GETTABLE                         R3 R4 R0
      131 SETTABLE                         R3 R1 R2
      132 GETUPVAL                         R3 0
      133 GETTABLEKS                       R2 R3 K28 ["ErrorMain"]
      135 GETUPVAL                         R6 1
      136 GETTABLEKS                       R5 R6 K23 ["Error"]
      138 GETTABLEKS                       R4 R5 K7 ["Main"]
      140 GETTABLE                         R3 R4 R0
      141 SETTABLE                         R3 R1 R2
      142 GETUPVAL                         R3 0
      143 GETTABLEKS                       R2 R3 K29 ["SuccessMain"]
      145 GETUPVAL                         R6 1
      146 GETTABLEKS                       R5 R6 K25 ["Success"]
      148 GETTABLEKS                       R4 R5 K7 ["Main"]
      150 GETTABLE                         R3 R4 R0
      151 SETTABLE                         R3 R1 R2
      152 GETUPVAL                         R3 0
      153 GETTABLEKS                       R2 R3 K30 ["WarningMain"]
      155 GETUPVAL                         R6 1
      156 GETTABLEKS                       R5 R6 K27 ["Warning"]
      158 GETTABLEKS                       R4 R5 K7 ["Main"]
      160 GETTABLE                         R3 R4 R0
      161 SETTABLE                         R3 R1 R2
      162 GETUPVAL                         R3 0
      163 GETTABLEKS                       R2 R3 K31 ["ActionHover"]
      165 GETUPVAL                         R6 1
      166 GETTABLEKS                       R5 R6 K32 ["Action"]
      168 GETTABLEKS                       R4 R5 K33 ["Hover"]
      170 GETTABLE                         R3 R4 R0
      171 SETTABLE                         R3 R1 R2
      172 GETUPVAL                         R3 0
      173 GETTABLEKS                       R2 R3 K34 ["ActionEnabled"]
      175 GETUPVAL                         R6 1
      176 GETTABLEKS                       R5 R6 K32 ["Action"]
      178 GETTABLEKS                       R4 R5 K35 ["Enabled"]
      180 GETTABLE                         R3 R4 R0
      181 SETTABLE                         R3 R1 R2
      182 GETUPVAL                         R3 0
      183 GETTABLEKS                       R2 R3 K36 ["ActionSelected"]
      185 GETUPVAL                         R6 1
      186 GETTABLEKS                       R5 R6 K32 ["Action"]
      188 GETTABLEKS                       R4 R5 K37 ["Selected"]
      190 GETTABLE                         R3 R4 R0
      191 SETTABLE                         R3 R1 R2
      192 GETUPVAL                         R3 0
      193 GETTABLEKS                       R2 R3 K38 ["ActionActivated"]
      195 GETUPVAL                         R6 1
      196 GETTABLEKS                       R5 R6 K32 ["Action"]
      198 GETTABLEKS                       R4 R5 K39 ["Activated"]
      200 GETTABLE                         R3 R4 R0
      201 SETTABLE                         R3 R1 R2
      202 GETUPVAL                         R3 0
      203 GETTABLEKS                       R2 R3 K40 ["ActionFocusBorder"]
      205 GETUPVAL                         R6 1
      206 GETTABLEKS                       R5 R6 K32 ["Action"]
      208 GETTABLEKS                       R4 R5 K41 ["FocusBorder"]
      210 GETTABLE                         R3 R4 R0
      211 SETTABLE                         R3 R1 R2
      212 GETUPVAL                         R3 0
      213 GETTABLEKS                       R2 R3 K42 ["PrimaryMain"]
      215 GETUPVAL                         R6 1
      216 GETTABLEKS                       R5 R6 K14 ["Primary"]
      218 GETTABLEKS                       R4 R5 K7 ["Main"]
      220 GETTABLE                         R3 R4 R0
      221 SETTABLE                         R3 R1 R2
      222 GETUPVAL                         R3 0
      223 GETTABLEKS                       R2 R3 K43 ["PrimaryStatesHoverBackground"]
      225 GETUPVAL                         R6 1
      226 GETTABLEKS                       R5 R6 K44 ["PrimaryStates"]
      228 GETTABLEKS                       R4 R5 K45 ["HoverBackground"]
      230 GETTABLE                         R3 R4 R0
      231 SETTABLE                         R3 R1 R2
      232 GETUPVAL                         R3 0
      233 GETTABLEKS                       R2 R3 K46 ["SecondaryMain"]
      235 GETUPVAL                         R6 1
      236 GETTABLEKS                       R5 R6 K16 ["Secondary"]
      238 GETTABLEKS                       R4 R5 K7 ["Main"]
      240 GETTABLE                         R3 R4 R0
      241 SETTABLE                         R3 R1 R2
      242 GETUPVAL                         R3 0
      243 GETTABLEKS                       R2 R3 K47 ["SecondaryMuted"]
      245 GETUPVAL                         R6 1
      246 GETTABLEKS                       R5 R6 K16 ["Secondary"]
      248 GETTABLEKS                       R4 R5 K9 ["Muted"]
      250 GETTABLE                         R3 R4 R0
      251 SETTABLE                         R3 R1 R2
      252 GETUPVAL                         R3 0
      253 GETTABLEKS                       R2 R3 K48 ["SecondaryContrast"]
      255 GETUPVAL                         R6 1
      256 GETTABLEKS                       R5 R6 K16 ["Secondary"]
      258 GETTABLEKS                       R4 R5 K11 ["Contrast"]
      260 GETTABLE                         R3 R4 R0
      261 SETTABLE                         R3 R1 R2
      262 GETUPVAL                         R3 0
      263 GETTABLEKS                       R2 R3 K49 ["SecondaryStatesHoverBackground"]
      265 GETUPVAL                         R6 1
      266 GETTABLEKS                       R5 R6 K50 ["SecondaryStates"]
      268 GETTABLEKS                       R4 R5 K45 ["HoverBackground"]
      270 GETTABLE                         R3 R4 R0
      271 SETTABLE                         R3 R1 R2
      272 GETUPVAL                         R3 0
      273 GETTABLEKS                       R2 R3 K51 ["SecondaryStatesHoverOutlineBorder"]
      275 GETUPVAL                         R6 1
      276 GETTABLEKS                       R5 R6 K50 ["SecondaryStates"]
      278 GETTABLEKS                       R4 R5 K52 ["HoverOutlineBorder"]
      280 GETTABLE                         R3 R4 R0
      281 SETTABLE                         R3 R1 R2
      282 GETUPVAL                         R3 0
      283 GETTABLEKS                       R2 R3 K53 ["SecondaryStatesRestingOutlineBorder"]
      285 GETUPVAL                         R6 1
      286 GETTABLEKS                       R5 R6 K50 ["SecondaryStates"]
      288 GETTABLEKS                       R4 R5 K54 ["RestingOutlineBorder"]
      290 GETTABLE                         R3 R4 R0
      291 SETTABLE                         R3 R1 R2
      292 GETUPVAL                         R3 0
      293 GETTABLEKS                       R2 R3 K55 ["AlertBackgroundDefault"]
      295 GETUPVAL                         R6 1
      296 GETTABLEKS                       R5 R6 K56 ["AlertBackground"]
      298 GETTABLEKS                       R4 R5 K4 ["Default"]
      300 GETTABLE                         R3 R4 R0
      301 SETTABLE                         R3 R1 R2
      302 GETUPVAL                         R3 0
      303 GETTABLEKS                       R2 R3 K57 ["AlertBackgroundError"]
      305 GETUPVAL                         R6 1
      306 GETTABLEKS                       R5 R6 K56 ["AlertBackground"]
      308 GETTABLEKS                       R4 R5 K23 ["Error"]
      310 GETTABLE                         R3 R4 R0
      311 SETTABLE                         R3 R1 R2
      312 GETUPVAL                         R3 0
      313 GETTABLEKS                       R2 R3 K58 ["AlertBackgroundInfo"]
      315 GETUPVAL                         R6 1
      316 GETTABLEKS                       R5 R6 K56 ["AlertBackground"]
      318 GETTABLEKS                       R4 R5 K59 ["Info"]
      320 GETTABLE                         R3 R4 R0
      321 SETTABLE                         R3 R1 R2
      322 GETUPVAL                         R3 0
      323 GETTABLEKS                       R2 R3 K60 ["AlertBackgroundSuccess"]
      325 GETUPVAL                         R6 1
      326 GETTABLEKS                       R5 R6 K56 ["AlertBackground"]
      328 GETTABLEKS                       R4 R5 K25 ["Success"]
      330 GETTABLE                         R3 R4 R0
      331 SETTABLE                         R3 R1 R2
      332 GETUPVAL                         R3 0
      333 GETTABLEKS                       R2 R3 K61 ["AlertBackgroundWarning"]
      335 GETUPVAL                         R6 1
      336 GETTABLEKS                       R5 R6 K56 ["AlertBackground"]
      338 GETTABLEKS                       R4 R5 K27 ["Warning"]
      340 GETTABLE                         R3 R4 R0
      341 SETTABLE                         R3 R1 R2
      342 GETUPVAL                         R3 0
      343 GETTABLEKS                       R2 R3 K62 ["OtherFilledInputBackground"]
      345 GETUPVAL                         R6 1
      346 GETTABLEKS                       R5 R6 K63 ["Other"]
      348 GETTABLEKS                       R4 R5 K64 ["FilledInputBackground"]
      350 GETTABLE                         R3 R4 R0
      351 SETTABLE                         R3 R1 R2
      352 GETUPVAL                         R3 0
      353 GETTABLEKS                       R2 R3 K65 ["OtherDivider"]
      355 GETUPVAL                         R6 1
      356 GETTABLEKS                       R5 R6 K63 ["Other"]
      358 GETTABLEKS                       R4 R5 K66 ["Divider"]
      360 GETTABLE                         R3 R4 R0
      361 SETTABLE                         R3 R1 R2
      362 GETUPVAL                         R3 0
      363 GETTABLEKS                       R2 R3 K67 ["ErrorText"]
      365 GETUPVAL                         R6 1
      366 GETTABLEKS                       R5 R6 K23 ["Error"]
      368 GETTABLEKS                       R4 R5 K7 ["Main"]
      370 GETTABLE                         R3 R4 R0
      371 SETTABLE                         R3 R1 R2
      372 GETUPVAL                         R3 0
      373 GETTABLEKS                       R2 R3 K68 ["LinkText"]
      375 GETUPVAL                         R6 1
      376 GETTABLEKS                       R5 R6 K13 ["Text"]
      378 GETTABLEKS                       R4 R5 K19 ["Link"]
      380 GETTABLE                         R3 R4 R0
      381 SETTABLE                         R3 R1 R2
      382 GETUPVAL                         R3 0
      383 GETTABLEKS                       R2 R3 K69 ["LinkTextHover"]
      385 GETUPVAL                         R6 1
      386 GETTABLEKS                       R5 R6 K13 ["Text"]
      388 GETTABLEKS                       R4 R5 K70 ["LinkHover"]
      390 GETTABLE                         R3 R4 R0
      391 SETTABLE                         R3 R1 R2
      392 GETUPVAL                         R3 0
      393 GETTABLEKS                       R2 R3 K71 ["WarningText"]
      395 GETUPVAL                         R6 1
      396 GETTABLEKS                       R5 R6 K27 ["Warning"]
      398 GETTABLEKS                       R4 R5 K7 ["Main"]
      400 GETTABLE                         R3 R4 R0
      401 SETTABLE                         R3 R1 R2
      402 GETUPVAL                         R3 0
      403 GETTABLEKS                       R2 R3 K72 ["MainText"]
      405 GETUPVAL                         R6 1
      406 GETTABLEKS                       R5 R6 K13 ["Text"]
      408 GETTABLEKS                       R4 R5 K14 ["Primary"]
      410 GETTABLE                         R3 R4 R0
      411 SETTABLE                         R3 R1 R2
      412 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["Style"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R4 R0 K2 ["Style"]
       13 GETTABLEKS                       R3 R4 K7 ["ColorSystem"]
       15 GETTABLEKS                       R2 R3 K8 ["StudioColorClasses"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K6 [require]
       20 GETTABLEKS                       R4 R0 K2 ["Style"]
       22 GETTABLEKS                       R3 R4 K9 ["StyleKey"]
       24 CALL                             R2 1 1
       25 DUPCLOSURE                       R3 K10 [PROTO_0]
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R1
       28 RETURN                           R3 1
