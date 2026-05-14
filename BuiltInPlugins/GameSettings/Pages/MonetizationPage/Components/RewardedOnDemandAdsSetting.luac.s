PROTO_0:
        0 LOADK                            R3 K0 ["%%UNIVERSE_ID%%"]
        1 GETIMPORT                        R5 K2 [game]
        3 GETTABLEKS                       R5 R5 K3 ["GameId"]
        5 FASTCALL1                        TOSTRING R5 ; [+2]
        6 GETIMPORT                        R4 K5 [tostring]
        8 CALL                             R4 1 1
        9 NAMECALL                         R1 R0 K6 ["gsub"]
       11 CALL                             R1 3 1
       12 MOVE                             R0 R1
       13 FASTCALL1                        STRING_LEN R0 ; [+3]
       14 MOVE                             R2 R0
       15 GETIMPORT                        R1 K9 [string.len]
       17 CALL                             R1 1 1
       18 JUMPIFNOTEQKN                    R1 K10 [0] ; [+3]
       20 LOADK                            R1 K11 ["https://www.roblox.com"]
       21 RETURN                           R1 1
       22 RETURN                           R0 1

PROTO_1:
        0 JUMPIFNOT                        R1 ; [+44]
        1 DUPTABLE                         R4 K3 [{"subText", "linkText", "linkUrl"}]
        2 LOADK                            R7 K4 ["Monetization"]
        3 LOADK                            R8 K5 ["RewardedAdsSubtext"]
        4 NAMECALL                         R5 R0 K6 ["getText"]
        6 CALL                             R5 3 1
        7 SETTABLEKS                       R5 R4 K0 ["subText"]
        9 LOADK                            R7 K4 ["Monetization"]
       10 LOADK                            R8 K7 ["RewardedAdsSubtextLink"]
       11 NAMECALL                         R5 R0 K6 ["getText"]
       13 CALL                             R5 3 1
       14 SETTABLEKS                       R5 R4 K1 ["linkText"]
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R6 R6 K8 ["eligible"]
       19 LOADK                            R9 K9 ["%%UNIVERSE_ID%%"]
       20 GETIMPORT                        R11 K11 [game]
       22 GETTABLEKS                       R11 R11 K12 ["GameId"]
       24 FASTCALL1                        TOSTRING R11 ; [+2]
       25 GETIMPORT                        R10 K14 [tostring]
       27 CALL                             R10 1 1
       28 NAMECALL                         R7 R6 K15 ["gsub"]
       30 CALL                             R7 3 1
       31 MOVE                             R6 R7
       32 FASTCALL1                        STRING_LEN R6 ; [+3]
       33 MOVE                             R8 R6
       34 GETIMPORT                        R7 K18 [string.len]
       36 CALL                             R7 1 1
       37 JUMPIFNOTEQKN                    R7 K19 [0] ; [+3]
       39 LOADK                            R5 K20 ["https://www.roblox.com"]
       40 JUMP                             ; [+1]
       41 MOVE                             R5 R6
       42 SETTABLEKS                       R5 R4 K2 ["linkUrl"]
       44 RETURN                           R4 1
       45 JUMPIFNOT                        R2 ; [+44]
       46 DUPTABLE                         R4 K3 [{"subText", "linkText", "linkUrl"}]
       47 LOADK                            R7 K4 ["Monetization"]
       48 LOADK                            R8 K21 ["RewardedAdsSuspendedSubtext"]
       49 NAMECALL                         R5 R0 K6 ["getText"]
       51 CALL                             R5 3 1
       52 SETTABLEKS                       R5 R4 K0 ["subText"]
       54 LOADK                            R7 K4 ["Monetization"]
       55 LOADK                            R8 K22 ["RewardedAdsSuspendedSubtextLink"]
       56 NAMECALL                         R5 R0 K6 ["getText"]
       58 CALL                             R5 3 1
       59 SETTABLEKS                       R5 R4 K1 ["linkText"]
       61 GETUPVAL                         R6 0
       62 GETTABLEKS                       R6 R6 K23 ["appeal"]
       64 LOADK                            R9 K9 ["%%UNIVERSE_ID%%"]
       65 GETIMPORT                        R11 K11 [game]
       67 GETTABLEKS                       R11 R11 K12 ["GameId"]
       69 FASTCALL1                        TOSTRING R11 ; [+2]
       70 GETIMPORT                        R10 K14 [tostring]
       72 CALL                             R10 1 1
       73 NAMECALL                         R7 R6 K15 ["gsub"]
       75 CALL                             R7 3 1
       76 MOVE                             R6 R7
       77 FASTCALL1                        STRING_LEN R6 ; [+3]
       78 MOVE                             R8 R6
       79 GETIMPORT                        R7 K18 [string.len]
       81 CALL                             R7 1 1
       82 JUMPIFNOTEQKN                    R7 K19 [0] ; [+3]
       84 LOADK                            R5 K20 ["https://www.roblox.com"]
       85 JUMP                             ; [+1]
       86 MOVE                             R5 R6
       87 SETTABLEKS                       R5 R4 K2 ["linkUrl"]
       89 RETURN                           R4 1
       90 JUMPIFNOT                        R3 ; [+44]
       91 DUPTABLE                         R4 K3 [{"subText", "linkText", "linkUrl"}]
       92 LOADK                            R7 K4 ["Monetization"]
       93 LOADK                            R8 K24 ["RewardedAdsLostEligibilitySubtext"]
       94 NAMECALL                         R5 R0 K6 ["getText"]
       96 CALL                             R5 3 1
       97 SETTABLEKS                       R5 R4 K0 ["subText"]
       99 LOADK                            R7 K4 ["Monetization"]
      100 LOADK                            R8 K25 ["RewardedAdsLostEligibilitySubtextLink"]
      101 NAMECALL                         R5 R0 K6 ["getText"]
      103 CALL                             R5 3 1
      104 SETTABLEKS                       R5 R4 K1 ["linkText"]
      106 GETUPVAL                         R6 0
      107 GETTABLEKS                       R6 R6 K26 ["wasEligible"]
      109 LOADK                            R9 K9 ["%%UNIVERSE_ID%%"]
      110 GETIMPORT                        R11 K11 [game]
      112 GETTABLEKS                       R11 R11 K12 ["GameId"]
      114 FASTCALL1                        TOSTRING R11 ; [+2]
      115 GETIMPORT                        R10 K14 [tostring]
      117 CALL                             R10 1 1
      118 NAMECALL                         R7 R6 K15 ["gsub"]
      120 CALL                             R7 3 1
      121 MOVE                             R6 R7
      122 FASTCALL1                        STRING_LEN R6 ; [+3]
      123 MOVE                             R8 R6
      124 GETIMPORT                        R7 K18 [string.len]
      126 CALL                             R7 1 1
      127 JUMPIFNOTEQKN                    R7 K19 [0] ; [+3]
      129 LOADK                            R5 K20 ["https://www.roblox.com"]
      130 JUMP                             ; [+1]
      131 MOVE                             R5 R6
      132 SETTABLEKS                       R5 R4 K2 ["linkUrl"]
      134 RETURN                           R4 1
      135 DUPTABLE                         R4 K3 [{"subText", "linkText", "linkUrl"}]
      136 LOADK                            R7 K4 ["Monetization"]
      137 LOADK                            R8 K27 ["RewardedAdsIneligibleSubtext"]
      138 NAMECALL                         R5 R0 K6 ["getText"]
      140 CALL                             R5 3 1
      141 SETTABLEKS                       R5 R4 K0 ["subText"]
      143 LOADK                            R7 K4 ["Monetization"]
      144 LOADK                            R8 K28 ["RewardedAdsIneligibleSubtextLink"]
      145 NAMECALL                         R5 R0 K6 ["getText"]
      147 CALL                             R5 3 1
      148 SETTABLEKS                       R5 R4 K1 ["linkText"]
      150 GETUPVAL                         R6 0
      151 GETTABLEKS                       R6 R6 K29 ["ineligible"]
      153 LOADK                            R9 K9 ["%%UNIVERSE_ID%%"]
      154 GETIMPORT                        R11 K11 [game]
      156 GETTABLEKS                       R11 R11 K12 ["GameId"]
      158 FASTCALL1                        TOSTRING R11 ; [+2]
      159 GETIMPORT                        R10 K14 [tostring]
      161 CALL                             R10 1 1
      162 NAMECALL                         R7 R6 K15 ["gsub"]
      164 CALL                             R7 3 1
      165 MOVE                             R6 R7
      166 FASTCALL1                        STRING_LEN R6 ; [+3]
      167 MOVE                             R8 R6
      168 GETIMPORT                        R7 K18 [string.len]
      170 CALL                             R7 1 1
      171 JUMPIFNOTEQKN                    R7 K19 [0] ; [+3]
      173 LOADK                            R5 K20 ["https://www.roblox.com"]
      174 JUMP                             ; [+1]
      175 MOVE                             R5 R6
      176 SETTABLEKS                       R5 R4 K2 ["linkUrl"]
      178 RETURN                           R4 1

PROTO_2:
        0 DUPTABLE                         R1 K1 [{"IsEnabled"}]
        1 GETTABLEKS                       R2 R0 K2 ["props"]
        3 GETTABLEKS                       R2 R2 K0 ["IsEnabled"]
        5 SETTABLEKS                       R2 R1 K0 ["IsEnabled"]
        7 SETTABLEKS                       R1 R0 K3 ["state"]
        9 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["IsEnabled"]
        2 NOT                              R1 R2
        3 GETUPVAL                         R2 0
        4 MOVE                             R3 R1
        5 CALL                             R2 1 0
        6 DUPTABLE                         R2 K1 [{"IsEnabled"}]
        7 SETTABLEKS                       R1 R2 K0 ["IsEnabled"]
        9 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 NAMECALL                         R0 R0 K0 ["setState"]
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["OnToggled"]
        4 GETTABLEKS                       R3 R1 K2 ["Title"]
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 LOADNIL                          R6
        9 GETTABLEKS                       R7 R1 K3 ["Localization"]
       11 JUMPIFNOT                        R7 ; [+25]
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R8 R1 K3 ["Localization"]
       15 GETTABLEKS                       R9 R1 K4 ["IsEligible"]
       17 GETTABLEKS                       R11 R1 K5 ["IsSuspended"]
       19 JUMPIFEQKB                       R11 TRUE ; [+2]
       21 LOADB                            R10 0 +1
       22 LOADB                            R10 1
       23 GETTABLEKS                       R12 R1 K6 ["HasBeenEligible"]
       25 JUMPIFEQKB                       R12 TRUE ; [+2]
       27 LOADB                            R11 0 +1
       28 LOADB                            R11 1
       29 CALL                             R7 4 1
       30 GETTABLEKS                       R4 R7 K7 ["subText"]
       32 GETTABLEKS                       R5 R7 K8 ["linkText"]
       34 GETTABLEKS                       R6 R7 K9 ["linkUrl"]
       36 JUMP                             ; [+4]
       37 GETTABLEKS                       R4 R1 K10 ["SubText"]
       39 GETTABLEKS                       R5 R1 K11 ["LinkText"]
       41 GETUPVAL                         R7 1
       42 GETTABLEKS                       R7 R7 K12 ["Util"]
       44 GETTABLEKS                       R7 R7 K13 ["LayoutOrderIterator"]
       46 GETTABLEKS                       R8 R7 K14 ["new"]
       48 CALL                             R8 0 1
       49 NEWCLOSURE                       R9 P0
       50 CAPTURE                          VAL R0
       51 CAPTURE                          VAL R2
       52 SETTABLEKS                       R9 R0 K15 ["updateToggleState"]
       54 GETTABLEKS                       R10 R1 K4 ["IsEligible"]
       56 NOT                              R9 R10
       57 GETUPVAL                         R10 2
       58 GETTABLEKS                       R10 R10 K16 ["createElement"]
       60 GETUPVAL                         R11 3
       61 DUPTABLE                         R12 K20 [{"AutomaticSize", "Layout", "LayoutOrder"}]
       62 GETIMPORT                        R13 K23 [Enum.AutomaticSize.XY]
       64 SETTABLEKS                       R13 R12 K17 ["AutomaticSize"]
       66 GETIMPORT                        R13 K26 [Enum.FillDirection.Vertical]
       68 SETTABLEKS                       R13 R12 K18 ["Layout"]
       70 GETTABLEKS                       R13 R0 K0 ["props"]
       72 GETTABLEKS                       R13 R13 K19 ["LayoutOrder"]
       74 SETTABLEKS                       R13 R12 K19 ["LayoutOrder"]
       76 DUPTABLE                         R13 K28 [{"ToggleRewardedVideoAds"}]
       77 GETUPVAL                         R14 2
       78 GETTABLEKS                       R14 R14 K16 ["createElement"]
       80 GETUPVAL                         R15 4
       81 DUPTABLE                         R16 K29 [{"LayoutOrder", "Title"}]
       82 NAMECALL                         R17 R8 K30 ["getNextOrder"]
       84 CALL                             R17 1 1
       85 SETTABLEKS                       R17 R16 K19 ["LayoutOrder"]
       87 SETTABLEKS                       R3 R16 K2 ["Title"]
       89 DUPTABLE                         R17 K33 [{"ToggleButton", "TextContents"}]
       90 GETUPVAL                         R18 2
       91 GETTABLEKS                       R18 R18 K16 ["createElement"]
       93 GETUPVAL                         R19 5
       94 DUPTABLE                         R20 K37 [{"Disabled", "Selected", "OnClick", "LayoutOrder"}]
       95 SETTABLEKS                       R9 R20 K34 ["Disabled"]
       97 GETTABLEKS                       R21 R0 K38 ["state"]
       99 GETTABLEKS                       R21 R21 K39 ["IsEnabled"]
      101 JUMPIFNOT                        R21 ; [+1]
      102 NOT                              R21 R9
      103 SETTABLEKS                       R21 R20 K35 ["Selected"]
      105 GETTABLEKS                       R21 R0 K15 ["updateToggleState"]
      107 SETTABLEKS                       R21 R20 K36 ["OnClick"]
      109 NAMECALL                         R21 R8 K30 ["getNextOrder"]
      111 CALL                             R21 1 1
      112 SETTABLEKS                       R21 R20 K19 ["LayoutOrder"]
      114 CALL                             R18 2 1
      115 SETTABLEKS                       R18 R17 K31 ["ToggleButton"]
      117 GETUPVAL                         R18 2
      118 GETTABLEKS                       R18 R18 K16 ["createElement"]
      120 LOADK                            R19 K40 ["Frame"]
      121 DUPTABLE                         R20 K42 [{"BackgroundTransparency", "AutomaticSize", "LayoutOrder"}]
      122 LOADN                            R21 1
      123 SETTABLEKS                       R21 R20 K41 ["BackgroundTransparency"]
      125 GETIMPORT                        R21 K23 [Enum.AutomaticSize.XY]
      127 SETTABLEKS                       R21 R20 K17 ["AutomaticSize"]
      129 NAMECALL                         R21 R8 K30 ["getNextOrder"]
      131 CALL                             R21 1 1
      132 SETTABLEKS                       R21 R20 K19 ["LayoutOrder"]
      134 DUPTABLE                         R21 K44 [{"UIListLayout", "SubText", "LinkText"}]
      135 GETUPVAL                         R22 2
      136 GETTABLEKS                       R22 R22 K16 ["createElement"]
      138 LOADK                            R23 K43 ["UIListLayout"]
      139 DUPTABLE                         R24 K49 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Wraps"}]
      140 GETIMPORT                        R25 K51 [Enum.FillDirection.Horizontal]
      142 SETTABLEKS                       R25 R24 K24 ["FillDirection"]
      144 GETIMPORT                        R25 K53 [Enum.HorizontalAlignment.Left]
      146 SETTABLEKS                       R25 R24 K45 ["HorizontalAlignment"]
      148 GETIMPORT                        R25 K55 [Enum.VerticalAlignment.Top]
      150 SETTABLEKS                       R25 R24 K46 ["VerticalAlignment"]
      152 GETIMPORT                        R25 K56 [Enum.SortOrder.LayoutOrder]
      154 SETTABLEKS                       R25 R24 K47 ["SortOrder"]
      156 LOADB                            R25 1
      157 SETTABLEKS                       R25 R24 K48 ["Wraps"]
      159 CALL                             R22 2 1
      160 SETTABLEKS                       R22 R21 K43 ["UIListLayout"]
      162 GETUPVAL                         R22 2
      163 GETTABLEKS                       R22 R22 K16 ["createElement"]
      165 GETUPVAL                         R23 6
      166 DUPTABLE                         R24 K61 [{"AutomaticSize", "TextXAlignment", "Style", "Text", "TextWrapped", "LayoutOrder"}]
      167 GETIMPORT                        R25 K23 [Enum.AutomaticSize.XY]
      169 SETTABLEKS                       R25 R24 K17 ["AutomaticSize"]
      171 GETIMPORT                        R25 K62 [Enum.TextXAlignment.Left]
      173 SETTABLEKS                       R25 R24 K57 ["TextXAlignment"]
      175 LOADK                            R25 K63 ["Body"]
      176 SETTABLEKS                       R25 R24 K58 ["Style"]
      178 MOVE                             R26 R4
      179 LOADK                            R27 K64 [" "]
      180 CONCAT                           R25 R26 R27
      181 SETTABLEKS                       R25 R24 K59 ["Text"]
      183 LOADB                            R25 1
      184 SETTABLEKS                       R25 R24 K60 ["TextWrapped"]
      186 NAMECALL                         R25 R8 K30 ["getNextOrder"]
      188 CALL                             R25 1 1
      189 SETTABLEKS                       R25 R24 K19 ["LayoutOrder"]
      191 CALL                             R22 2 1
      192 SETTABLEKS                       R22 R21 K10 ["SubText"]
      194 GETUPVAL                         R22 2
      195 GETTABLEKS                       R22 R22 K16 ["createElement"]
      197 GETUPVAL                         R23 7
      198 DUPTABLE                         R24 K65 [{"AutomaticSize", "TextXAlignment", "Style", "TextWrapped", "Text", "OnClick", "LayoutOrder"}]
      199 GETIMPORT                        R25 K23 [Enum.AutomaticSize.XY]
      201 SETTABLEKS                       R25 R24 K17 ["AutomaticSize"]
      203 GETIMPORT                        R25 K62 [Enum.TextXAlignment.Left]
      205 SETTABLEKS                       R25 R24 K57 ["TextXAlignment"]
      207 LOADK                            R25 K63 ["Body"]
      208 SETTABLEKS                       R25 R24 K58 ["Style"]
      210 LOADB                            R25 1
      211 SETTABLEKS                       R25 R24 K60 ["TextWrapped"]
      213 SETTABLEKS                       R5 R24 K59 ["Text"]
      215 NEWCLOSURE                       R25 P1
      216 CAPTURE                          UPVAL U8
      217 CAPTURE                          REF R6
      218 SETTABLEKS                       R25 R24 K36 ["OnClick"]
      220 NAMECALL                         R25 R8 K30 ["getNextOrder"]
      222 CALL                             R25 1 1
      223 SETTABLEKS                       R25 R24 K19 ["LayoutOrder"]
      225 CALL                             R22 2 1
      226 SETTABLEKS                       R22 R21 K11 ["LinkText"]
      228 CALL                             R18 3 1
      229 SETTABLEKS                       R18 R17 K32 ["TextContents"]
      231 CALL                             R14 3 1
      232 SETTABLEKS                       R14 R13 K27 ["ToggleRewardedVideoAds"]
      234 CALL                             R10 3 -1
      235 CLOSEUPVALS                      R6
      236 RETURN                           R10 -1

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
       22 GETTABLEKS                       R3 R3 K7 ["Framework"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R2 K8 ["UI"]
       27 GETTABLEKS                       R4 R3 K9 ["Pane"]
       29 GETTABLEKS                       R5 R3 K10 ["TextLabel"]
       31 GETTABLEKS                       R6 R3 K11 ["LinkText"]
       33 GETTABLEKS                       R7 R3 K12 ["TitledFrame"]
       35 GETTABLEKS                       R8 R3 K13 ["ToggleButton"]
       37 GETIMPORT                        R9 K15 [game]
       39 LOADK                            R11 K16 ["BrowserService"]
       40 NAMECALL                         R9 R9 K17 ["GetService"]
       42 CALL                             R9 2 1
       43 GETTABLEKS                       R10 R1 K18 ["PureComponent"]
       45 LOADK                            R12 K19 ["RewardedOnDemandAdsSetting"]
       46 NAMECALL                         R10 R10 K20 ["extend"]
       48 CALL                             R10 2 1
       49 DUPTABLE                         R11 K25 [{"eligible", "appeal", "wasEligible", "ineligible"}]
       50 GETIMPORT                        R12 K15 [game]
       52 LOADK                            R14 K26 ["RewardedVideoAdsDocumentationUrl"]
       53 LOADK                            R15 K27 ["https://www.roblox.com"]
       54 NAMECALL                         R12 R12 K28 ["DefineFastString"]
       56 CALL                             R12 3 1
       57 SETTABLEKS                       R12 R11 K21 ["eligible"]
       59 GETIMPORT                        R12 K15 [game]
       61 LOADK                            R14 K29 ["RewardedVideoAdsModerationAppealUrl"]
       62 LOADK                            R15 K27 ["https://www.roblox.com"]
       63 NAMECALL                         R12 R12 K28 ["DefineFastString"]
       65 CALL                             R12 3 1
       66 SETTABLEKS                       R12 R11 K22 ["appeal"]
       68 GETIMPORT                        R12 K15 [game]
       70 LOADK                            R14 K30 ["RewardedVideoAdsWasEligibleDocumentationUrl"]
       71 LOADK                            R15 K27 ["https://www.roblox.com"]
       72 NAMECALL                         R12 R12 K28 ["DefineFastString"]
       74 CALL                             R12 3 1
       75 SETTABLEKS                       R12 R11 K23 ["wasEligible"]
       77 GETIMPORT                        R12 K15 [game]
       79 LOADK                            R14 K31 ["RewardedVideoAdsIneligibleDocumentationUrl"]
       80 LOADK                            R15 K27 ["https://www.roblox.com"]
       81 NAMECALL                         R12 R12 K28 ["DefineFastString"]
       83 CALL                             R12 3 1
       84 SETTABLEKS                       R12 R11 K24 ["ineligible"]
       86 DUPCLOSURE                       R12 K32 [PROTO_0]
       87 DUPCLOSURE                       R13 K33 [PROTO_1]
       88 CAPTURE                          VAL R11
       89 DUPCLOSURE                       R14 K34 [PROTO_2]
       90 SETTABLEKS                       R14 R10 K35 ["init"]
       92 DUPCLOSURE                       R14 K36 [PROTO_6]
       93 CAPTURE                          VAL R13
       94 CAPTURE                          VAL R2
       95 CAPTURE                          VAL R1
       96 CAPTURE                          VAL R4
       97 CAPTURE                          VAL R7
       98 CAPTURE                          VAL R8
       99 CAPTURE                          VAL R5
      100 CAPTURE                          VAL R6
      101 CAPTURE                          VAL R9
      102 SETTABLEKS                       R14 R10 K37 ["render"]
      104 RETURN                           R10 1
