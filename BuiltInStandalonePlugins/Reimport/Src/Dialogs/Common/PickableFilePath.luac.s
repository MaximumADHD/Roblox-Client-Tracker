PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["doPickFile"]
        3 CALL                             R0 0 1
        4 JUMPIFEQKNIL                     R0 ; [+3]
        6 JUMPIFNOTEQKS                    R0 K1 [""] ; [+2]
        8 RETURN                           R0 0
        9 GETUPVAL                         R1 1
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K2 ["onFilepathChanged"]
       15 MOVE                             R2 R0
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["useState"]
        7 GETTABLEKS                       R4 R0 K3 ["filepath"]
        9 ORK                              R3 R4 K2 [""]
       10 CALL                             R2 1 2
       11 GETUPVAL                         R4 2
       12 GETUPVAL                         R5 3
       13 GETTABLEKS                       R5 R5 K4 ["View"]
       15 DUPTABLE                         R6 K7 [{"tag", "onActivated"}]
       16 LOADK                            R7 K8 ["size-full-800 bg-shift-100 radius-small padding-small align-y-center stroke-default data-testid=pickable-filepath-click-target"]
       17 SETTABLEKS                       R7 R6 K5 ["tag"]
       19 NEWCLOSURE                       R7 P0
       20 CAPTURE                          VAL R0
       21 CAPTURE                          VAL R3
       22 SETTABLEKS                       R7 R6 K6 ["onActivated"]
       24 DUPTABLE                         R7 K10 [{"filepathText"}]
       25 GETUPVAL                         R8 2
       26 GETUPVAL                         R9 3
       27 GETTABLEKS                       R9 R9 K11 ["Text"]
       29 DUPTABLE                         R10 K13 [{"Text", "TextTruncate", "tag"}]
       30 JUMPIFNOT                        R2 ; [+2]
       31 JUMPIFNOTEQKS                    R2 K2 [""] ; [+12]
       33 GETUPVAL                         R12 4
       34 CALL                             R12 0 1
       35 JUMPIFNOT                        R12 ; [+6]
       36 LOADK                            R13 K14 ["ConfigDialog"]
       37 LOADK                            R14 K15 ["SelectFile"]
       38 NAMECALL                         R11 R1 K16 ["getText"]
       40 CALL                             R11 3 1
       41 JUMP                             ; [+3]
       42 LOADK                            R11 K17 ["Click to select file"]
       43 JUMP                             ; [+1]
       44 MOVE                             R11 R2
       45 SETTABLEKS                       R11 R10 K11 ["Text"]
       47 GETIMPORT                        R11 K20 [Enum.TextTruncate.SplitWord]
       49 SETTABLEKS                       R11 R10 K12 ["TextTruncate"]
       51 LOADK                            R11 K21 ["content-link text-body-medium auto-xy text-align-x-left text-align-y-center"]
       52 SETTABLEKS                       R11 R10 K5 ["tag"]
       54 CALL                             R8 2 1
       55 SETTABLEKS                       R8 R7 K9 ["filepathText"]
       57 CALL                             R4 3 -1
       58 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReimportPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["createElement"]
       30 GETTABLEKS                       R5 R2 K11 ["ContextServices"]
       32 GETTABLEKS                       R6 R5 K12 ["Localization"]
       34 GETIMPORT                        R7 K5 [require]
       36 GETTABLEKS                       R8 R0 K13 ["Flags"]
       38 GETTABLEKS                       R8 R8 K14 ["GetFFlagReimportLocalizeDialogs"]
       40 CALL                             R7 1 1
       41 DUPCLOSURE                       R8 K15 [PROTO_1]
       42 CAPTURE                          VAL R6
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R7
       47 RETURN                           R8 1
