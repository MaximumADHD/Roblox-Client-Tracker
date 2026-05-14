PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKS                       R0 K0 ["mapping"] ; [+4]
        3 GETUPVAL                         R0 1
        4 LOADK                            R1 K0 ["mapping"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKS                       R0 K0 ["tpose"] ; [+4]
        3 GETUPVAL                         R0 1
        4 LOADK                            R1 K0 ["tpose"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["visible"]
        2 JUMPIFNOTEQKB                    R1 FALSE ; [+3]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 GETTABLEKS                       R1 R0 K1 ["mode"]
        8 GETTABLEKS                       R2 R0 K2 ["onSelect"]
       10 GETTABLEKS                       R3 R0 K3 ["localization"]
       12 NEWTABLE                         R4 0 2
       14 DUPTABLE                         R5 K10 [{"Type", "Tooltip", "TooltipDescription", "Icon", "Selected", "OnClick"}]
       15 LOADK                            R6 K11 ["Button"]
       16 SETTABLEKS                       R6 R5 K4 ["Type"]
       18 LOADK                            R8 K12 ["Mode"]
       19 LOADK                            R9 K13 ["MappingTooltip"]
       20 NAMECALL                         R6 R3 K14 ["getText"]
       22 CALL                             R6 3 1
       23 SETTABLEKS                       R6 R5 K5 ["Tooltip"]
       25 LOADK                            R8 K12 ["Mode"]
       26 LOADK                            R9 K13 ["MappingTooltip"]
       27 NAMECALL                         R6 R3 K14 ["getText"]
       29 CALL                             R6 3 1
       30 SETTABLEKS                       R6 R5 K6 ["TooltipDescription"]
       32 GETUPVAL                         R6 0
       33 GETTABLEKS                       R6 R6 K15 ["MAPPING"]
       35 SETTABLEKS                       R6 R5 K7 ["Icon"]
       37 JUMPIFEQKS                       R1 K16 ["mapping"] ; [+2]
       39 LOADB                            R6 0 +1
       40 LOADB                            R6 1
       41 SETTABLEKS                       R6 R5 K8 ["Selected"]
       43 NEWCLOSURE                       R6 P0
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R2
       46 SETTABLEKS                       R6 R5 K9 ["OnClick"]
       48 DUPTABLE                         R6 K10 [{"Type", "Tooltip", "TooltipDescription", "Icon", "Selected", "OnClick"}]
       49 LOADK                            R7 K11 ["Button"]
       50 SETTABLEKS                       R7 R6 K4 ["Type"]
       52 LOADK                            R9 K12 ["Mode"]
       53 LOADK                            R10 K17 ["TPose"]
       54 NAMECALL                         R7 R3 K14 ["getText"]
       56 CALL                             R7 3 1
       57 SETTABLEKS                       R7 R6 K5 ["Tooltip"]
       59 LOADK                            R9 K12 ["Mode"]
       60 LOADK                            R10 K18 ["TPoseTooltip"]
       61 NAMECALL                         R7 R3 K14 ["getText"]
       63 CALL                             R7 3 1
       64 SETTABLEKS                       R7 R6 K6 ["TooltipDescription"]
       66 GETUPVAL                         R7 0
       67 GETTABLEKS                       R7 R7 K19 ["TPOSE"]
       69 SETTABLEKS                       R7 R6 K7 ["Icon"]
       71 JUMPIFEQKS                       R1 K20 ["tpose"] ; [+2]
       73 LOADB                            R7 0 +1
       74 LOADB                            R7 1
       75 SETTABLEKS                       R7 R6 K8 ["Selected"]
       77 NEWCLOSURE                       R7 P1
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R2
       80 SETTABLEKS                       R7 R6 K9 ["OnClick"]
       82 SETLIST                          R4 R5 2 [1]
       84 GETUPVAL                         R5 1
       85 GETTABLEKS                       R5 R5 K21 ["createElement"]
       87 GETUPVAL                         R6 2
       88 GETTABLEKS                       R6 R6 K22 ["Toolbar"]
       90 DUPTABLE                         R7 K26 [{"InitialPosition", "VerticalItems", "DisplayOrder"}]
       91 LOADK                            R8 K27 ["Top"]
       92 SETTABLEKS                       R8 R7 K23 ["InitialPosition"]
       94 SETTABLEKS                       R4 R7 K24 ["VerticalItems"]
       96 LOADN                            R8 10
       97 SETTABLEKS                       R8 R7 K25 ["DisplayOrder"]
       99 CALL                             R5 2 -1
      100 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AdaptiveAnimationSupport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ViewportToolingFramework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K9 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Resources"]
       34 GETTABLEKS                       R5 R5 K12 ["Constants"]
       36 CALL                             R4 1 1
       37 DUPCLOSURE                       R5 K13 [PROTO_2]
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R2
       41 RETURN                           R5 1
