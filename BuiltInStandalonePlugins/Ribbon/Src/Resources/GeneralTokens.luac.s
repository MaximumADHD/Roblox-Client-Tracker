MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R2 K9 ["createStyleSheet"]
       18 GETTABLEKS                       R3 R1 K10 ["Style"]
       20 GETTABLEKS                       R3 R3 K11 ["ColorSystem"]
       22 NEWTABLE                         R4 128 0
       24 GETIMPORT                        R5 K14 [Vector2.new]
       26 LOADK                            R6 K15 [0.5]
       27 LOADK                            R7 K15 [0.5]
       28 CALL                             R5 2 1
       29 SETTABLEKS                       R5 R4 K16 ["AnchorCenter"]
       31 LOADN                            R5 0
       32 SETTABLEKS                       R5 R4 K17 ["BorderNone"]
       34 LOADN                            R5 1
       35 SETTABLEKS                       R5 R4 K18 ["BorderMedium"]
       37 GETIMPORT                        R5 K21 [UDim2.fromOffset]
       39 LOADN                            R6 24
       40 LOADN                            R7 24
       41 CALL                             R5 2 1
       42 SETTABLEKS                       R5 R4 K22 ["AvatarXS"]
       44 GETIMPORT                        R5 K21 [UDim2.fromOffset]
       46 LOADN                            R6 16
       47 LOADN                            R7 16
       48 CALL                             R5 2 1
       49 SETTABLEKS                       R5 R4 K23 ["IconSmall"]
       51 GETIMPORT                        R5 K21 [UDim2.fromOffset]
       53 LOADN                            R6 24
       54 LOADN                            R7 24
       55 CALL                             R5 2 1
       56 SETTABLEKS                       R5 R4 K24 ["IconLarge"]
       58 GETIMPORT                        R5 K26 [UDim2.fromScale]
       60 LOADK                            R6 K15 [0.5]
       61 LOADK                            R7 K15 [0.5]
       62 CALL                             R5 2 1
       63 SETTABLEKS                       R5 R4 K27 ["PositionCenter"]
       65 LOADN                            R5 0
       66 SETTABLEKS                       R5 R4 K28 ["Transparency0"]
       68 LOADK                            R5 K29 [0.4]
       69 SETTABLEKS                       R5 R4 K30 ["Transparency40"]
       71 LOADK                            R5 K15 [0.5]
       72 SETTABLEKS                       R5 R4 K31 ["Transparency50"]
       74 LOADK                            R5 K32 [0.62]
       75 SETTABLEKS                       R5 R4 K33 ["Transparency62"]
       77 LOADK                            R5 K34 [0.84]
       78 SETTABLEKS                       R5 R4 K35 ["Transparency84"]
       80 LOADK                            R5 K36 [0.88]
       81 SETTABLEKS                       R5 R4 K37 ["Transparency88"]
       83 LOADK                            R5 K38 [0.92]
       84 SETTABLEKS                       R5 R4 K39 ["Transparency92"]
       86 LOADK                            R5 K40 [0.94]
       87 SETTABLEKS                       R5 R4 K41 ["Transparency94"]
       89 LOADN                            R5 1
       90 SETTABLEKS                       R5 R4 K42 ["Transparency100"]
       92 GETIMPORT                        R5 K44 [UDim.new]
       94 LOADN                            R6 0
       95 LOADN                            R7 4
       96 CALL                             R5 2 1
       97 SETTABLEKS                       R5 R4 K45 ["GlobalRadiusXSmall"]
       99 GETIMPORT                        R5 K44 [UDim.new]
      101 LOADN                            R6 0
      102 LOADN                            R7 6
      103 CALL                             R5 2 1
      104 SETTABLEKS                       R5 R4 K46 ["GlobalRadiusSmall"]
      106 GETIMPORT                        R5 K44 [UDim.new]
      108 LOADN                            R6 0
      109 LOADN                            R7 8
      110 CALL                             R5 2 1
      111 SETTABLEKS                       R5 R4 K47 ["GlobalRadiusMedium"]
      113 GETIMPORT                        R5 K44 [UDim.new]
      115 LOADN                            R6 0
      116 LOADN                            R7 100
      117 CALL                             R5 2 1
      118 SETTABLEKS                       R5 R4 K48 ["GlobalRadiusCircle"]
      120 GETIMPORT                        R5 K44 [UDim.new]
      122 LOADN                            R6 0
      123 LOADN                            R7 0
      124 CALL                             R5 2 1
      125 SETTABLEKS                       R5 R4 K49 ["GlobalSpace0"]
      127 GETIMPORT                        R5 K44 [UDim.new]
      129 LOADN                            R6 0
      130 LOADN                            R7 2
      131 CALL                             R5 2 1
      132 SETTABLEKS                       R5 R4 K50 ["GlobalSpace25"]
      134 GETIMPORT                        R5 K44 [UDim.new]
      136 LOADN                            R6 0
      137 LOADN                            R7 4
      138 CALL                             R5 2 1
      139 SETTABLEKS                       R5 R4 K51 ["GlobalSpace50"]
      141 GETIMPORT                        R5 K44 [UDim.new]
      143 LOADN                            R6 0
      144 LOADN                            R7 6
      145 CALL                             R5 2 1
      146 SETTABLEKS                       R5 R4 K52 ["GlobalSpace75"]
      148 GETIMPORT                        R5 K44 [UDim.new]
      150 LOADN                            R6 0
      151 LOADN                            R7 8
      152 CALL                             R5 2 1
      153 SETTABLEKS                       R5 R4 K53 ["GlobalSpace100"]
      155 GETIMPORT                        R5 K44 [UDim.new]
      157 LOADN                            R6 0
      158 LOADN                            R7 12
      159 CALL                             R5 2 1
      160 SETTABLEKS                       R5 R4 K54 ["GlobalSpace150"]
      162 GETIMPORT                        R5 K44 [UDim.new]
      164 LOADN                            R6 0
      165 LOADN                            R7 16
      166 CALL                             R5 2 1
      167 SETTABLEKS                       R5 R4 K55 ["GlobalSpace200"]
      169 GETIMPORT                        R5 K44 [UDim.new]
      171 LOADN                            R6 0
      172 LOADN                            R7 20
      173 CALL                             R5 2 1
      174 SETTABLEKS                       R5 R4 K56 ["GlobalSpace250"]
      176 GETIMPORT                        R5 K44 [UDim.new]
      178 LOADN                            R6 0
      179 LOADN                            R7 28
      180 CALL                             R5 2 1
      181 SETTABLEKS                       R5 R4 K57 ["GlobalSpace350"]
      183 LOADN                            R5 13
      184 SETTABLEKS                       R5 R4 K58 ["FontSize25"]
      186 LOADN                            R5 15
      187 SETTABLEKS                       R5 R4 K59 ["FontSize50"]
      189 LOADN                            R5 18
      190 SETTABLEKS                       R5 R4 K60 ["FontSize75"]
      192 LOADN                            R5 20
      193 SETTABLEKS                       R5 R4 K61 ["FontSize100"]
      195 LOADN                            R5 23
      196 SETTABLEKS                       R5 R4 K62 ["FontSize150"]
      198 LOADN                            R5 25
      199 SETTABLEKS                       R5 R4 K63 ["FontSize200"]
      201 LOADN                            R5 30
      202 SETTABLEKS                       R5 R4 K64 ["FontSize300"]
      204 GETIMPORT                        R5 K68 [Enum.Font.BuilderSans]
      206 SETTABLEKS                       R5 R4 K69 ["FontWeight400"]
      208 GETIMPORT                        R5 K71 [Enum.Font.BuilderSansMedium]
      210 SETTABLEKS                       R5 R4 K72 ["FontWeight600"]
      212 GETIMPORT                        R5 K74 [Enum.Font.BuilderSansBold]
      214 SETTABLEKS                       R5 R4 K75 ["FontWeight700"]
      216 LOADN                            R5 45
      217 SETTABLEKS                       R5 R4 K76 ["Rotation45"]
      219 GETIMPORT                        R5 K78 [NumberSequence.new]
      221 NEWTABLE                         R6 0 3
      223 GETIMPORT                        R7 K80 [NumberSequenceKeypoint.new]
      225 LOADN                            R8 0
      226 LOADN                            R9 1
      227 CALL                             R7 2 1
      228 GETIMPORT                        R8 K80 [NumberSequenceKeypoint.new]
      230 LOADK                            R9 K15 [0.5]
      231 LOADN                            R10 1
      232 CALL                             R8 2 1
      233 GETIMPORT                        R9 K80 [NumberSequenceKeypoint.new]
      235 LOADN                            R10 1
      236 LOADK                            R11 K38 [0.92]
      237 CALL                             R9 2 -1
      238 SETLIST                          R6 R7 -1 [1]
      240 CALL                             R5 1 1
      241 SETTABLEKS                       R5 R4 K81 ["HoverGradientTransparency"]
      243 GETIMPORT                        R5 K78 [NumberSequence.new]
      245 NEWTABLE                         R6 0 3
      247 GETIMPORT                        R7 K80 [NumberSequenceKeypoint.new]
      249 LOADN                            R8 0
      250 LOADN                            R9 1
      251 CALL                             R7 2 1
      252 GETIMPORT                        R8 K80 [NumberSequenceKeypoint.new]
      254 LOADK                            R9 K15 [0.5]
      255 LOADN                            R10 1
      256 CALL                             R8 2 1
      257 GETIMPORT                        R9 K80 [NumberSequenceKeypoint.new]
      259 LOADN                            R10 1
      260 LOADK                            R11 K34 [0.84]
      261 CALL                             R9 2 -1
      262 SETLIST                          R6 R7 -1 [1]
      264 CALL                             R5 1 1
      265 SETTABLEKS                       R5 R4 K82 ["PressGradientTransparency"]
      267 GETIMPORT                        R5 K83 [UDim2.new]
      269 LOADN                            R6 0
      270 LOADN                            R7 16
      271 LOADN                            R8 1
      272 LOADN                            R9 0
      273 CALL                             R5 4 1
      274 SETTABLEKS                       R5 R4 K84 ["TabGradientSize"]
      276 GETIMPORT                        R5 K86 [ColorSequence.new]
      278 GETIMPORT                        R6 K89 [Color3.fromHex]
      280 LOADK                            R7 K90 ["#000000"]
      281 CALL                             R6 1 -1
      282 CALL                             R5 -1 1
      283 SETTABLEKS                       R5 R4 K91 ["BlackGradient"]
      285 GETIMPORT                        R5 K86 [ColorSequence.new]
      287 GETIMPORT                        R6 K89 [Color3.fromHex]
      289 LOADK                            R7 K92 ["#1F2024"]
      290 CALL                             R6 1 -1
      291 CALL                             R5 -1 1
      292 SETTABLEKS                       R5 R4 K93 ["Gray1000Gradient"]
      294 GETIMPORT                        R5 K86 [ColorSequence.new]
      296 GETIMPORT                        R6 K89 [Color3.fromHex]
      298 LOADK                            R7 K94 ["#FFFFFF"]
      299 CALL                             R6 1 -1
      300 CALL                             R5 -1 1
      301 SETTABLEKS                       R5 R4 K95 ["WhiteGradient"]
      303 GETIMPORT                        R5 K89 [Color3.fromHex]
      305 LOADK                            R6 K90 ["#000000"]
      306 CALL                             R5 1 1
      307 SETTABLEKS                       R5 R4 K96 ["Black"]
      309 GETIMPORT                        R5 K89 [Color3.fromHex]
      311 LOADK                            R6 K94 ["#FFFFFF"]
      312 CALL                             R5 1 1
      313 SETTABLEKS                       R5 R4 K97 ["White"]
      315 GETIMPORT                        R5 K89 [Color3.fromHex]
      317 LOADK                            R6 K98 ["#3C64FA"]
      318 CALL                             R5 1 1
      319 SETTABLEKS                       R5 R4 K99 ["Blue600"]
      321 GETTABLEKS                       R6 R3 K100 ["Gray"]
      323 GETTABLEN                        R5 R6 10
      324 SETTABLEKS                       R5 R4 K101 ["Gray100"]
      326 GETTABLEKS                       R6 R3 K100 ["Gray"]
      328 GETTABLEN                        R5 R6 20
      329 SETTABLEKS                       R5 R4 K102 ["Gray200"]
      331 GETTABLEKS                       R6 R3 K100 ["Gray"]
      333 GETTABLEN                        R5 R6 30
      334 SETTABLEKS                       R5 R4 K103 ["Gray300"]
      336 GETTABLEKS                       R6 R3 K100 ["Gray"]
      338 GETTABLEN                        R5 R6 50
      339 SETTABLEKS                       R5 R4 K104 ["Gray500"]
      341 GETTABLEKS                       R6 R3 K100 ["Gray"]
      343 GETTABLEN                        R5 R6 80
      344 SETTABLEKS                       R5 R4 K105 ["Gray800"]
      346 GETTABLEKS                       R6 R3 K100 ["Gray"]
      348 GETTABLEN                        R5 R6 90
      349 SETTABLEKS                       R5 R4 K106 ["Gray900"]
      351 GETTABLEKS                       R6 R3 K100 ["Gray"]
      353 GETTABLEN                        R5 R6 100
      354 SETTABLEKS                       R5 R4 K107 ["Gray1000"]
      356 GETTABLEKS                       R6 R3 K100 ["Gray"]
      358 GETTABLEN                        R5 R6 110
      359 SETTABLEKS                       R5 R4 K108 ["Gray1100"]
      361 GETTABLEKS                       R6 R3 K100 ["Gray"]
      363 GETTABLEN                        R5 R6 120
      364 SETTABLEKS                       R5 R4 K109 ["Gray1200"]
      366 GETIMPORT                        R5 K89 [Color3.fromHex]
      368 LOADK                            R6 K110 ["#2E2E2E"]
      369 CALL                             R5 1 1
      370 SETTABLEKS                       R5 R4 K111 ["MainBackground"]
      372 GETIMPORT                        R5 K89 [Color3.fromHex]
      374 LOADK                            R6 K112 ["#25262C"]
      375 CALL                             R5 1 1
      376 SETTABLEKS                       R5 R4 K113 ["SemanticColorSurface200"]
      378 GETIMPORT                        R5 K89 [Color3.fromHex]
      380 LOADK                            R6 K114 ["#474747"]
      381 CALL                             R5 1 1
      382 SETTABLEKS                       R5 R4 K115 ["BlackTransparency88"]
      384 GETIMPORT                        R5 K89 [Color3.fromHex]
      386 LOADK                            R6 K116 ["#E1E1E1"]
      387 CALL                             R5 1 1
      388 SETTABLEKS                       R5 R4 K117 ["WhiteTransparency88"]
      390 GETIMPORT                        R5 K89 [Color3.fromHex]
      392 LOADK                            R6 K118 ["#BBC2D1"]
      393 CALL                             R5 1 1
      394 SETTABLEKS                       R5 R4 K119 ["Gray450"]
      396 GETIMPORT                        R5 K89 [Color3.fromHex]
      398 LOADK                            R6 K120 ["#696A6D"]
      399 CALL                             R5 1 1
      400 SETTABLEKS                       R5 R4 K121 ["Gray650"]
      402 GETIMPORT                        R5 K89 [Color3.fromHex]
      404 LOADK                            R6 K122 ["#333B4C"]
      405 CALL                             R5 1 1
      406 SETTABLEKS                       R5 R4 K123 ["Gray750"]
      408 MOVE                             R5 R2
      409 LOADK                            R6 K124 ["GeneralTokens"]
      410 NEWTABLE                         R7 0 0
      412 MOVE                             R8 R4
      413 CALL                             R5 3 -1
      414 RETURN                           R5 -1
