MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Style"]
       13 GETTABLEKS                       R2 R3 K8 ["StyleKey"]
       15 CALL                             R1 1 1
       16 DUPTABLE                         R2 K17 [{"Size", "Text", "VoteCount", "GoodRatingColor", "OkayRatingColor", "PoorRatingColor", "ThumbUp", "Icon"}]
       17 GETIMPORT                        R3 K20 [UDim2.new]
       19 LOADN                            R4 1
       20 LOADN                            R5 0
       21 LOADN                            R6 0
       22 LOADN                            R7 15
       23 CALL                             R3 4 1
       24 SETTABLEKS                       R3 R2 K9 ["Size"]
       26 DUPTABLE                         R3 K24 [{"Font", "TextColor", "TextSize"}]
       27 GETIMPORT                        R4 K27 [Enum.Font.SourceSans]
       29 SETTABLEKS                       R4 R3 K21 ["Font"]
       31 GETTABLEKS                       R4 R1 K28 ["MainText"]
       33 SETTABLEKS                       R4 R3 K22 ["TextColor"]
       35 LOADN                            R4 18
       36 SETTABLEKS                       R4 R3 K23 ["TextSize"]
       38 SETTABLEKS                       R3 R2 K10 ["Text"]
       40 DUPTABLE                         R3 K24 [{"Font", "TextColor", "TextSize"}]
       41 GETIMPORT                        R4 K27 [Enum.Font.SourceSans]
       43 SETTABLEKS                       R4 R3 K21 ["Font"]
       45 GETTABLEKS                       R4 R1 K29 ["SubText"]
       47 SETTABLEKS                       R4 R3 K22 ["TextColor"]
       49 LOADN                            R4 14
       50 SETTABLEKS                       R4 R3 K23 ["TextSize"]
       52 SETTABLEKS                       R3 R2 K11 ["VoteCount"]
       54 GETTABLEKS                       R3 R1 K30 ["TextSuccess"]
       56 SETTABLEKS                       R3 R2 K12 ["GoodRatingColor"]
       58 GETTABLEKS                       R3 R1 K31 ["TextWarning"]
       60 SETTABLEKS                       R3 R2 K13 ["OkayRatingColor"]
       62 GETTABLEKS                       R3 R1 K32 ["TextError"]
       64 SETTABLEKS                       R3 R2 K14 ["PoorRatingColor"]
       66 DUPTABLE                         R3 K34 [{"Colors", "Icon"}]
       67 DUPTABLE                         R4 K39 [{"Gray", "Green", "Red", "Yellow"}]
       68 GETTABLEKS                       R5 R1 K40 ["SecondaryContrast"]
       70 SETTABLEKS                       R5 R4 K35 ["Gray"]
       72 GETTABLEKS                       R5 R1 K41 ["SuccessMain"]
       74 SETTABLEKS                       R5 R4 K36 ["Green"]
       76 GETTABLEKS                       R5 R1 K42 ["ErrorMain"]
       78 SETTABLEKS                       R5 R4 K37 ["Red"]
       80 GETTABLEKS                       R5 R1 K43 ["WarningMain"]
       82 SETTABLEKS                       R5 R4 K38 ["Yellow"]
       84 SETTABLEKS                       R4 R3 K33 ["Colors"]
       86 LOADK                            R4 K44 ["rbxasset://textures/DeveloperFramework/Votes/rating_up_white.png"]
       87 SETTABLEKS                       R4 R3 K16 ["Icon"]
       89 SETTABLEKS                       R3 R2 K15 ["ThumbUp"]
       91 DUPTABLE                         R3 K49 [{"Image", "Size", "AnchorPoint", "Position", "BackgroundTransparency"}]
       92 LOADK                            R4 K50 ["rbxasset://textures/DeveloperFramework/Votes/rating_small.png"]
       93 SETTABLEKS                       R4 R3 K45 ["Image"]
       95 GETIMPORT                        R4 K52 [UDim2.fromOffset]
       97 LOADN                            R5 12
       98 LOADN                            R6 15
       99 CALL                             R4 2 1
      100 SETTABLEKS                       R4 R3 K9 ["Size"]
      102 GETIMPORT                        R4 K54 [Vector2.new]
      104 LOADK                            R5 K55 [0.5]
      105 LOADK                            R6 K55 [0.5]
      106 CALL                             R4 2 1
      107 SETTABLEKS                       R4 R3 K46 ["AnchorPoint"]
      109 GETIMPORT                        R4 K20 [UDim2.new]
      111 LOADK                            R5 K55 [0.5]
      112 LOADN                            R6 0
      113 LOADK                            R7 K55 [0.5]
      114 LOADN                            R8 0
      115 CALL                             R4 4 1
      116 SETTABLEKS                       R4 R3 K47 ["Position"]
      118 LOADN                            R4 1
      119 SETTABLEKS                       R4 R3 K48 ["BackgroundTransparency"]
      121 SETTABLEKS                       R3 R2 K16 ["Icon"]
      123 RETURN                           R2 1
