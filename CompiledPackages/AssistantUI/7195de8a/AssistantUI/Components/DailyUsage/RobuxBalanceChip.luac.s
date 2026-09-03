PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantCreditMetering"]
        3 JUMPIF                           R1 ; [+2]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 GETUPVAL                         R1 1
        7 CALL                             R1 0 1
        8 GETTABLEKS                       R3 R0 K1 ["isDisabled"]
       10 JUMPIFEQKB                       R3 TRUE ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 GETTABLEKS                       R4 R0 K2 ["variant"]
       16 JUMPIFNOTEQKS                    R4 K3 ["Plain"] ; [+2]
       18 LOADB                            R3 0 +1
       19 LOADB                            R3 1
       20 GETUPVAL                         R4 2
       21 GETUPVAL                         R5 3
       22 DUPTABLE                         R6 K7 [{"tag", "LayoutOrder", "onActivated"}]
       23 NEWTABLE                         R7 4 0
       25 LOADB                            R8 1
       26 SETTABLEKS                       R8 R7 K8 ["row align-y-center gap-xsmall auto-xy"]
       28 SETTABLEKS                       R3 R7 K9 ["padding-x-small padding-y-xsmall radius-circle"]
       30 MOVE                             R8 R3
       31 JUMPIFNOT                        R8 ; [+1]
       32 NOT                              R8 R2
       33 SETTABLEKS                       R8 R7 K10 ["bg-surface-200"]
       35 SETTABLEKS                       R7 R6 K4 ["tag"]
       37 GETTABLEKS                       R7 R0 K5 ["LayoutOrder"]
       39 SETTABLEKS                       R7 R6 K5 ["LayoutOrder"]
       41 JUMPIFNOT                        R2 ; [+2]
       42 LOADNIL                          R7
       43 JUMP                             ; [+2]
       44 GETTABLEKS                       R7 R0 K6 ["onActivated"]
       46 SETTABLEKS                       R7 R6 K6 ["onActivated"]
       48 DUPTABLE                         R7 K13 [{"RobuxIcon", "Balance"}]
       49 GETUPVAL                         R8 2
       50 GETUPVAL                         R9 4
       51 DUPTABLE                         R10 K16 [{"name", "size", "LayoutOrder"}]
       52 GETUPVAL                         R11 5
       53 GETTABLEKS                       R11 R11 K17 ["Robux"]
       55 SETTABLEKS                       R11 R10 K14 ["name"]
       57 JUMPIFNOT                        R3 ; [+4]
       58 GETUPVAL                         R11 6
       59 GETTABLEKS                       R11 R11 K18 ["Small"]
       61 JUMP                             ; [+3]
       62 GETUPVAL                         R11 6
       63 GETTABLEKS                       R11 R11 K19 ["XSmall"]
       65 SETTABLEKS                       R11 R10 K15 ["size"]
       67 MOVE                             R11 R1
       68 CALL                             R11 0 1
       69 SETTABLEKS                       R11 R10 K5 ["LayoutOrder"]
       71 CALL                             R8 2 1
       72 SETTABLEKS                       R8 R7 K11 ["RobuxIcon"]
       74 GETUPVAL                         R8 2
       75 GETUPVAL                         R9 7
       76 DUPTABLE                         R10 K21 [{"Text", "tag", "LayoutOrder"}]
       77 GETUPVAL                         R11 8
       78 GETTABLEKS                       R11 R11 K22 ["formatAmount"]
       80 GETTABLEKS                       R12 R0 K23 ["robuxBalance"]
       82 CALL                             R11 1 1
       83 SETTABLEKS                       R11 R10 K20 ["Text"]
       85 NEWTABLE                         R11 8 0
       87 LOADB                            R12 1
       88 SETTABLEKS                       R12 R11 K24 ["auto-xy text-align-x-left"]
       90 SETTABLEKS                       R3 R11 K25 ["text-title-small"]
       92 NOT                              R12 R3
       93 SETTABLEKS                       R12 R11 K26 ["text-caption-small"]
       95 MOVE                             R12 R3
       96 JUMPIFNOT                        R12 ; [+1]
       97 NOT                              R12 R2
       98 SETTABLEKS                       R12 R11 K27 ["content-emphasis"]
      100 NOT                              R13 R3
      101 OR                               R12 R13 R2
      102 SETTABLEKS                       R12 R11 K28 ["content-muted"]
      104 SETTABLEKS                       R11 R10 K4 ["tag"]
      106 MOVE                             R11 R1
      107 CALL                             R11 0 1
      108 SETTABLEKS                       R11 R10 K5 ["LayoutOrder"]
      110 CALL                             R8 2 1
      111 SETTABLEKS                       R8 R7 K12 ["Balance"]
      113 CALL                             R4 3 -1
      114 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Parent"]
       16 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K7 ["Parent"]
       23 GETTABLEKS                       R4 R4 K9 ["React"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K7 ["Parent"]
       30 GETTABLEKS                       R5 R5 K10 ["ReactUtils"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETIMPORT                        R6 K1 [script]
       37 GETTABLEKS                       R6 R6 K7 ["Parent"]
       39 GETTABLEKS                       R6 R6 K11 ["UsageFormat"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R2 K12 ["Icon"]
       44 GETTABLEKS                       R7 R2 K13 ["Text"]
       46 GETTABLEKS                       R8 R2 K14 ["View"]
       48 GETTABLEKS                       R9 R2 K15 ["Enums"]
       50 GETTABLEKS                       R9 R9 K16 ["IconName"]
       52 GETTABLEKS                       R10 R2 K15 ["Enums"]
       54 GETTABLEKS                       R10 R10 K17 ["IconSize"]
       56 GETTABLEKS                       R11 R4 K18 ["createNextOrder"]
       58 GETTABLEKS                       R12 R3 K19 ["createElement"]
       60 DUPCLOSURE                       R13 K20 [PROTO_0]
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R11
       63 CAPTURE                          VAL R12
       64 CAPTURE                          VAL R8
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R9
       67 CAPTURE                          VAL R10
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R5
       70 GETTABLEKS                       R14 R3 K21 ["memo"]
       72 MOVE                             R15 R13
       73 CALL                             R14 1 -1
       74 RETURN                           R14 -1
