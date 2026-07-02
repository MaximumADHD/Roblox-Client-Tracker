MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Style"]
       13 GETTABLEKS                       R2 R2 K8 ["StyleKey"]
       15 CALL                             R1 1 1
       16 DUPTABLE                         R2 K17 [{"Size", "Text", "VoteCount", "GoodRatingColor", "OkayRatingColor", "PoorRatingColor", "ThumbUp", "Icon"}]
       17 GETIMPORT                        R3 K20 [UDim2.new]
       19 LOADN                            R4 1
       20 LOADN                            R5 0
       21 LOADN                            R6 0
       22 LOADN                            R7 15
       23 CALL                             R3 4 1
       24 SETTABLEKS                       R3 R2 K9 ["Size"]
       26 DUPTABLE                         R3 K25 [{["Font"], ["TextColor"], ["TextSize"] = 18}]
       27 GETIMPORT                        R4 K28 [Enum.Font.SourceSans]
       29 SETTABLEKS                       R4 R3 K21 ["Font"]
       31 GETTABLEKS                       R4 R1 K29 ["MainText"]
       33 SETTABLEKS                       R4 R3 K22 ["TextColor"]
       35 SETTABLEKS                       R3 R2 K10 ["Text"]
       37 DUPTABLE                         R3 K31 [{["Font"], ["TextColor"], ["TextSize"] = 14}]
       38 GETIMPORT                        R4 K28 [Enum.Font.SourceSans]
       40 SETTABLEKS                       R4 R3 K21 ["Font"]
       42 GETTABLEKS                       R4 R1 K32 ["SubText"]
       44 SETTABLEKS                       R4 R3 K22 ["TextColor"]
       46 SETTABLEKS                       R3 R2 K11 ["VoteCount"]
       48 GETTABLEKS                       R3 R1 K33 ["TextSuccess"]
       50 SETTABLEKS                       R3 R2 K12 ["GoodRatingColor"]
       52 GETTABLEKS                       R3 R1 K34 ["TextWarning"]
       54 SETTABLEKS                       R3 R2 K13 ["OkayRatingColor"]
       56 GETTABLEKS                       R3 R1 K35 ["TextError"]
       58 SETTABLEKS                       R3 R2 K14 ["PoorRatingColor"]
       60 DUPTABLE                         R3 K38 [{["Colors"], ["Icon"] = "rbxasset://textures/DeveloperFramework/Votes/rating_up_white.png"}]
       61 DUPTABLE                         R4 K43 [{"Gray", "Green", "Red", "Yellow"}]
       62 GETTABLEKS                       R5 R1 K44 ["SecondaryContrast"]
       64 SETTABLEKS                       R5 R4 K39 ["Gray"]
       66 GETTABLEKS                       R5 R1 K45 ["SuccessMain"]
       68 SETTABLEKS                       R5 R4 K40 ["Green"]
       70 GETTABLEKS                       R5 R1 K46 ["ErrorMain"]
       72 SETTABLEKS                       R5 R4 K41 ["Red"]
       74 GETTABLEKS                       R5 R1 K47 ["WarningMain"]
       76 SETTABLEKS                       R5 R4 K42 ["Yellow"]
       78 SETTABLEKS                       R4 R3 K36 ["Colors"]
       80 SETTABLEKS                       R3 R2 K15 ["ThumbUp"]
       82 DUPTABLE                         R3 K54 [{["Image"] = "rbxasset://textures/DeveloperFramework/Votes/rating_small.png", ["Size"], ["AnchorPoint"], ["Position"], ["BackgroundTransparency"] = 1}]
       83 GETIMPORT                        R4 K56 [UDim2.fromOffset]
       85 LOADN                            R5 12
       86 LOADN                            R6 15
       87 CALL                             R4 2 1
       88 SETTABLEKS                       R4 R3 K9 ["Size"]
       90 GETIMPORT                        R4 K58 [Vector2.new]
       92 LOADK                            R5 K59 [0.5]
       93 LOADK                            R6 K59 [0.5]
       94 CALL                             R4 2 1
       95 SETTABLEKS                       R4 R3 K50 ["AnchorPoint"]
       97 GETIMPORT                        R4 K20 [UDim2.new]
       99 LOADK                            R5 K59 [0.5]
      100 LOADN                            R6 0
      101 LOADK                            R7 K59 [0.5]
      102 LOADN                            R8 0
      103 CALL                             R4 4 1
      104 SETTABLEKS                       R4 R3 K51 ["Position"]
      106 SETTABLEKS                       R3 R2 K16 ["Icon"]
      108 RETURN                           R2 1
