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
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 GETTABLEKS                       R3 R0 K2 ["filepath"]
        5 ORK                              R2 R3 K1 [""]
        6 CALL                             R1 1 2
        7 GETUPVAL                         R3 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R4 R4 K3 ["View"]
       11 DUPTABLE                         R5 K6 [{"tag", "onActivated"}]
       12 LOADK                            R6 K7 ["size-full-800 bg-shift-100 radius-small padding-small align-y-center stroke-default data-testid=pickable-filepath-click-target"]
       13 SETTABLEKS                       R6 R5 K4 ["tag"]
       15 NEWCLOSURE                       R6 P0
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R2
       18 SETTABLEKS                       R6 R5 K5 ["onActivated"]
       20 DUPTABLE                         R6 K9 [{"filepathText"}]
       21 GETUPVAL                         R7 1
       22 GETUPVAL                         R8 2
       23 GETTABLEKS                       R8 R8 K10 ["Text"]
       25 DUPTABLE                         R9 K12 [{"Text", "TextTruncate", "tag"}]
       26 JUMPIFNOT                        R1 ; [+2]
       27 JUMPIFNOTEQKS                    R1 K1 [""] ; [+3]
       29 LOADK                            R10 K13 ["Click to select file"]
       30 JUMP                             ; [+1]
       31 MOVE                             R10 R1
       32 SETTABLEKS                       R10 R9 K10 ["Text"]
       34 GETIMPORT                        R10 K16 [Enum.TextTruncate.SplitWord]
       36 SETTABLEKS                       R10 R9 K11 ["TextTruncate"]
       38 LOADK                            R10 K17 ["content-link text-body-medium auto-xy text-align-x-left text-align-y-center"]
       39 SETTABLEKS                       R10 R9 K4 ["tag"]
       41 CALL                             R7 2 1
       42 SETTABLEKS                       R7 R6 K8 ["filepathText"]
       44 CALL                             R3 3 -1
       45 RETURN                           R3 -1

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
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["createElement"]
       23 DUPCLOSURE                       R4 K10 [PROTO_1]
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R3
       26 CAPTURE                          VAL R1
       27 RETURN                           R4 1
