PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["closeDialog"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 CALL                             R3 0 1
       10 LOADNIL                          R4
       11 LOADNIL                          R5
       12 GETTABLEKS                       R6 R0 K1 ["IsError"]
       14 JUMPIF                           R6 ; [+14]
       15 GETUPVAL                         R6 3
       16 GETTABLEKS                       R6 R6 K2 ["Enums"]
       18 GETTABLEKS                       R6 R6 K3 ["IconName"]
       20 GETTABLEKS                       R4 R6 K4 ["CircleCheck"]
       22 GETTABLEKS                       R6 R3 K5 ["Color"]
       24 GETTABLEKS                       R6 R6 K6 ["System"]
       26 GETTABLEKS                       R5 R6 K7 ["Success"]
       28 JUMP                             ; [+13]
       29 GETUPVAL                         R6 3
       30 GETTABLEKS                       R6 R6 K2 ["Enums"]
       32 GETTABLEKS                       R6 R6 K3 ["IconName"]
       34 GETTABLEKS                       R4 R6 K8 ["CircleX"]
       36 GETTABLEKS                       R6 R3 K5 ["Color"]
       38 GETTABLEKS                       R6 R6 K6 ["System"]
       40 GETTABLEKS                       R5 R6 K9 ["Alert"]
       42 GETUPVAL                         R6 4
       43 GETTABLEKS                       R6 R6 K10 ["createElement"]
       45 GETUPVAL                         R7 3
       46 GETTABLEKS                       R7 R7 K11 ["View"]
       48 DUPTABLE                         R8 K13 [{"tag"}]
       49 LOADK                            R9 K14 ["col size-full padding-medium gap-medium"]
       50 SETTABLEKS                       R9 R8 K12 ["tag"]
       52 DUPTABLE                         R9 K17 [{"Content", "Footer"}]
       53 GETUPVAL                         R10 4
       54 GETTABLEKS                       R10 R10 K10 ["createElement"]
       56 GETUPVAL                         R11 3
       57 GETTABLEKS                       R11 R11 K11 ["View"]
       59 DUPTABLE                         R12 K19 [{"LayoutOrder", "tag"}]
       60 LOADN                            R13 1
       61 SETTABLEKS                       R13 R12 K18 ["LayoutOrder"]
       63 LOADK                            R13 K20 ["row size-full-0 fill gap-medium align-y-center"]
       64 SETTABLEKS                       R13 R12 K12 ["tag"]
       66 DUPTABLE                         R13 K23 [{"Icon", "Text"}]
       67 GETUPVAL                         R14 4
       68 GETTABLEKS                       R14 R14 K10 ["createElement"]
       70 GETUPVAL                         R15 3
       71 GETTABLEKS                       R15 R15 K21 ["Icon"]
       73 DUPTABLE                         R16 K28 [{"LayoutOrder", "name", "style", "size", "variant"}]
       74 LOADN                            R17 1
       75 SETTABLEKS                       R17 R16 K18 ["LayoutOrder"]
       77 SETTABLEKS                       R4 R16 K24 ["name"]
       79 SETTABLEKS                       R5 R16 K25 ["style"]
       81 GETUPVAL                         R17 3
       82 GETTABLEKS                       R17 R17 K2 ["Enums"]
       84 GETTABLEKS                       R17 R17 K29 ["IconSize"]
       86 GETTABLEKS                       R17 R17 K30 ["Large"]
       88 SETTABLEKS                       R17 R16 K26 ["size"]
       90 GETUPVAL                         R17 3
       91 GETTABLEKS                       R17 R17 K2 ["Enums"]
       93 GETTABLEKS                       R17 R17 K31 ["IconVariant"]
       95 GETTABLEKS                       R17 R17 K32 ["Filled"]
       97 SETTABLEKS                       R17 R16 K27 ["variant"]
       99 CALL                             R14 2 1
      100 SETTABLEKS                       R14 R13 K21 ["Icon"]
      102 GETUPVAL                         R14 4
      103 GETTABLEKS                       R14 R14 K10 ["createElement"]
      105 GETUPVAL                         R15 3
      106 GETTABLEKS                       R15 R15 K22 ["Text"]
      108 DUPTABLE                         R16 K33 [{"LayoutOrder", "Text", "tag"}]
      109 LOADN                            R17 2
      110 SETTABLEKS                       R17 R16 K18 ["LayoutOrder"]
      112 GETTABLEKS                       R17 R0 K22 ["Text"]
      114 SETTABLEKS                       R17 R16 K22 ["Text"]
      116 LOADK                            R17 K34 ["text-body-medium text-align-x-left text-align-y-center text-wrap size-full-0"]
      117 SETTABLEKS                       R17 R16 K12 ["tag"]
      119 CALL                             R14 2 1
      120 SETTABLEKS                       R14 R13 K22 ["Text"]
      122 CALL                             R10 3 1
      123 SETTABLEKS                       R10 R9 K15 ["Content"]
      125 GETUPVAL                         R10 4
      126 GETTABLEKS                       R10 R10 K10 ["createElement"]
      128 GETUPVAL                         R11 3
      129 GETTABLEKS                       R11 R11 K11 ["View"]
      131 DUPTABLE                         R12 K19 [{"LayoutOrder", "tag"}]
      132 LOADN                            R13 2
      133 SETTABLEKS                       R13 R12 K18 ["LayoutOrder"]
      135 LOADK                            R13 K35 ["row size-full-0 auto-y align-x-right align-y-center"]
      136 SETTABLEKS                       R13 R12 K12 ["tag"]
      138 GETUPVAL                         R13 4
      139 GETTABLEKS                       R13 R13 K10 ["createElement"]
      141 GETUPVAL                         R14 3
      142 GETTABLEKS                       R14 R14 K36 ["Button"]
      144 DUPTABLE                         R15 K40 [{"text", "variant", "size", "onActivated", "testId"}]
      145 LOADK                            R18 K41 ["QuickShare"]
      146 LOADK                            R19 K42 ["DoneButton"]
      147 NAMECALL                         R16 R2 K43 ["getText"]
      149 CALL                             R16 3 1
      150 SETTABLEKS                       R16 R15 K37 ["text"]
      152 GETUPVAL                         R16 3
      153 GETTABLEKS                       R16 R16 K2 ["Enums"]
      155 GETTABLEKS                       R16 R16 K44 ["ButtonVariant"]
      157 GETTABLEKS                       R16 R16 K45 ["Emphasis"]
      159 SETTABLEKS                       R16 R15 K27 ["variant"]
      161 GETUPVAL                         R16 3
      162 GETTABLEKS                       R16 R16 K2 ["Enums"]
      164 GETTABLEKS                       R16 R16 K46 ["InputSize"]
      166 GETTABLEKS                       R16 R16 K47 ["Small"]
      168 SETTABLEKS                       R16 R15 K26 ["size"]
      170 NEWCLOSURE                       R16 P0
      171 CAPTURE                          VAL R1
      172 SETTABLEKS                       R16 R15 K38 ["onActivated"]
      174 LOADK                            R16 K48 ["dialog-done-button"]
      175 SETTABLEKS                       R16 R15 K39 ["testId"]
      177 CALL                             R13 2 -1
      178 CALL                             R10 -1 1
      179 SETTABLEKS                       R10 R9 K16 ["Footer"]
      181 CALL                             R6 3 -1
      182 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R3 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Packages"]
       25 GETTABLEKS                       R4 R4 K10 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Packages"]
       32 GETTABLEKS                       R5 R5 K11 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K12 ["Hooks"]
       37 GETTABLEKS                       R5 R5 K13 ["useTokens"]
       39 GETTABLEKS                       R6 R3 K14 ["ContextServices"]
       41 GETTABLEKS                       R7 R6 K15 ["Localization"]
       43 GETIMPORT                        R8 K5 [require]
       45 GETTABLEKS                       R9 R0 K6 ["Src"]
       47 GETTABLEKS                       R9 R9 K16 ["Controllers"]
       49 GETTABLEKS                       R9 R9 K17 ["PluginController"]
       51 CALL                             R8 1 1
       52 DUPCLOSURE                       R9 K18 [PROTO_1]
       53 CAPTURE                          VAL R8
       54 CAPTURE                          VAL R7
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R2
       58 RETURN                           R9 1
