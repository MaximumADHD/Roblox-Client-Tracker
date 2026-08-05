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
       15 DUPTABLE                         R6 K10 [{["tag"] = "align-y-center size-full-800 padding-small stroke-default radius-small bg-shift-100", ["testId"] = "pickable-filepath-click-target", ["onActivated"]}]
       16 NEWCLOSURE                       R7 P0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R3
       19 SETTABLEKS                       R7 R6 K9 ["onActivated"]
       21 DUPTABLE                         R7 K12 [{"filepathText"}]
       22 GETUPVAL                         R8 2
       23 GETUPVAL                         R9 3
       24 GETTABLEKS                       R9 R9 K13 ["Text"]
       26 DUPTABLE                         R10 K16 [{["Text"], ["TextTruncate"], ["tag"] = "auto-xy text-body-medium text-align-x-left text-align-y-center content-link"}]
       27 JUMPIFNOT                        R2 ; [+2]
       28 JUMPIFNOTEQKS                    R2 K2 [""] ; [+7]
       30 LOADK                            R13 K17 ["ConfigDialog"]
       31 LOADK                            R14 K18 ["SelectFile"]
       32 NAMECALL                         R11 R1 K19 ["getText"]
       34 CALL                             R11 3 1
       35 JUMP                             ; [+1]
       36 MOVE                             R11 R2
       37 SETTABLEKS                       R11 R10 K13 ["Text"]
       39 GETIMPORT                        R11 K22 [Enum.TextTruncate.SplitWord]
       41 SETTABLEKS                       R11 R10 K14 ["TextTruncate"]
       43 CALL                             R8 2 1
       44 SETTABLEKS                       R8 R7 K11 ["filepathText"]
       46 CALL                             R4 3 -1
       47 RETURN                           R4 -1

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
       34 DUPCLOSURE                       R7 K13 [PROTO_1]
       35 CAPTURE                          VAL R6
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R1
       39 RETURN                           R7 1
