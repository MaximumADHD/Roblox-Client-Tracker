PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["Progress"]
        6 GETTABLEKS                       R4 R1 K3 ["ProgressGoal"]
        8 DIV                              R5 R3 R4
        9 LOADK                            R8 K4 ["ImportQueue"]
       10 LOADK                            R9 K5 ["FilesRemaining2"]
       11 DUPTABLE                         R10 K8 [{"currentFileIndex", "totalFiles"}]
       12 FASTCALL1                        MATH_CEIL R3 ; [+3]
       13 MOVE                             R13 R3
       14 GETIMPORT                        R12 K11 [math.ceil]
       16 CALL                             R12 1 1
       17 FASTCALL1                        TOSTRING R12 ; [+2]
       18 GETIMPORT                        R11 K13 [tostring]
       20 CALL                             R11 1 1
       21 SETTABLEKS                       R11 R10 K6 ["currentFileIndex"]
       23 FASTCALL1                        TOSTRING R4 ; [+3]
       24 MOVE                             R12 R4
       25 GETIMPORT                        R11 K13 [tostring]
       27 CALL                             R11 1 1
       28 SETTABLEKS                       R11 R10 K7 ["totalFiles"]
       30 NAMECALL                         R6 R2 K14 ["getText"]
       32 CALL                             R6 4 1
       33 GETTABLEKS                       R8 R0 K0 ["props"]
       35 GETTABLEKS                       R7 R8 K15 ["Parsing"]
       37 JUMPIFNOT                        R7 ; [+13]
       38 LOADK                            R9 K4 ["ImportQueue"]
       39 LOADK                            R10 K16 ["ParsingFiles"]
       40 NAMECALL                         R7 R2 K14 ["getText"]
       42 CALL                             R7 3 1
       43 LOADK                            R9 K17 ["%* - %*"]
       44 MOVE                             R11 R6
       45 MOVE                             R12 R7
       46 NAMECALL                         R9 R9 K18 ["format"]
       48 CALL                             R9 3 1
       49 MOVE                             R8 R9
       50 RETURN                           R8 1
       51 GETTABLEKS                       R8 R0 K0 ["props"]
       53 GETTABLEKS                       R7 R8 K19 ["Uploading"]
       55 JUMPIFNOT                        R7 ; [+22]
       56 LOADK                            R9 K4 ["ImportQueue"]
       57 LOADK                            R10 K20 ["Complete"]
       58 NAMECALL                         R7 R2 K14 ["getText"]
       60 CALL                             R7 3 1
       61 LOADK                            R9 K21 ["%* - %*%% %*"]
       62 MOVE                             R11 R6
       63 MULK                             R14 R5 K22 [100]
       64 FASTCALL1                        MATH_FLOOR R14 ; [+2]
       65 GETIMPORT                        R13 K24 [math.floor]
       67 CALL                             R13 1 1
       68 FASTCALL1                        TOSTRING R13 ; [+2]
       69 GETIMPORT                        R12 K13 [tostring]
       71 CALL                             R12 1 1
       72 MOVE                             R13 R7
       73 NAMECALL                         R9 R9 K18 ["format"]
       75 CALL                             R9 4 1
       76 MOVE                             R8 R9
       77 RETURN                           R8 1
       78 RETURN                           R6 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Parsing"]
        4 JUMPIF                           R2 ; [+5]
        5 GETTABLEKS                       R2 R1 K2 ["Uploading"]
        7 JUMPIF                           R2 ; [+2]
        8 LOADNIL                          R2
        9 RETURN                           R2 1
       10 GETTABLEKS                       R2 R1 K3 ["Progress"]
       12 GETTABLEKS                       R3 R1 K4 ["ProgressGoal"]
       14 JUMPIFEQKNIL                     R2 ; [+3]
       16 JUMPIFNOTEQKNIL                  R3 ; [+3]
       18 LOADNIL                          R4
       19 RETURN                           R4 1
       20 JUMPIFNOTEQKN                    R3 K5 [0] ; [+3]
       22 LOADNIL                          R4
       23 RETURN                           R4 1
       24 NAMECALL                         R4 R0 K6 ["_getText"]
       26 CALL                             R4 1 1
       27 GETTABLEKS                       R6 R1 K7 ["Stylizer"]
       29 GETTABLEKS                       R5 R6 K8 ["ImportQueue"]
       31 GETTABLEKS                       R6 R5 K9 ["Padding"]
       33 GETTABLEKS                       R7 R5 K10 ["LoadingBarWidth"]
       35 GETUPVAL                         R9 0
       36 GETTABLEKS                       R8 R9 K11 ["createElement"]
       38 GETUPVAL                         R9 1
       39 DUPTABLE                         R10 K18 [{"Size", "LayoutOrder", "Layout", "VerticalAlignment", "Padding", "Spacing", "Style"}]
       40 GETTABLEKS                       R11 R1 K12 ["Size"]
       42 SETTABLEKS                       R11 R10 K12 ["Size"]
       44 GETTABLEKS                       R11 R1 K13 ["LayoutOrder"]
       46 SETTABLEKS                       R11 R10 K13 ["LayoutOrder"]
       48 GETIMPORT                        R11 K22 [Enum.FillDirection.Vertical]
       50 SETTABLEKS                       R11 R10 K14 ["Layout"]
       52 GETIMPORT                        R11 K24 [Enum.VerticalAlignment.Top]
       54 SETTABLEKS                       R11 R10 K15 ["VerticalAlignment"]
       56 SETTABLEKS                       R6 R10 K9 ["Padding"]
       58 SETTABLEKS                       R6 R10 K16 ["Spacing"]
       60 LOADK                            R11 K25 ["Box"]
       61 SETTABLEKS                       R11 R10 K17 ["Style"]
       63 DUPTABLE                         R11 K28 [{"LoadingBar", "LoadingText"}]
       64 GETUPVAL                         R13 0
       65 GETTABLEKS                       R12 R13 K11 ["createElement"]
       67 GETUPVAL                         R13 2
       68 DUPTABLE                         R14 K29 [{"LayoutOrder", "Size", "Progress"}]
       69 LOADN                            R15 1
       70 SETTABLEKS                       R15 R14 K13 ["LayoutOrder"]
       72 GETIMPORT                        R15 K32 [UDim2.new]
       74 LOADN                            R16 1
       75 LOADN                            R17 0
       76 LOADN                            R18 0
       77 MOVE                             R19 R7
       78 CALL                             R15 4 1
       79 SETTABLEKS                       R15 R14 K12 ["Size"]
       81 DIV                              R15 R2 R3
       82 SETTABLEKS                       R15 R14 K3 ["Progress"]
       84 CALL                             R12 2 1
       85 SETTABLEKS                       R12 R11 K26 ["LoadingBar"]
       87 GETUPVAL                         R13 0
       88 GETTABLEKS                       R12 R13 K11 ["createElement"]
       90 GETUPVAL                         R13 3
       91 DUPTABLE                         R14 K37 [{"LayoutOrder", "Size", "AutomaticSize", "Text", "TextXAlignment", "TextWrapped"}]
       92 LOADN                            R15 2
       93 SETTABLEKS                       R15 R14 K13 ["LayoutOrder"]
       95 GETIMPORT                        R15 K32 [UDim2.new]
       97 LOADN                            R16 1
       98 LOADN                            R17 0
       99 LOADN                            R18 0
      100 LOADN                            R19 0
      101 CALL                             R15 4 1
      102 SETTABLEKS                       R15 R14 K12 ["Size"]
      104 GETIMPORT                        R15 K39 [Enum.AutomaticSize.Y]
      106 SETTABLEKS                       R15 R14 K33 ["AutomaticSize"]
      108 SETTABLEKS                       R4 R14 K34 ["Text"]
      110 GETIMPORT                        R15 K41 [Enum.TextXAlignment.Left]
      112 SETTABLEKS                       R15 R14 K35 ["TextXAlignment"]
      114 LOADB                            R15 1
      115 SETTABLEKS                       R15 R14 K36 ["TextWrapped"]
      117 CALL                             R12 2 1
      118 SETTABLEKS                       R12 R11 K27 ["LoadingText"]
      120 CALL                             R8 3 -1
      121 RETURN                           R8 -1

PROTO_2:
        0 DUPTABLE                         R1 K5 [{"SessionQueue", "Progress", "ProgressGoal", "Uploading", "Parsing"}]
        1 GETTABLEKS                       R3 R0 K6 ["Sessions"]
        3 GETTABLEKS                       R2 R3 K7 ["sessionQueue"]
        5 SETTABLEKS                       R2 R1 K0 ["SessionQueue"]
        7 GETTABLEKS                       R3 R0 K6 ["Sessions"]
        9 GETTABLEKS                       R2 R3 K8 ["progress"]
       11 SETTABLEKS                       R2 R1 K1 ["Progress"]
       13 GETTABLEKS                       R3 R0 K6 ["Sessions"]
       15 GETTABLEKS                       R2 R3 K9 ["progressGoal"]
       17 SETTABLEKS                       R2 R1 K2 ["ProgressGoal"]
       19 GETTABLEKS                       R3 R0 K6 ["Sessions"]
       21 GETTABLEKS                       R2 R3 K10 ["uploading"]
       23 SETTABLEKS                       R2 R1 K3 ["Uploading"]
       25 GETTABLEKS                       R3 R0 K6 ["Sessions"]
       27 GETTABLEKS                       R2 R3 K11 ["parsing"]
       29 SETTABLEKS                       R2 R1 K4 ["Parsing"]
       31 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["RoactCompat"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["RoactRodux"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["withContext"]
       32 GETTABLEKS                       R6 R4 K12 ["Localization"]
       34 GETTABLEKS                       R8 R3 K13 ["Style"]
       36 GETTABLEKS                       R7 R8 K14 ["Stylizer"]
       38 GETTABLEKS                       R8 R3 K15 ["UI"]
       40 GETTABLEKS                       R9 R8 K16 ["Pane"]
       42 GETTABLEKS                       R10 R8 K17 ["LoadingBar"]
       44 GETTABLEKS                       R11 R8 K18 ["TextLabel"]
       46 GETTABLEKS                       R12 R1 K19 ["PureComponent"]
       48 LOADK                            R14 K20 ["ImportProgressBar"]
       49 NAMECALL                         R12 R12 K21 ["extend"]
       51 CALL                             R12 2 1
       52 DUPCLOSURE                       R13 K22 [PROTO_0]
       53 SETTABLEKS                       R13 R12 K23 ["_getText"]
       55 DUPCLOSURE                       R13 K24 [PROTO_1]
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R9
       58 CAPTURE                          VAL R10
       59 CAPTURE                          VAL R11
       60 SETTABLEKS                       R13 R12 K25 ["render"]
       62 MOVE                             R13 R5
       63 DUPTABLE                         R14 K26 [{"Localization", "Stylizer"}]
       64 SETTABLEKS                       R6 R14 K12 ["Localization"]
       66 SETTABLEKS                       R7 R14 K14 ["Stylizer"]
       68 CALL                             R13 1 1
       69 MOVE                             R14 R12
       70 CALL                             R13 1 1
       71 MOVE                             R12 R13
       72 DUPCLOSURE                       R13 K27 [PROTO_2]
       73 GETTABLEKS                       R14 R2 K28 ["connect"]
       75 MOVE                             R15 R13
       76 LOADNIL                          R16
       77 CALL                             R14 2 1
       78 MOVE                             R15 R12
       79 CALL                             R14 1 -1
       80 RETURN                           R14 -1
