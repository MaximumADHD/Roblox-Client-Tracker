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
       22 MOVE                             R3 R2
       23 LOADK                            R4 K9 [".Component-CancelSubmitFooter"]
       24 DUPTABLE                         R5 K12 [{["BackgroundTransparency"] = 1}]
       25 NEWTABLE                         R6 0 4
       27 MOVE                             R7 R2
       28 LOADK                            R8 K13 ["::UIPadding"]
       29 DUPTABLE                         R9 K15 [{"PaddingTop"}]
       30 GETIMPORT                        R10 K18 [UDim.new]
       32 LOADN                            R11 0
       33 LOADN                            R12 7
       34 CALL                             R10 2 1
       35 SETTABLEKS                       R10 R9 K14 ["PaddingTop"]
       37 CALL                             R7 2 1
       38 MOVE                             R8 R2
       39 LOADK                            R9 K19 [">> TextButton"]
       40 DUPTABLE                         R10 K28 [{["Size"], ["AutomaticSize"], ["BorderSizePixel"] = 0, ["TextSize"] = "$FontSizeM", ["Font"] = "$FontBold"}]
       41 GETIMPORT                        R11 K31 [UDim2.fromOffset]
       43 LOADN                            R12 62
       44 LOADN                            R13 28
       45 CALL                             R11 2 1
       46 SETTABLEKS                       R11 R10 K20 ["Size"]
       48 GETIMPORT                        R11 K34 [Enum.AutomaticSize.X]
       50 SETTABLEKS                       R11 R10 K21 ["AutomaticSize"]
       52 NEWTABLE                         R11 0 1
       54 MOVE                             R12 R2
       55 LOADK                            R13 K35 ["::UICorner"]
       56 DUPTABLE                         R14 K37 [{"CornerRadius"}]
       57 GETIMPORT                        R15 K18 [UDim.new]
       59 LOADN                            R16 0
       60 LOADN                            R17 8
       61 CALL                             R15 2 1
       62 SETTABLEKS                       R15 R14 K36 ["CornerRadius"]
       64 CALL                             R12 2 -1
       65 SETLIST                          R11 R12 -1 [1]
       67 CALL                             R8 3 1
       68 MOVE                             R9 R2
       69 LOADK                            R10 K38 ["> #SubmitButton"]
       70 DUPTABLE                         R11 K43 [{["TextColor3"] = "$SemanticColorContentStaticLight", ["BackgroundTransparency"] = 0, ["BackgroundColor3"] = "$PrimaryMain"}]
       71 NEWTABLE                         R12 0 3
       73 MOVE                             R13 R2
       74 LOADK                            R14 K44 [".Disabled"]
       75 DUPTABLE                         R15 K47 [{["BackgroundColor3"] = "$SemanticColorContentDisabled", ["TextColor3"] = "$TextDisabled"}]
       76 CALL                             R13 2 1
       77 MOVE                             R14 R2
       78 LOADK                            R15 K48 [":hover"]
       79 DUPTABLE                         R16 K50 [{["BackgroundColor3"] = "$PrimaryHoverBackground"}]
       80 CALL                             R14 2 1
       81 MOVE                             R15 R2
       82 LOADK                            R16 K51 [":press"]
       83 DUPTABLE                         R17 K52 [{"BackgroundColor3"}]
       84 GETIMPORT                        R18 K55 [Color3.fromHex]
       86 LOADK                            R19 K56 ["#005D92"]
       87 CALL                             R18 1 1
       88 SETTABLEKS                       R18 R17 K41 ["BackgroundColor3"]
       90 CALL                             R15 2 -1
       91 SETLIST                          R12 R13 -1 [1]
       93 CALL                             R9 3 1
       94 MOVE                             R10 R2
       95 LOADK                            R11 K57 ["> #CancelButton"]
       96 DUPTABLE                         R12 K61 [{["TextColor3"] = "$TextPrimary", ["BackgroundColor3"] = "$SemanticColorActionSecondaryFill", ["BackgroundTransparency"] = "$SemanticColorActionSecondaryFillTransparency"}]
       97 NEWTABLE                         R13 0 2
       99 MOVE                             R14 R2
      100 LOADK                            R15 K48 [":hover"]
      101 DUPTABLE                         R16 K63 [{["BackgroundTransparency"] = "$SemanticColorActionSecondaryFillHoverTransparency"}]
      102 CALL                             R14 2 1
      103 MOVE                             R15 R2
      104 LOADK                            R16 K51 [":press"]
      105 DUPTABLE                         R17 K65 [{["BackgroundTransparency"] = "$SemanticColorActionSecondaryFillPressTransparency"}]
      106 CALL                             R15 2 -1
      107 SETLIST                          R13 R14 -1 [1]
      109 CALL                             R10 3 -1
      110 SETLIST                          R6 R7 -1 [1]
      112 CALL                             R3 3 -1
      113 RETURN                           R3 -1
