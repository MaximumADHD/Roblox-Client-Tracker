PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R2 R1 K2 ["Typography"]
        8 GETTABLEKS                       R2 R2 K3 ["BodySmall"]
       10 GETTABLEKS                       R3 R1 K4 ["Color"]
       12 GETTABLEKS                       R3 R3 K5 ["Content"]
       14 GETTABLEKS                       R3 R3 K6 ["Emphasis"]
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R4 R4 K7 ["createElement"]
       19 GETUPVAL                         R5 2
       20 DUPTABLE                         R6 K11 [{["tag"] = "row align-x-right size-full-0 auto-y padding-bottom-large padding-left-large", ["LayoutOrder"]}]
       21 GETTABLEKS                       R7 R0 K10 ["LayoutOrder"]
       23 SETTABLEKS                       R7 R6 K10 ["LayoutOrder"]
       25 DUPTABLE                         R7 K13 [{"Bubble"}]
       26 GETUPVAL                         R8 1
       27 GETTABLEKS                       R8 R8 K7 ["createElement"]
       29 GETUPVAL                         R9 2
       30 DUPTABLE                         R10 K16 [{["tag"] = "col auto-xy padding-medium radius-large bg-shift-300", ["sizeConstraint"]}]
       31 DUPTABLE                         R11 K18 [{"MaxSize"}]
       32 GETIMPORT                        R12 K21 [Vector2.new]
       34 LOADN                            R13 280
       35 LOADK                            R14 K22 [Infinity]
       36 CALL                             R12 2 1
       37 SETTABLEKS                       R12 R11 K17 ["MaxSize"]
       39 SETTABLEKS                       R11 R10 K15 ["sizeConstraint"]
       41 DUPTABLE                         R11 K24 [{"Prompt"}]
       42 GETUPVAL                         R13 3
       43 CALL                             R13 0 1
       44 JUMPIFNOT                        R13 ; [+41]
       45 GETUPVAL                         R12 1
       46 GETTABLEKS                       R12 R12 K7 ["createElement"]
       48 LOADK                            R13 K25 ["TextBox"]
       49 DUPTABLE                         R14 K43 [{["Text"], ["AutomaticSize"], ["FontFace"], ["TextSize"], ["LineHeight"], ["TextColor3"], ["TextTransparency"], ["TextXAlignment"], ["TextWrapped"] = True, ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["ClearTextOnFocus"] = False, ["TextEditable"] = False}]
       50 GETTABLEKS                       R15 R0 K44 ["promptText"]
       52 SETTABLEKS                       R15 R14 K26 ["Text"]
       54 GETIMPORT                        R15 K47 [Enum.AutomaticSize.XY]
       56 SETTABLEKS                       R15 R14 K27 ["AutomaticSize"]
       58 GETUPVAL                         R15 4
       59 GETTABLEKS                       R16 R2 K48 ["Font"]
       61 CALL                             R15 1 1
       62 SETTABLEKS                       R15 R14 K28 ["FontFace"]
       64 GETTABLEKS                       R15 R2 K49 ["FontSize"]
       66 SETTABLEKS                       R15 R14 K29 ["TextSize"]
       68 GETTABLEKS                       R15 R2 K30 ["LineHeight"]
       70 SETTABLEKS                       R15 R14 K30 ["LineHeight"]
       72 GETTABLEKS                       R15 R3 K50 ["Color3"]
       74 SETTABLEKS                       R15 R14 K31 ["TextColor3"]
       76 GETTABLEKS                       R15 R3 K51 ["Transparency"]
       78 SETTABLEKS                       R15 R14 K32 ["TextTransparency"]
       80 GETIMPORT                        R15 K53 [Enum.TextXAlignment.Left]
       82 SETTABLEKS                       R15 R14 K33 ["TextXAlignment"]
       84 CALL                             R12 2 1
       85 JUMP                             ; [+10]
       86 GETUPVAL                         R12 1
       87 GETTABLEKS                       R12 R12 K7 ["createElement"]
       89 GETUPVAL                         R13 5
       90 DUPTABLE                         R14 K55 [{["Text"], ["tag"] = "auto-xy text-body-small text-wrap text-align-x-left content-emphasis"}]
       91 GETTABLEKS                       R15 R0 K44 ["promptText"]
       93 SETTABLEKS                       R15 R14 K26 ["Text"]
       95 CALL                             R12 2 1
       96 SETTABLEKS                       R12 R11 K23 ["Prompt"]
       98 CALL                             R8 3 1
       99 SETTABLEKS                       R8 R7 K12 ["Bubble"]
      101 CALL                             R4 3 -1
      102 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
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
       21 GETTABLEKS                       R3 R2 K9 ["Text"]
       23 GETTABLEKS                       R4 R2 K10 ["View"]
       25 GETTABLEKS                       R5 R2 K11 ["Utility"]
       27 GETTABLEKS                       R5 R5 K12 ["normalizeFontFace"]
       29 GETIMPORT                        R6 K5 [require]
       31 GETTABLEKS                       R7 R0 K13 ["Src"]
       33 GETTABLEKS                       R7 R7 K14 ["Flags"]
       35 GETTABLEKS                       R7 R7 K15 ["getFFlagAvatarPreviewerAvatarCreationSelectablePrompt"]
       37 CALL                             R6 1 1
       38 DUPCLOSURE                       R7 K16 [PROTO_0]
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R6
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R3
       45 RETURN                           R7 1
