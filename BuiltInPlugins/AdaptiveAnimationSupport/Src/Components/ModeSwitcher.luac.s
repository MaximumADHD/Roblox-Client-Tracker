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
       14 DUPTABLE                         R5 K11 [{["Type"] = "Button", ["Tooltip"], ["TooltipDescription"], ["Icon"], ["Selected"], ["OnClick"]}]
       15 LOADK                            R8 K12 ["Mode"]
       16 LOADK                            R9 K13 ["MappingTooltip"]
       17 NAMECALL                         R6 R3 K14 ["getText"]
       19 CALL                             R6 3 1
       20 SETTABLEKS                       R6 R5 K6 ["Tooltip"]
       22 LOADK                            R8 K12 ["Mode"]
       23 LOADK                            R9 K13 ["MappingTooltip"]
       24 NAMECALL                         R6 R3 K14 ["getText"]
       26 CALL                             R6 3 1
       27 SETTABLEKS                       R6 R5 K7 ["TooltipDescription"]
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R6 R6 K15 ["MAPPING"]
       32 SETTABLEKS                       R6 R5 K8 ["Icon"]
       34 JUMPIFEQKS                       R1 K16 ["mapping"] ; [+2]
       36 LOADB                            R6 0 +1
       37 LOADB                            R6 1
       38 SETTABLEKS                       R6 R5 K9 ["Selected"]
       40 NEWCLOSURE                       R6 P0
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R2
       43 SETTABLEKS                       R6 R5 K10 ["OnClick"]
       45 DUPTABLE                         R6 K11 [{["Type"] = "Button", ["Tooltip"], ["TooltipDescription"], ["Icon"], ["Selected"], ["OnClick"]}]
       46 LOADK                            R9 K12 ["Mode"]
       47 LOADK                            R10 K17 ["TPose"]
       48 NAMECALL                         R7 R3 K14 ["getText"]
       50 CALL                             R7 3 1
       51 SETTABLEKS                       R7 R6 K6 ["Tooltip"]
       53 LOADK                            R9 K12 ["Mode"]
       54 LOADK                            R10 K18 ["TPoseTooltip"]
       55 NAMECALL                         R7 R3 K14 ["getText"]
       57 CALL                             R7 3 1
       58 SETTABLEKS                       R7 R6 K7 ["TooltipDescription"]
       60 GETUPVAL                         R7 0
       61 GETTABLEKS                       R7 R7 K19 ["TPOSE"]
       63 SETTABLEKS                       R7 R6 K8 ["Icon"]
       65 JUMPIFEQKS                       R1 K20 ["tpose"] ; [+2]
       67 LOADB                            R7 0 +1
       68 LOADB                            R7 1
       69 SETTABLEKS                       R7 R6 K9 ["Selected"]
       71 NEWCLOSURE                       R7 P1
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R2
       74 SETTABLEKS                       R7 R6 K10 ["OnClick"]
       76 SETLIST                          R4 R5 2 [1]
       78 GETUPVAL                         R5 1
       79 GETTABLEKS                       R5 R5 K21 ["createElement"]
       81 GETUPVAL                         R6 2
       82 GETTABLEKS                       R6 R6 K22 ["Toolbar"]
       84 DUPTABLE                         R7 K28 [{["InitialPosition"] = "Top", ["VerticalItems"], ["DisplayOrder"] = 10}]
       85 SETTABLEKS                       R4 R7 K25 ["VerticalItems"]
       87 CALL                             R5 2 -1
       88 RETURN                           R5 -1

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
