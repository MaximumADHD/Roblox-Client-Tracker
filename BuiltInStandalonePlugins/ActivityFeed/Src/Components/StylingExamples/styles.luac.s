MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Framework"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K7 ["Styling"]
       20 GETTABLEKS                       R2 R2 K8 ["createStyleRule"]
       22 GETIMPORT                        R3 K11 [UDim2.new]
       24 LOADN                            R4 0
       25 LOADN                            R5 200
       26 LOADN                            R6 0
       27 LOADN                            R7 50
       28 CALL                             R3 4 1
       29 GETIMPORT                        R4 K11 [UDim2.new]
       31 LOADN                            R5 0
       32 LOADN                            R6 50
       33 LOADN                            R7 0
       34 LOADN                            R8 50
       35 CALL                             R4 4 1
       36 MOVE                             R5 R2
       37 LOADK                            R6 K12 [".Component-TokenExamples"]
       38 DUPTABLE                         R7 K14 [{"Size"}]
       39 GETIMPORT                        R8 K11 [UDim2.new]
       41 LOADN                            R9 1
       42 LOADN                            R10 0
       43 LOADN                            R11 1
       44 LOADN                            R12 0
       45 CALL                             R8 4 1
       46 SETTABLEKS                       R8 R7 K13 ["Size"]
       48 NEWTABLE                         R8 0 36
       50 MOVE                             R9 R2
       51 LOADK                            R10 K15 [">> TextLabel"]
       52 DUPTABLE                         R11 K23 [{["Size"], ["AutomaticSize"], ["TextXAlignment"], ["TextYAlignment"], ["BackgroundTransparency"] = 1, ["TextSize"] = 14}]
       53 GETIMPORT                        R12 K11 [UDim2.new]
       55 LOADN                            R13 1
       56 LOADN                            R14 0
       57 LOADN                            R15 1
       58 LOADN                            R16 0
       59 CALL                             R12 4 1
       60 SETTABLEKS                       R12 R11 K13 ["Size"]
       62 GETIMPORT                        R12 K26 [Enum.AutomaticSize.XY]
       64 SETTABLEKS                       R12 R11 K16 ["AutomaticSize"]
       66 GETIMPORT                        R12 K28 [Enum.TextXAlignment.Center]
       68 SETTABLEKS                       R12 R11 K17 ["TextXAlignment"]
       70 GETIMPORT                        R12 K29 [Enum.TextYAlignment.Center]
       72 SETTABLEKS                       R12 R11 K18 ["TextYAlignment"]
       74 CALL                             R9 2 1
       75 MOVE                             R10 R2
       76 LOADK                            R11 K30 ["> #BackgroundDefault"]
       77 DUPTABLE                         R12 K33 [{["Size"], ["BackgroundColor3"] = "$BackgroundDefault"}]
       78 SETTABLEKS                       R3 R12 K13 ["Size"]
       80 CALL                             R10 2 1
       81 MOVE                             R11 R2
       82 LOADK                            R12 K34 ["> #BackgroundPaper"]
       83 DUPTABLE                         R13 K36 [{["Size"], ["BackgroundColor3"] = "$BackgroundPaper"}]
       84 SETTABLEKS                       R3 R13 K13 ["Size"]
       86 CALL                             R11 2 1
       87 MOVE                             R12 R2
       88 LOADK                            R13 K37 ["> #ForegroundMain"]
       89 DUPTABLE                         R14 K39 [{["Size"], ["BackgroundColor3"] = "$ForegroundMain"}]
       90 SETTABLEKS                       R3 R14 K13 ["Size"]
       92 CALL                             R12 2 1
       93 MOVE                             R13 R2
       94 LOADK                            R14 K40 ["> #ForegroundMuted"]
       95 DUPTABLE                         R15 K42 [{["Size"], ["BackgroundColor3"] = "$ForegroundMuted"}]
       96 SETTABLEKS                       R3 R15 K13 ["Size"]
       98 CALL                             R13 2 1
       99 MOVE                             R14 R2
      100 LOADK                            R15 K43 ["> #ForegroundContrast"]
      101 DUPTABLE                         R16 K45 [{["Size"], ["BackgroundColor3"] = "$ForegroundContrast"}]
      102 SETTABLEKS                       R3 R16 K13 ["Size"]
      104 CALL                             R14 2 1
      105 MOVE                             R15 R2
      106 LOADK                            R16 K46 ["> #TextPrimary"]
      107 DUPTABLE                         R17 K49 [{["Size"], ["TextColor3"] = "$TextPrimary"}]
      108 SETTABLEKS                       R3 R17 K13 ["Size"]
      110 CALL                             R15 2 1
      111 MOVE                             R16 R2
      112 LOADK                            R17 K50 ["> #TextSecondary"]
      113 DUPTABLE                         R18 K52 [{["Size"], ["TextColor3"] = "$TextSecondary"}]
      114 SETTABLEKS                       R3 R18 K13 ["Size"]
      116 CALL                             R16 2 1
      117 MOVE                             R17 R2
      118 LOADK                            R18 K53 ["> #TextContrast"]
      119 DUPTABLE                         R19 K55 [{["Size"], ["TextColor3"] = "$TextContrast"}]
      120 SETTABLEKS                       R3 R19 K13 ["Size"]
      122 CALL                             R17 2 1
      123 MOVE                             R18 R2
      124 LOADK                            R19 K56 ["> #TextLink"]
      125 DUPTABLE                         R20 K58 [{["Size"], ["TextColor3"] = "$TextLink"}]
      126 SETTABLEKS                       R3 R20 K13 ["Size"]
      128 NEWTABLE                         R21 0 1
      130 MOVE                             R22 R2
      131 LOADK                            R23 K59 [":hover"]
      132 DUPTABLE                         R24 K60 [{["TextColor3"] = "$TextLink"}]
      133 CALL                             R22 2 -1
      134 SETLIST                          R21 R22 -1 [1]
      136 CALL                             R18 3 1
      137 MOVE                             R19 R2
      138 LOADK                            R20 K61 ["> #TextDisabled"]
      139 DUPTABLE                         R21 K63 [{["Size"], ["TextColor3"] = "$TextDisabled"}]
      140 SETTABLEKS                       R3 R21 K13 ["Size"]
      142 CALL                             R19 2 1
      143 MOVE                             R20 R2
      144 LOADK                            R21 K64 ["> #TextError"]
      145 DUPTABLE                         R22 K66 [{["Size"], ["TextColor3"] = "$TextError"}]
      146 SETTABLEKS                       R3 R22 K13 ["Size"]
      148 CALL                             R20 2 1
      149 MOVE                             R21 R2
      150 LOADK                            R22 K67 ["> #TextSuccess"]
      151 DUPTABLE                         R23 K69 [{["Size"], ["TextColor3"] = "$TextSuccess"}]
      152 SETTABLEKS                       R3 R23 K13 ["Size"]
      154 CALL                             R21 2 1
      155 MOVE                             R22 R2
      156 LOADK                            R23 K70 ["> #TextWarning"]
      157 DUPTABLE                         R24 K72 [{["Size"], ["TextColor3"] = "$TextWarning"}]
      158 SETTABLEKS                       R3 R24 K13 ["Size"]
      160 CALL                             R22 2 1
      161 MOVE                             R23 R2
      162 LOADK                            R24 K73 ["> #ErrorMain"]
      163 DUPTABLE                         R25 K75 [{["Size"], ["BackgroundColor3"] = "$ErrorMain"}]
      164 SETTABLEKS                       R3 R25 K13 ["Size"]
      166 CALL                             R23 2 1
      167 MOVE                             R24 R2
      168 LOADK                            R25 K76 ["> #SuccessMain"]
      169 DUPTABLE                         R26 K78 [{["Size"], ["BackgroundColor3"] = "$SuccessMain"}]
      170 SETTABLEKS                       R3 R26 K13 ["Size"]
      172 CALL                             R24 2 1
      173 SETLIST                          R8 R9 16 [1]
      175 MOVE                             R9 R2
      176 LOADK                            R10 K79 ["> #WarningMain"]
      177 DUPTABLE                         R11 K81 [{["Size"], ["BackgroundColor3"] = "$WarningMain"}]
      178 SETTABLEKS                       R3 R11 K13 ["Size"]
      180 CALL                             R9 2 1
      181 MOVE                             R10 R2
      182 LOADK                            R11 K82 ["> #ActionHover"]
      183 DUPTABLE                         R12 K84 [{["Size"], ["BackgroundColor3"] = "$ActionEnabled"}]
      184 SETTABLEKS                       R3 R12 K13 ["Size"]
      186 NEWTABLE                         R13 0 1
      188 MOVE                             R14 R2
      189 LOADK                            R15 K59 [":hover"]
      190 DUPTABLE                         R16 K86 [{["BackgroundColor3"] = "$ActionHover"}]
      191 CALL                             R14 2 -1
      192 SETLIST                          R13 R14 -1 [1]
      194 CALL                             R10 3 1
      195 MOVE                             R11 R2
      196 LOADK                            R12 K87 ["> #ActionEnabled"]
      197 DUPTABLE                         R13 K84 [{["Size"], ["BackgroundColor3"] = "$ActionEnabled"}]
      198 SETTABLEKS                       R3 R13 K13 ["Size"]
      200 CALL                             R11 2 1
      201 MOVE                             R12 R2
      202 LOADK                            R13 K88 ["> #ActionSelected"]
      203 DUPTABLE                         R14 K90 [{["Size"], ["BackgroundColor3"] = "$ActionSelected"}]
      204 SETTABLEKS                       R3 R14 K13 ["Size"]
      206 CALL                             R12 2 1
      207 MOVE                             R13 R2
      208 LOADK                            R14 K91 ["> #ActionActivated"]
      209 DUPTABLE                         R15 K93 [{["Size"], ["BackgroundColor3"] = "$ActionActivated"}]
      210 SETTABLEKS                       R3 R15 K13 ["Size"]
      212 CALL                             R13 2 1
      213 MOVE                             R14 R2
      214 LOADK                            R15 K94 ["> #ActionFocusBorder"]
      215 DUPTABLE                         R16 K97 [{["Size"], ["BackgroundColor3"] = "$ActionEnabled", ["BorderColor3"] = "$ActionFocusBorder"}]
      216 SETTABLEKS                       R3 R16 K13 ["Size"]
      218 CALL                             R14 2 1
      219 MOVE                             R15 R2
      220 LOADK                            R16 K98 ["> #PrimaryMain"]
      221 DUPTABLE                         R17 K100 [{["Size"], ["BackgroundColor3"] = "$PrimaryMain"}]
      222 SETTABLEKS                       R3 R17 K13 ["Size"]
      224 CALL                             R15 2 1
      225 MOVE                             R16 R2
      226 LOADK                            R17 K101 ["> #PrimaryHoverBackground"]
      227 DUPTABLE                         R18 K100 [{["Size"], ["BackgroundColor3"] = "$PrimaryMain"}]
      228 SETTABLEKS                       R3 R18 K13 ["Size"]
      230 NEWTABLE                         R19 0 1
      232 MOVE                             R20 R2
      233 LOADK                            R21 K59 [":hover"]
      234 DUPTABLE                         R22 K103 [{["BackgroundColor3"] = "$PrimaryHoverBackground"}]
      235 CALL                             R20 2 -1
      236 SETLIST                          R19 R20 -1 [1]
      238 CALL                             R16 3 1
      239 MOVE                             R17 R2
      240 LOADK                            R18 K104 ["> #SecondaryMain"]
      241 DUPTABLE                         R19 K106 [{["Size"], ["BackgroundColor3"] = "$SecondaryMain"}]
      242 SETTABLEKS                       R3 R19 K13 ["Size"]
      244 CALL                             R17 2 1
      245 MOVE                             R18 R2
      246 LOADK                            R19 K107 ["> #SecondaryMuted"]
      247 DUPTABLE                         R20 K109 [{["Size"], ["BackgroundColor3"] = "$SecondaryMuted"}]
      248 SETTABLEKS                       R3 R20 K13 ["Size"]
      250 CALL                             R18 2 1
      251 MOVE                             R19 R2
      252 LOADK                            R20 K110 ["> #SecondaryContrast"]
      253 DUPTABLE                         R21 K112 [{["Size"], ["BackgroundColor3"] = "$SecondaryContrast"}]
      254 SETTABLEKS                       R3 R21 K13 ["Size"]
      256 CALL                             R19 2 1
      257 MOVE                             R20 R2
      258 LOADK                            R21 K113 ["> #SecondaryHoverBackground"]
      259 DUPTABLE                         R22 K106 [{["Size"], ["BackgroundColor3"] = "$SecondaryMain"}]
      260 SETTABLEKS                       R3 R22 K13 ["Size"]
      262 NEWTABLE                         R23 0 1
      264 MOVE                             R24 R2
      265 LOADK                            R25 K59 [":hover"]
      266 DUPTABLE                         R26 K115 [{["BackgroundColor3"] = "$SecondaryHoverBackground"}]
      267 CALL                             R24 2 -1
      268 SETLIST                          R23 R24 -1 [1]
      270 CALL                             R20 3 1
      271 MOVE                             R21 R2
      272 LOADK                            R22 K116 ["> #SecondaryHoverOutlineBorder"]
      273 DUPTABLE                         R23 K118 [{["Size"], ["BackgroundColor3"] = "$SecondaryMain", ["BorderColor3"] = "$SecondaryHoverOutlineBorder"}]
      274 SETTABLEKS                       R3 R23 K13 ["Size"]
      276 CALL                             R21 2 1
      277 MOVE                             R22 R2
      278 LOADK                            R23 K119 ["> #SecondaryRestingOutlineBorder"]
      279 DUPTABLE                         R24 K121 [{["Size"], ["BackgroundColor3"] = "$SecondaryMain", ["BorderColor3"] = "$SecondaryRestingOutlineBorder"}]
      280 SETTABLEKS                       R3 R24 K13 ["Size"]
      282 CALL                             R22 2 1
      283 MOVE                             R23 R2
      284 LOADK                            R24 K122 ["> #FilledInputBackground"]
      285 DUPTABLE                         R25 K124 [{["Size"], ["BackgroundColor3"] = "$FilledInputBackground"}]
      286 SETTABLEKS                       R3 R25 K13 ["Size"]
      288 CALL                             R23 2 1
      289 MOVE                             R24 R2
      290 LOADK                            R25 K125 ["> #Divider"]
      291 DUPTABLE                         R26 K127 [{["Size"], ["BackgroundColor3"] = "$Divider"}]
      292 SETTABLEKS                       R3 R26 K13 ["Size"]
      294 CALL                             R24 2 1
      295 SETLIST                          R8 R9 16 [17]
      297 MOVE                             R9 R2
      298 LOADK                            R10 K128 ["> #CheckboxUncheckedImage"]
      299 DUPTABLE                         R11 K131 [{["Size"], ["Image"] = "$CheckboxUncheckedImage"}]
      300 SETTABLEKS                       R4 R11 K13 ["Size"]
      302 CALL                             R9 2 1
      303 MOVE                             R10 R2
      304 LOADK                            R11 K132 ["> #CheckboxCheckedImage"]
      305 DUPTABLE                         R12 K134 [{["Size"], ["Image"] = "$CheckboxCheckedImage"}]
      306 SETTABLEKS                       R4 R12 K13 ["Size"]
      308 CALL                             R10 2 1
      309 MOVE                             R11 R2
      310 LOADK                            R12 K135 ["> #CheckboxIndeterminateImage"]
      311 DUPTABLE                         R13 K137 [{["Size"], ["Image"] = "$CheckboxIndeterminateImage"}]
      312 SETTABLEKS                       R4 R13 K13 ["Size"]
      314 CALL                             R11 2 1
      315 MOVE                             R12 R2
      316 LOADK                            R13 K138 ["> #CheckboxDisabledImage"]
      317 DUPTABLE                         R14 K140 [{["Size"], ["Image"] = "$CheckboxDisabledImage"}]
      318 SETTABLEKS                       R4 R14 K13 ["Size"]
      320 CALL                             R12 2 -1
      321 SETLIST                          R8 R9 -1 [33]
      323 CALL                             R5 3 -1
      324 RETURN                           R5 -1
