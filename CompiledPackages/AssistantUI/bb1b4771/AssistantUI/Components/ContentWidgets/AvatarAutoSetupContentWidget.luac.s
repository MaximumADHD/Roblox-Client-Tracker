PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["toolResult"]
        2 JUMPIFNOTEQKNIL                  R1 ; [+3]
        4 LOADK                            R2 K1 ["InProgress"]
        5 JUMP                             ; [+6]
        6 GETTABLEKS                       R3 R1 K2 ["isError"]
        8 JUMPIFNOT                        R3 ; [+2]
        9 LOADK                            R2 K3 ["Failed"]
       10 JUMP                             ; [+1]
       11 LOADK                            R2 K4 ["Completed"]
       12 GETUPVAL                         R3 0
       13 GETUPVAL                         R4 1
       14 DUPTABLE                         R5 K8 [{["tag"] = "col gap-xsmall size-full-0 auto-y", ["LayoutOrder"]}]
       15 GETTABLEKS                       R6 R0 K7 ["LayoutOrder"]
       17 SETTABLEKS                       R6 R5 K7 ["LayoutOrder"]
       19 DUPTABLE                         R6 K10 [{"Status"}]
       20 GETUPVAL                         R7 0
       21 GETUPVAL                         R8 2
       22 DUPTABLE                         R9 K12 [{"tag", "Text"}]
       23 NEWTABLE                         R10 4 0
       25 LOADB                            R11 1
       26 SETTABLEKS                       R11 R10 K13 ["auto-xy text-caption-medium"]
       28 JUMPIFEQKS                       R2 K3 ["Failed"] ; [+2]
       30 LOADB                            R11 0 +1
       31 LOADB                            R11 1
       32 SETTABLEKS                       R11 R10 K14 ["content-alert"]
       34 JUMPIFNOTEQKS                    R2 K3 ["Failed"] ; [+2]
       36 LOADB                            R11 0 +1
       37 LOADB                            R11 1
       38 SETTABLEKS                       R11 R10 K15 ["content-muted"]
       40 SETTABLEKS                       R10 R9 K5 ["tag"]
       42 GETUPVAL                         R10 3
       43 LOADK                            R12 K16 ["AvatarAutoSetup"]
       44 MOVE                             R13 R2
       45 NAMECALL                         R10 R10 K17 ["getText"]
       47 CALL                             R10 3 1
       48 SETTABLEKS                       R10 R9 K11 ["Text"]
       50 DUPTABLE                         R10 K19 [{"Shimmer"}]
       51 JUMPIFNOTEQKS                    R2 K1 ["InProgress"] ; [+5]
       53 GETUPVAL                         R11 0
       54 GETUPVAL                         R12 4
       55 CALL                             R11 1 1
       56 JUMP                             ; [+1]
       57 LOADNIL                          R11
       58 SETTABLEKS                       R11 R10 K18 ["Shimmer"]
       60 CALL                             R7 3 1
       61 SETTABLEKS                       R7 R6 K9 ["Status"]
       63 CALL                             R3 3 -1
       64 RETURN                           R3 -1

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
       23 GETTABLEKS                       R4 R0 K9 ["Components"]
       25 GETTABLEKS                       R4 R4 K10 ["ShimmerGradient"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Resources"]
       32 GETTABLEKS                       R5 R5 K12 ["Localization"]
       34 GETTABLEKS                       R5 R5 K13 ["Translator"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K14 ["Types"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R1 K15 ["Text"]
       44 GETTABLEKS                       R7 R1 K16 ["View"]
       46 GETTABLEKS                       R8 R2 K17 ["createElement"]
       48 DUPCLOSURE                       R9 K18 [PROTO_0]
       49 CAPTURE                          VAL R8
       50 CAPTURE                          VAL R7
       51 CAPTURE                          VAL R6
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R3
       54 DUPTABLE                         R10 K24 [{["Type"] = "AvatarAutoSetup", ["ContentWidget"], ["Serialization"] = }]
       55 GETTABLEKS                       R11 R2 K25 ["memo"]
       57 MOVE                             R12 R9
       58 CALL                             R11 1 1
       59 SETTABLEKS                       R11 R10 K21 ["ContentWidget"]
       61 RETURN                           R10 1
