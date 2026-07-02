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
       11 DUPTABLE                         R6 K10 [{"NoDisplayImage", "EmptySpace", "Title", "EmptySpace2", "Button"}]
       12 GETUPVAL                         R7 2
       13 GETTABLEKS                       R7 R7 K1 ["createElement"]
       15 GETUPVAL                         R8 3
       16 DUPTABLE                         R9 K13 [{["LayoutOrder"], ["tag"] = "align-x-center align-y-center size-full-0 auto-y"}]
       17 MOVE                             R10 R2
       18 CALL                             R10 0 1
       19 SETTABLEKS                       R10 R9 K11 ["LayoutOrder"]
       21 DUPTABLE                         R10 K15 [{"Image"}]
       22 GETUPVAL                         R11 2
       23 GETTABLEKS                       R11 R11 K1 ["createElement"]
       25 GETUPVAL                         R12 4
       26 DUPTABLE                         R13 K17 [{["tag"] = "StartPage-NoExperiences"}]
       27 CALL                             R11 2 1
       28 SETTABLEKS                       R11 R10 K14 ["Image"]
       30 CALL                             R7 3 1
       31 SETTABLEKS                       R7 R6 K5 ["NoDisplayImage"]
       33 GETUPVAL                         R8 5
       34 JUMPIFNOT                        R8 ; [+2]
       35 LOADNIL                          R7
       36 JUMP                             ; [+10]
       37 GETUPVAL                         R7 2
       38 GETTABLEKS                       R7 R7 K1 ["createElement"]
       40 GETUPVAL                         R8 3
       41 DUPTABLE                         R9 K19 [{["tag"] = "size-full-800", ["LayoutOrder"]}]
       42 MOVE                             R10 R2
       43 CALL                             R10 0 1
       44 SETTABLEKS                       R10 R9 K11 ["LayoutOrder"]
       46 CALL                             R7 2 1
       47 SETTABLEKS                       R7 R6 K6 ["EmptySpace"]
       49 GETUPVAL                         R7 2
       50 GETTABLEKS                       R7 R7 K1 ["createElement"]
       52 GETUPVAL                         R8 6
       53 DUPTABLE                         R9 K22 [{["Text"], ["LayoutOrder"], ["tag"] = "wrap auto-xy text-heading-small text-align-x-center content-emphasis"}]
       54 GETTABLEKS                       R10 R0 K23 ["title"]
       56 SETTABLEKS                       R10 R9 K20 ["Text"]
       58 MOVE                             R10 R2
       59 CALL                             R10 0 1
       60 SETTABLEKS                       R10 R9 K11 ["LayoutOrder"]
       62 CALL                             R7 2 1
       63 SETTABLEKS                       R7 R6 K7 ["Title"]
       65 GETUPVAL                         R7 2
       66 GETTABLEKS                       R7 R7 K1 ["createElement"]
       68 GETUPVAL                         R8 3
       69 DUPTABLE                         R9 K25 [{["LayoutOrder"], ["tag"] = "size-full-400"}]
       70 MOVE                             R10 R2
       71 CALL                             R10 0 1
       72 SETTABLEKS                       R10 R9 K11 ["LayoutOrder"]
       74 CALL                             R7 2 1
       75 SETTABLEKS                       R7 R6 K8 ["EmptySpace2"]
       77 GETUPVAL                         R7 2
       78 GETTABLEKS                       R7 R7 K1 ["createElement"]
       80 GETUPVAL                         R8 7
       81 DUPTABLE                         R9 K29 [{"text", "variant", "LayoutOrder", "onActivated"}]
       82 LOADK                            R12 K30 ["Plugin"]
       83 LOADK                            R13 K31 ["CreateANewExperience"]
       84 NAMECALL                         R10 R1 K32 ["getText"]
       86 CALL                             R10 3 1
       87 SETTABLEKS                       R10 R9 K26 ["text"]
       89 GETUPVAL                         R10 8
       90 GETTABLEKS                       R10 R10 K33 ["Emphasis"]
       92 SETTABLEKS                       R10 R9 K27 ["variant"]
       94 MOVE                             R10 R2
       95 CALL                             R10 0 1
       96 SETTABLEKS                       R10 R9 K11 ["LayoutOrder"]
       98 DUPCLOSURE                       R10 K34 [PROTO_0]
       99 CAPTURE                          UPVAL U9
      100 SETTABLEKS                       R10 R9 K28 ["onActivated"]
      102 CALL                             R7 2 1
      103 SETTABLEKS                       R7 R6 K9 ["Button"]
      105 CALL                             R3 3 -1
      106 RETURN                           R3 -1

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
       70 GETIMPORT                        R13 K5 [require]
       72 GETTABLEKS                       R14 R0 K13 ["Src"]
       74 GETTABLEKS                       R14 R14 K24 ["SharedFlags"]
       76 GETTABLEKS                       R14 R14 K25 ["getFFlagLuaStartPageNotFoundImageUpdate"]
       78 CALL                             R13 1 1
       79 CALL                             R13 0 1
       80 DUPCLOSURE                       R14 K26 [PROTO_1]
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R10
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R13
       87 CAPTURE                          VAL R6
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R9
       90 CAPTURE                          VAL R12
       91 RETURN                           R14 1
