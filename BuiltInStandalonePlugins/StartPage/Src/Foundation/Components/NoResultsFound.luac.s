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
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R3 R4 K1 ["createElement"]
        9 GETUPVAL                         R4 3
       10 DUPTABLE                         R5 K3 [{"tag"}]
       11 LOADK                            R6 K4 ["align-x-center align-y-center col size-full"]
       12 SETTABLEKS                       R6 R5 K2 ["tag"]
       14 DUPTABLE                         R6 K10 [{"NoDisplayImage", "EmptySpace", "Title", "EmptySpace2", "Button"}]
       15 GETUPVAL                         R8 2
       16 GETTABLEKS                       R7 R8 K1 ["createElement"]
       18 GETUPVAL                         R8 3
       19 DUPTABLE                         R9 K12 [{"LayoutOrder", "tag"}]
       20 MOVE                             R10 R2
       21 CALL                             R10 0 1
       22 SETTABLEKS                       R10 R9 K11 ["LayoutOrder"]
       24 LOADK                            R10 K13 ["size-full-0 auto-y align-x-center align-y-center"]
       25 SETTABLEKS                       R10 R9 K2 ["tag"]
       27 DUPTABLE                         R10 K15 [{"Image"}]
       28 GETUPVAL                         R12 2
       29 GETTABLEKS                       R11 R12 K1 ["createElement"]
       31 GETUPVAL                         R12 4
       32 DUPTABLE                         R13 K3 [{"tag"}]
       33 LOADK                            R14 K16 ["StartPage-NoExperiences"]
       34 SETTABLEKS                       R14 R13 K2 ["tag"]
       36 CALL                             R11 2 1
       37 SETTABLEKS                       R11 R10 K14 ["Image"]
       39 CALL                             R7 3 1
       40 SETTABLEKS                       R7 R6 K5 ["NoDisplayImage"]
       42 GETUPVAL                         R8 5
       43 JUMPIFNOT                        R8 ; [+2]
       44 LOADNIL                          R7
       45 JUMP                             ; [+13]
       46 GETUPVAL                         R8 2
       47 GETTABLEKS                       R7 R8 K1 ["createElement"]
       49 GETUPVAL                         R8 3
       50 DUPTABLE                         R9 K17 [{"tag", "LayoutOrder"}]
       51 LOADK                            R10 K18 ["size-full-800"]
       52 SETTABLEKS                       R10 R9 K2 ["tag"]
       54 MOVE                             R10 R2
       55 CALL                             R10 0 1
       56 SETTABLEKS                       R10 R9 K11 ["LayoutOrder"]
       58 CALL                             R7 2 1
       59 SETTABLEKS                       R7 R6 K6 ["EmptySpace"]
       61 GETUPVAL                         R8 2
       62 GETTABLEKS                       R7 R8 K1 ["createElement"]
       64 GETUPVAL                         R8 6
       65 DUPTABLE                         R9 K20 [{"Text", "LayoutOrder", "tag"}]
       66 GETTABLEKS                       R10 R0 K21 ["title"]
       68 SETTABLEKS                       R10 R9 K19 ["Text"]
       70 MOVE                             R10 R2
       71 CALL                             R10 0 1
       72 SETTABLEKS                       R10 R9 K11 ["LayoutOrder"]
       74 LOADK                            R10 K22 ["auto-xy text-heading-small content-emphasis wrap text-align-x-center"]
       75 SETTABLEKS                       R10 R9 K2 ["tag"]
       77 CALL                             R7 2 1
       78 SETTABLEKS                       R7 R6 K7 ["Title"]
       80 GETUPVAL                         R8 2
       81 GETTABLEKS                       R7 R8 K1 ["createElement"]
       83 GETUPVAL                         R8 3
       84 DUPTABLE                         R9 K12 [{"LayoutOrder", "tag"}]
       85 MOVE                             R10 R2
       86 CALL                             R10 0 1
       87 SETTABLEKS                       R10 R9 K11 ["LayoutOrder"]
       89 LOADK                            R10 K23 ["size-full-400"]
       90 SETTABLEKS                       R10 R9 K2 ["tag"]
       92 CALL                             R7 2 1
       93 SETTABLEKS                       R7 R6 K8 ["EmptySpace2"]
       95 GETUPVAL                         R8 2
       96 GETTABLEKS                       R7 R8 K1 ["createElement"]
       98 GETUPVAL                         R8 7
       99 DUPTABLE                         R9 K27 [{"text", "variant", "LayoutOrder", "onActivated"}]
      100 LOADK                            R12 K28 ["Plugin"]
      101 LOADK                            R13 K29 ["CreateANewExperience"]
      102 NAMECALL                         R10 R1 K30 ["getText"]
      104 CALL                             R10 3 1
      105 SETTABLEKS                       R10 R9 K24 ["text"]
      107 GETUPVAL                         R11 8
      108 GETTABLEKS                       R10 R11 K31 ["Emphasis"]
      110 SETTABLEKS                       R10 R9 K25 ["variant"]
      112 MOVE                             R10 R2
      113 CALL                             R10 0 1
      114 SETTABLEKS                       R10 R9 K11 ["LayoutOrder"]
      116 DUPCLOSURE                       R10 K32 [PROTO_0]
      117 CAPTURE                          UPVAL U9
      118 SETTABLEKS                       R10 R9 K26 ["onActivated"]
      120 CALL                             R7 2 1
      121 SETTABLEKS                       R7 R6 K9 ["Button"]
      123 CALL                             R3 3 -1
      124 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R4 R2 K9 ["Util"]
       23 GETTABLEKS                       R3 R4 K10 ["counter"]
       25 GETTABLEKS                       R5 R2 K11 ["ContextServices"]
       27 GETTABLEKS                       R4 R5 K12 ["Localization"]
       29 GETIMPORT                        R5 K5 [require]
       31 GETTABLEKS                       R8 R0 K13 ["Src"]
       33 GETTABLEKS                       R7 R8 K9 ["Util"]
       35 GETTABLEKS                       R6 R7 K14 ["Foundation"]
       37 CALL                             R5 1 1
       38 GETTABLEKS                       R6 R5 K15 ["Text"]
       40 GETTABLEKS                       R7 R5 K16 ["Image"]
       42 GETTABLEKS                       R8 R5 K17 ["Button"]
       44 GETTABLEKS                       R10 R5 K18 ["Enums"]
       46 GETTABLEKS                       R9 R10 K19 ["ButtonVariant"]
       48 GETIMPORT                        R10 K5 [require]
       50 GETTABLEKS                       R14 R0 K13 ["Src"]
       52 GETTABLEKS                       R13 R14 K14 ["Foundation"]
       54 GETTABLEKS                       R12 R13 K20 ["Components"]
       56 GETTABLEKS                       R11 R12 K21 ["Frame"]
       58 CALL                             R10 1 1
       59 GETIMPORT                        R11 K5 [require]
       61 GETTABLEKS                       R14 R0 K13 ["Src"]
       63 GETTABLEKS                       R13 R14 K9 ["Util"]
       65 GETTABLEKS                       R12 R13 K22 ["Services"]
       67 CALL                             R11 1 1
       68 GETTABLEKS                       R12 R11 K23 ["StartPageManager"]
       70 GETIMPORT                        R13 K5 [require]
       72 GETTABLEKS                       R16 R0 K13 ["Src"]
       74 GETTABLEKS                       R15 R16 K24 ["SharedFlags"]
       76 GETTABLEKS                       R14 R15 K25 ["getFFlagLuaStartPageNotFoundImageUpdate"]
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
