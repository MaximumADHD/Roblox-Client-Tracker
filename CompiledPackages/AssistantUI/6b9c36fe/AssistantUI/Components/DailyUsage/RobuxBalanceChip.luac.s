PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 1
        6 CALL                             R1 0 1
        7 GETTABLEKS                       R3 R0 K0 ["isDisabled"]
        9 JUMPIFEQKB                       R3 TRUE ; [+2]
       11 LOADB                            R2 0 +1
       12 LOADB                            R2 1
       13 GETTABLEKS                       R4 R0 K1 ["variant"]
       15 JUMPIFNOTEQKS                    R4 K2 ["Plain"] ; [+2]
       17 LOADB                            R3 0 +1
       18 LOADB                            R3 1
       19 GETUPVAL                         R4 2
       20 GETUPVAL                         R5 3
       21 DUPTABLE                         R6 K6 [{"tag", "LayoutOrder", "onActivated"}]
       22 NEWTABLE                         R7 4 0
       24 LOADB                            R8 1
       25 SETTABLEKS                       R8 R7 K7 ["row align-y-center gap-xsmall auto-xy"]
       27 SETTABLEKS                       R3 R7 K8 ["padding-x-small padding-y-xsmall radius-circle"]
       29 MOVE                             R8 R3
       30 JUMPIFNOT                        R8 ; [+1]
       31 NOT                              R8 R2
       32 SETTABLEKS                       R8 R7 K9 ["bg-surface-200"]
       34 SETTABLEKS                       R7 R6 K3 ["tag"]
       36 GETTABLEKS                       R7 R0 K4 ["LayoutOrder"]
       38 SETTABLEKS                       R7 R6 K4 ["LayoutOrder"]
       40 JUMPIFNOT                        R2 ; [+2]
       41 LOADNIL                          R7
       42 JUMP                             ; [+2]
       43 GETTABLEKS                       R7 R0 K5 ["onActivated"]
       45 SETTABLEKS                       R7 R6 K5 ["onActivated"]
       47 DUPTABLE                         R7 K12 [{"RobuxIcon", "Balance"}]
       48 GETUPVAL                         R8 2
       49 GETUPVAL                         R9 4
       50 DUPTABLE                         R10 K15 [{"name", "size", "LayoutOrder"}]
       51 GETUPVAL                         R11 5
       52 GETTABLEKS                       R11 R11 K16 ["Robux"]
       54 SETTABLEKS                       R11 R10 K13 ["name"]
       56 JUMPIFNOT                        R3 ; [+4]
       57 GETUPVAL                         R11 6
       58 GETTABLEKS                       R11 R11 K17 ["Small"]
       60 JUMP                             ; [+3]
       61 GETUPVAL                         R11 6
       62 GETTABLEKS                       R11 R11 K18 ["XSmall"]
       64 SETTABLEKS                       R11 R10 K14 ["size"]
       66 MOVE                             R11 R1
       67 CALL                             R11 0 1
       68 SETTABLEKS                       R11 R10 K4 ["LayoutOrder"]
       70 CALL                             R8 2 1
       71 SETTABLEKS                       R8 R7 K10 ["RobuxIcon"]
       73 GETUPVAL                         R8 2
       74 GETUPVAL                         R9 7
       75 DUPTABLE                         R10 K20 [{"Text", "tag", "LayoutOrder"}]
       76 GETUPVAL                         R11 8
       77 GETTABLEKS                       R11 R11 K21 ["formatAmount"]
       79 GETTABLEKS                       R12 R0 K22 ["robuxBalance"]
       81 CALL                             R11 1 1
       82 SETTABLEKS                       R11 R10 K19 ["Text"]
       84 NEWTABLE                         R11 8 0
       86 LOADB                            R12 1
       87 SETTABLEKS                       R12 R11 K23 ["auto-xy text-align-x-left"]
       89 SETTABLEKS                       R3 R11 K24 ["text-title-small"]
       91 NOT                              R12 R3
       92 SETTABLEKS                       R12 R11 K25 ["text-caption-small"]
       94 MOVE                             R12 R3
       95 JUMPIFNOT                        R12 ; [+1]
       96 NOT                              R12 R2
       97 SETTABLEKS                       R12 R11 K26 ["content-emphasis"]
       99 NOT                              R13 R3
      100 OR                               R12 R13 R2
      101 SETTABLEKS                       R12 R11 K27 ["content-muted"]
      103 SETTABLEKS                       R11 R10 K3 ["tag"]
      105 MOVE                             R11 R1
      106 CALL                             R11 0 1
      107 SETTABLEKS                       R11 R10 K4 ["LayoutOrder"]
      109 CALL                             R8 2 1
      110 SETTABLEKS                       R8 R7 K11 ["Balance"]
      112 CALL                             R4 3 -1
      113 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETIMPORT                        R5 K1 [script]
       32 GETTABLEKS                       R5 R5 K6 ["Parent"]
       34 GETTABLEKS                       R5 R5 K10 ["UsageFormat"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K11 ["FlagUtils"]
       41 GETTABLEKS                       R6 R6 K12 ["getIsCreditMeteringEnabled"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R1 K13 ["Icon"]
       46 GETTABLEKS                       R7 R1 K14 ["Text"]
       48 GETTABLEKS                       R8 R1 K15 ["View"]
       50 GETTABLEKS                       R9 R1 K16 ["Enums"]
       52 GETTABLEKS                       R9 R9 K17 ["IconName"]
       54 GETTABLEKS                       R10 R1 K16 ["Enums"]
       56 GETTABLEKS                       R10 R10 K18 ["IconSize"]
       58 GETTABLEKS                       R11 R3 K19 ["createNextOrder"]
       60 GETTABLEKS                       R12 R2 K20 ["createElement"]
       62 DUPCLOSURE                       R13 K21 [PROTO_0]
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R11
       65 CAPTURE                          VAL R12
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R9
       69 CAPTURE                          VAL R10
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R4
       72 GETTABLEKS                       R14 R2 K22 ["memo"]
       74 MOVE                             R15 R13
       75 CALL                             R14 1 -1
       76 RETURN                           R14 -1
