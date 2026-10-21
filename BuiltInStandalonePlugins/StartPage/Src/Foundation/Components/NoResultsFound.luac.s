PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 [95206881]
        2 LOADK                            R3 K1 [28220420]
        3 LOADB                            R4 0
        4 NAMECALL                         R0 R0 K2 ["openPlace"]
        6 CALL                             R0 4 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K1 ["createElement"]
        9 GETUPVAL                         R4 3
       10 DUPTABLE                         R5 K4 [{["tag"] = "col align-x-center align-y-center size-full"}]
       11 DUPTABLE                         R6 K9 [{"NoDisplayImage", "Title", "EmptySpace2", "Button"}]
       12 GETUPVAL                         R7 2
       13 GETTABLEKS                       R7 R7 K1 ["createElement"]
       15 GETUPVAL                         R8 3
       16 DUPTABLE                         R9 K12 [{["LayoutOrder"], ["tag"] = "align-x-center align-y-center size-full-0 auto-y"}]
       17 MOVE                             R10 R2
       18 CALL                             R10 0 1
       19 SETTABLEKS                       R10 R9 K10 ["LayoutOrder"]
       21 DUPTABLE                         R10 K14 [{"Image"}]
       22 GETUPVAL                         R11 2
       23 GETTABLEKS                       R11 R11 K1 ["createElement"]
       25 GETUPVAL                         R12 4
       26 DUPTABLE                         R13 K16 [{["tag"] = "StartPage-NoExperiences"}]
       27 CALL                             R11 2 1
       28 SETTABLEKS                       R11 R10 K13 ["Image"]
       30 CALL                             R7 3 1
       31 SETTABLEKS                       R7 R6 K5 ["NoDisplayImage"]
       33 GETUPVAL                         R7 2
       34 GETTABLEKS                       R7 R7 K1 ["createElement"]
       36 GETUPVAL                         R8 5
       37 DUPTABLE                         R9 K19 [{["Text"], ["LayoutOrder"], ["tag"] = "wrap auto-xy text-heading-small text-align-x-center content-emphasis"}]
       38 GETTABLEKS                       R10 R0 K20 ["title"]
       40 SETTABLEKS                       R10 R9 K17 ["Text"]
       42 MOVE                             R10 R2
       43 CALL                             R10 0 1
       44 SETTABLEKS                       R10 R9 K10 ["LayoutOrder"]
       46 CALL                             R7 2 1
       47 SETTABLEKS                       R7 R6 K6 ["Title"]
       49 GETUPVAL                         R7 2
       50 GETTABLEKS                       R7 R7 K1 ["createElement"]
       52 GETUPVAL                         R8 3
       53 DUPTABLE                         R9 K22 [{["LayoutOrder"], ["tag"] = "size-full-400"}]
       54 MOVE                             R10 R2
       55 CALL                             R10 0 1
       56 SETTABLEKS                       R10 R9 K10 ["LayoutOrder"]
       58 CALL                             R7 2 1
       59 SETTABLEKS                       R7 R6 K7 ["EmptySpace2"]
       61 GETUPVAL                         R7 2
       62 GETTABLEKS                       R7 R7 K1 ["createElement"]
       64 GETUPVAL                         R8 6
       65 DUPTABLE                         R9 K26 [{"text", "variant", "LayoutOrder", "onActivated"}]
       66 LOADK                            R12 K27 ["Plugin"]
       67 LOADK                            R13 K28 ["CreateANewExperience"]
       68 NAMECALL                         R10 R1 K29 ["getText"]
       70 CALL                             R10 3 1
       71 SETTABLEKS                       R10 R9 K23 ["text"]
       73 GETUPVAL                         R10 7
       74 GETTABLEKS                       R10 R10 K30 ["Emphasis"]
       76 SETTABLEKS                       R10 R9 K24 ["variant"]
       78 MOVE                             R10 R2
       79 CALL                             R10 0 1
       80 SETTABLEKS                       R10 R9 K10 ["LayoutOrder"]
       82 DUPCLOSURE                       R10 K31 [PROTO_0]
       83 CAPTURE                          UPVAL U8
       84 SETTABLEKS                       R10 R9 K25 ["onActivated"]
       86 CALL                             R7 2 1
       87 SETTABLEKS                       R7 R6 K8 ["Button"]
       89 CALL                             R3 3 -1
       90 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["Util"]
       23 GETTABLEKS                       R3 R3 K10 ["counter"]
       25 GETTABLEKS                       R4 R2 K11 ["ContextServices"]
       27 GETTABLEKS                       R4 R4 K12 ["Localization"]
       29 GETIMPORT                        R5 K5 [require]
       31 GETTABLEKS                       R6 R0 K13 ["Src"]
       33 GETTABLEKS                       R6 R6 K9 ["Util"]
       35 GETTABLEKS                       R6 R6 K14 ["Foundation"]
       37 CALL                             R5 1 1
       38 GETTABLEKS                       R6 R5 K15 ["Text"]
       40 GETTABLEKS                       R7 R5 K16 ["Image"]
       42 GETTABLEKS                       R8 R5 K17 ["Button"]
       44 GETTABLEKS                       R9 R5 K18 ["Enums"]
       46 GETTABLEKS                       R9 R9 K19 ["ButtonVariant"]
       48 GETIMPORT                        R10 K5 [require]
       50 GETTABLEKS                       R11 R0 K13 ["Src"]
       52 GETTABLEKS                       R11 R11 K14 ["Foundation"]
       54 GETTABLEKS                       R11 R11 K20 ["Components"]
       56 GETTABLEKS                       R11 R11 K21 ["Frame"]
       58 CALL                             R10 1 1
       59 GETIMPORT                        R11 K5 [require]
       61 GETTABLEKS                       R12 R0 K13 ["Src"]
       63 GETTABLEKS                       R12 R12 K9 ["Util"]
       65 GETTABLEKS                       R12 R12 K22 ["Services"]
       67 CALL                             R11 1 1
       68 GETTABLEKS                       R12 R11 K23 ["StartPageManager"]
       70 DUPCLOSURE                       R13 K24 [PROTO_1]
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R10
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R12
       80 RETURN                           R13 1
