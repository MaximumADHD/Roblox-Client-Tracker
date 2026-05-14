MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Dash"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K8 ["SharedFlags"]
       20 GETTABLEKS                       R3 R3 K9 ["getFFlagDevFrameworkHighlighterHooks"]
       22 CALL                             R2 1 1
       23 CALL                             R2 0 1
       24 DUPTABLE                         R3 K17 [{"TooltipSettings", "useMenu", "useTooltip", "useWidgets", "useDialog", "useDialogDetailsAction", "useDialogWidget"}]
       25 GETIMPORT                        R4 K6 [require]
       27 GETIMPORT                        R5 K1 [script]
       29 GETTABLEKS                       R5 R5 K12 ["useTooltip"]
       31 GETTABLEKS                       R5 R5 K10 ["TooltipSettings"]
       33 CALL                             R4 1 1
       34 SETTABLEKS                       R4 R3 K10 ["TooltipSettings"]
       36 GETIMPORT                        R4 K6 [require]
       38 GETIMPORT                        R5 K1 [script]
       40 GETTABLEKS                       R5 R5 K11 ["useMenu"]
       42 CALL                             R4 1 1
       43 SETTABLEKS                       R4 R3 K11 ["useMenu"]
       45 GETIMPORT                        R4 K6 [require]
       47 GETIMPORT                        R5 K1 [script]
       49 GETTABLEKS                       R5 R5 K12 ["useTooltip"]
       51 CALL                             R4 1 1
       52 SETTABLEKS                       R4 R3 K12 ["useTooltip"]
       54 GETIMPORT                        R4 K6 [require]
       56 GETIMPORT                        R5 K1 [script]
       58 GETTABLEKS                       R5 R5 K13 ["useWidgets"]
       60 CALL                             R4 1 1
       61 SETTABLEKS                       R4 R3 K13 ["useWidgets"]
       63 GETIMPORT                        R4 K6 [require]
       65 GETIMPORT                        R5 K1 [script]
       67 GETTABLEKS                       R5 R5 K14 ["useDialog"]
       69 CALL                             R4 1 1
       70 SETTABLEKS                       R4 R3 K14 ["useDialog"]
       72 GETIMPORT                        R4 K6 [require]
       74 GETIMPORT                        R5 K1 [script]
       76 GETTABLEKS                       R5 R5 K15 ["useDialogDetailsAction"]
       78 CALL                             R4 1 1
       79 SETTABLEKS                       R4 R3 K15 ["useDialogDetailsAction"]
       81 GETIMPORT                        R4 K6 [require]
       83 GETIMPORT                        R5 K1 [script]
       85 GETTABLEKS                       R5 R5 K16 ["useDialogWidget"]
       87 CALL                             R4 1 1
       88 SETTABLEKS                       R4 R3 K16 ["useDialogWidget"]
       90 JUMPIFNOT                        R2 ; [+17]
       91 GETTABLEKS                       R4 R1 K18 ["join"]
       93 MOVE                             R5 R3
       94 DUPTABLE                         R6 K20 [{"useStudioThemeColorsForHighlighter"}]
       95 GETIMPORT                        R7 K6 [require]
       97 GETTABLEKS                       R8 R0 K21 ["Util"]
       99 GETTABLEKS                       R8 R8 K22 ["Highlighter"]
      101 GETTABLEKS                       R8 R8 K23 ["useStudioThemeColors"]
      103 CALL                             R7 1 1
      104 SETTABLEKS                       R7 R6 K19 ["useStudioThemeColorsForHighlighter"]
      106 CALL                             R4 2 1
      107 MOVE                             R3 R4
      108 RETURN                           R3 1
