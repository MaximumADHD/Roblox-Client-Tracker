PROTO_0:
        0 GETIMPORT                        R0 K1 [require]
        2 GETIMPORT                        R1 K3 [script]
        4 GETTABLEKS                       R1 R1 K4 ["Parent"]
        6 CALL                             R0 1 1
        7 DUPTABLE                         R1 K10 [{"Basic", "LongWrapping", "MixOfValidAndInvalidLinks", "MultipleLinks", "InvalidLink"}]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K11 ["createElement"]
       11 MOVE                             R3 R0
       12 DUPTABLE                         R4 K18 [{["AutomaticSize"], ["Size"], ["Text"] = "Before https://www.roblox.com/users/1/profile After", ["TextWrapped"] = True}]
       13 GETIMPORT                        R5 K21 [Enum.AutomaticSize.Y]
       15 SETTABLEKS                       R5 R4 K12 ["AutomaticSize"]
       17 GETIMPORT                        R5 K24 [UDim2.new]
       19 LOADN                            R6 1
       20 LOADN                            R7 0
       21 LOADN                            R8 0
       22 LOADN                            R9 0
       23 CALL                             R5 4 1
       24 SETTABLEKS                       R5 R4 K13 ["Size"]
       26 CALL                             R2 2 1
       27 SETTABLEKS                       R2 R1 K5 ["Basic"]
       29 GETUPVAL                         R2 0
       30 GETTABLEKS                       R2 R2 K11 ["createElement"]
       32 MOVE                             R3 R0
       33 DUPTABLE                         R4 K26 [{["AutomaticSize"], ["Size"], ["Text"] = "I want to be the best there ever was To beat all the rest, yeah, that's my cause https://www.roblox.com/games/8211530112/UPDATE-1-Honk?gameSetTypeId=100000003&homePageSessionInfo=551e0c7d-ffe2-4fb4-ba56-009a4d625f64&isAd=false&numberOfLoadedTiles=6&page=homePage&placeId=8211530112&position=1&sortPos=0&universeId=3152539461 I will travel across the land, Searching far and wide, Teach Pokémon to understand, The power that's inside", ["TextWrapped"] = True}]
       34 GETIMPORT                        R5 K21 [Enum.AutomaticSize.Y]
       36 SETTABLEKS                       R5 R4 K12 ["AutomaticSize"]
       38 GETIMPORT                        R5 K24 [UDim2.new]
       40 LOADN                            R6 1
       41 LOADN                            R7 0
       42 LOADN                            R8 0
       43 LOADN                            R9 0
       44 CALL                             R5 4 1
       45 SETTABLEKS                       R5 R4 K13 ["Size"]
       47 CALL                             R2 2 1
       48 SETTABLEKS                       R2 R1 K6 ["LongWrapping"]
       50 GETUPVAL                         R2 0
       51 GETTABLEKS                       R2 R2 K11 ["createElement"]
       53 MOVE                             R3 R0
       54 DUPTABLE                         R4 K28 [{["AutomaticSize"], ["Size"], ["Text"] = "a valid link: https://create.roblox.com/profile/bro_i25?p=h&i=pi|pe ...no https will not work: roblox.com ...but add an https and it's good: https://roblox.com ...not a whitelisted subDomain: https://virus.roblox.com ...sneaky url might be broken but why was it being sneaky?: https://roblox.com.google/ok", ["TextWrapped"] = True}]
       55 GETIMPORT                        R5 K21 [Enum.AutomaticSize.Y]
       57 SETTABLEKS                       R5 R4 K12 ["AutomaticSize"]
       59 GETIMPORT                        R5 K24 [UDim2.new]
       61 LOADN                            R6 1
       62 LOADN                            R7 0
       63 LOADN                            R8 0
       64 LOADN                            R9 0
       65 CALL                             R5 4 1
       66 SETTABLEKS                       R5 R4 K13 ["Size"]
       68 CALL                             R2 2 1
       69 SETTABLEKS                       R2 R1 K7 ["MixOfValidAndInvalidLinks"]
       71 GETUPVAL                         R2 0
       72 GETTABLEKS                       R2 R2 K11 ["createElement"]
       74 MOVE                             R3 R0
       75 DUPTABLE                         R4 K30 [{["AutomaticSize"], ["Size"], ["Text"] = "http://roblox.com/ or https://create.roblox.com", ["TextWrapped"] = True}]
       76 GETIMPORT                        R5 K21 [Enum.AutomaticSize.Y]
       78 SETTABLEKS                       R5 R4 K12 ["AutomaticSize"]
       80 GETIMPORT                        R5 K24 [UDim2.new]
       82 LOADN                            R6 1
       83 LOADN                            R7 0
       84 LOADN                            R8 0
       85 LOADN                            R9 0
       86 CALL                             R5 4 1
       87 SETTABLEKS                       R5 R4 K13 ["Size"]
       89 CALL                             R2 2 1
       90 SETTABLEKS                       R2 R1 K8 ["MultipleLinks"]
       92 GETUPVAL                         R2 0
       93 GETTABLEKS                       R2 R2 K11 ["createElement"]
       95 MOVE                             R3 R0
       96 DUPTABLE                         R4 K32 [{["AutomaticSize"], ["Size"], ["Text"] = "https://google.com/", ["TextWrapped"] = True}]
       97 GETIMPORT                        R5 K21 [Enum.AutomaticSize.Y]
       99 SETTABLEKS                       R5 R4 K12 ["AutomaticSize"]
      101 GETIMPORT                        R5 K24 [UDim2.new]
      103 LOADN                            R6 1
      104 LOADN                            R7 0
      105 LOADN                            R8 0
      106 LOADN                            R9 0
      107 CALL                             R5 4 1
      108 SETTABLEKS                       R5 R4 K13 ["Size"]
      110 CALL                             R2 2 1
      111 SETTABLEKS                       R2 R1 K9 ["InvalidLink"]
      113 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K8 [PROTO_0]
       17 CAPTURE                          VAL R1
       18 RETURN                           R2 1
