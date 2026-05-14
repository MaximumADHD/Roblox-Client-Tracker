PROTO_0:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K1 ["createElement"]
        9 GETUPVAL                         R4 3
       10 GETTABLEKS                       R4 R4 K2 ["View"]
       12 DUPTABLE                         R5 K5 [{"tag", "backgroundStyle"}]
       13 LOADK                            R6 K6 ["col padding-large size-full gap-small align-x-center align-y-top"]
       14 SETTABLEKS                       R6 R5 K3 ["tag"]
       16 DUPTABLE                         R6 K9 [{"Color3", "Transparency"}]
       17 GETTABLEKS                       R8 R2 K10 ["Name"]
       19 JUMPIFNOTEQKS                    R8 K11 ["Dark"] ; [+6]
       21 GETIMPORT                        R7 K13 [Color3.fromHex]
       23 LOADK                            R8 K14 ["#2C2C2C"]
       24 CALL                             R7 1 1
       25 JUMP                             ; [+4]
       26 GETIMPORT                        R7 K13 [Color3.fromHex]
       28 LOADK                            R8 K15 ["#FFFFFF"]
       29 CALL                             R7 1 1
       30 SETTABLEKS                       R7 R6 K7 ["Color3"]
       32 LOADK                            R7 K16 [0.1]
       33 SETTABLEKS                       R7 R6 K8 ["Transparency"]
       35 SETTABLEKS                       R6 R5 K4 ["backgroundStyle"]
       37 DUPTABLE                         R6 K19 [{"Information", "Buttons"}]
       38 GETUPVAL                         R7 2
       39 GETTABLEKS                       R7 R7 K1 ["createElement"]
       41 GETUPVAL                         R8 3
       42 GETTABLEKS                       R8 R8 K2 ["View"]
       44 DUPTABLE                         R9 K21 [{"tag", "LayoutOrder"}]
       45 LOADK                            R10 K22 ["row margin-top-small margin-left-large margin-right-large size-full-2000 gap-small align-x-center align-y-top"]
       46 SETTABLEKS                       R10 R9 K3 ["tag"]
       48 LOADN                            R10 1
       49 SETTABLEKS                       R10 R9 K20 ["LayoutOrder"]
       51 DUPTABLE                         R10 K25 [{"Icon", "TextLabel"}]
       52 GETUPVAL                         R11 2
       53 GETTABLEKS                       R11 R11 K1 ["createElement"]
       55 GETUPVAL                         R12 3
       56 GETTABLEKS                       R12 R12 K23 ["Icon"]
       58 DUPTABLE                         R13 K27 [{"name", "tag", "LayoutOrder"}]
       59 LOADK                            R14 K28 ["icons/status/warning"]
       60 SETTABLEKS                       R14 R13 K26 ["name"]
       62 LOADK                            R14 K29 ["size-1000-full"]
       63 SETTABLEKS                       R14 R13 K3 ["tag"]
       65 LOADN                            R14 0
       66 SETTABLEKS                       R14 R13 K20 ["LayoutOrder"]
       68 CALL                             R11 2 1
       69 SETTABLEKS                       R11 R10 K23 ["Icon"]
       71 GETUPVAL                         R11 2
       72 GETTABLEKS                       R11 R11 K1 ["createElement"]
       74 GETUPVAL                         R12 3
       75 GETTABLEKS                       R12 R12 K30 ["Text"]
       77 DUPTABLE                         R13 K31 [{"tag", "Text"}]
       78 LOADK                            R14 K32 ["auto-xy text-body-medium text-wrap text-align-x-left"]
       79 SETTABLEKS                       R14 R13 K3 ["tag"]
       81 GETTABLEKS                       R14 R0 K30 ["Text"]
       83 SETTABLEKS                       R14 R13 K30 ["Text"]
       85 CALL                             R11 2 1
       86 SETTABLEKS                       R11 R10 K24 ["TextLabel"]
       88 CALL                             R7 3 1
       89 SETTABLEKS                       R7 R6 K17 ["Information"]
       91 GETUPVAL                         R7 2
       92 GETTABLEKS                       R7 R7 K1 ["createElement"]
       94 GETUPVAL                         R8 3
       95 GETTABLEKS                       R8 R8 K2 ["View"]
       97 DUPTABLE                         R9 K21 [{"tag", "LayoutOrder"}]
       98 LOADK                            R10 K33 ["row size-full-1000 gap-medium align-y-top align-x-right"]
       99 SETTABLEKS                       R10 R9 K3 ["tag"]
      101 LOADN                            R10 2
      102 SETTABLEKS                       R10 R9 K20 ["LayoutOrder"]
      104 DUPTABLE                         R10 K36 [{"Cancel", "Delete"}]
      105 GETUPVAL                         R11 2
      106 GETTABLEKS                       R11 R11 K1 ["createElement"]
      108 GETUPVAL                         R12 3
      109 GETTABLEKS                       R12 R12 K37 ["Button"]
      111 DUPTABLE                         R13 K42 [{"LayoutOrder", "onActivated", "text", "variant", "size"}]
      112 LOADN                            R14 1
      113 SETTABLEKS                       R14 R13 K20 ["LayoutOrder"]
      115 GETTABLEKS                       R14 R0 K43 ["OnCancel"]
      117 SETTABLEKS                       R14 R13 K38 ["onActivated"]
      119 LOADK                            R16 K44 ["AddAnnotation"]
      120 LOADK                            R17 K34 ["Cancel"]
      121 NAMECALL                         R14 R1 K45 ["getText"]
      123 CALL                             R14 3 1
      124 SETTABLEKS                       R14 R13 K39 ["text"]
      126 GETUPVAL                         R14 3
      127 GETTABLEKS                       R14 R14 K46 ["Enums"]
      129 GETTABLEKS                       R14 R14 K47 ["ButtonVariant"]
      131 GETTABLEKS                       R14 R14 K48 ["Standard"]
      133 SETTABLEKS                       R14 R13 K40 ["variant"]
      135 GETUPVAL                         R14 3
      136 GETTABLEKS                       R14 R14 K46 ["Enums"]
      138 GETTABLEKS                       R14 R14 K49 ["ButtonSize"]
      140 GETTABLEKS                       R14 R14 K50 ["Small"]
      142 SETTABLEKS                       R14 R13 K41 ["size"]
      144 CALL                             R11 2 1
      145 SETTABLEKS                       R11 R10 K34 ["Cancel"]
      147 GETUPVAL                         R11 2
      148 GETTABLEKS                       R11 R11 K1 ["createElement"]
      150 GETUPVAL                         R12 3
      151 GETTABLEKS                       R12 R12 K37 ["Button"]
      153 DUPTABLE                         R13 K42 [{"LayoutOrder", "onActivated", "text", "variant", "size"}]
      154 LOADN                            R14 2
      155 SETTABLEKS                       R14 R13 K20 ["LayoutOrder"]
      157 GETTABLEKS                       R14 R0 K51 ["OnDelete"]
      159 SETTABLEKS                       R14 R13 K38 ["onActivated"]
      161 LOADK                            R16 K52 ["Dropdown"]
      162 LOADK                            R17 K35 ["Delete"]
      163 NAMECALL                         R14 R1 K45 ["getText"]
      165 CALL                             R14 3 1
      166 SETTABLEKS                       R14 R13 K39 ["text"]
      168 GETUPVAL                         R14 3
      169 GETTABLEKS                       R14 R14 K46 ["Enums"]
      171 GETTABLEKS                       R14 R14 K47 ["ButtonVariant"]
      173 GETTABLEKS                       R14 R14 K53 ["Alert"]
      175 SETTABLEKS                       R14 R13 K40 ["variant"]
      177 GETUPVAL                         R14 3
      178 GETTABLEKS                       R14 R14 K46 ["Enums"]
      180 GETTABLEKS                       R14 R14 K49 ["ButtonSize"]
      182 GETTABLEKS                       R14 R14 K50 ["Small"]
      184 SETTABLEKS                       R14 R13 K41 ["size"]
      186 CALL                             R11 2 1
      187 SETTABLEKS                       R11 R10 K35 ["Delete"]
      189 CALL                             R7 3 1
      190 SETTABLEKS                       R7 R6 K18 ["Buttons"]
      192 CALL                             R3 3 -1
      193 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
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
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["Localization"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R0 K6 ["Packages"]
       29 GETTABLEKS                       R6 R6 K11 ["Foundation"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R0 K12 ["Src"]
       36 GETTABLEKS                       R7 R7 K13 ["Hooks"]
       38 GETTABLEKS                       R7 R7 K14 ["useTheme"]
       40 CALL                             R6 1 1
       41 DUPCLOSURE                       R7 K15 [PROTO_0]
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R6
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R5
       46 RETURN                           R7 1
