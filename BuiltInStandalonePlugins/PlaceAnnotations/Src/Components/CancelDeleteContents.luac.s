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
       12 DUPTABLE                         R5 K6 [{["tag"] = "col align-x-center align-y-top gap-small size-full padding-large", ["backgroundStyle"]}]
       13 DUPTABLE                         R6 K10 [{["Color3"], ["Transparency"] = 0.1}]
       14 GETTABLEKS                       R8 R2 K11 ["Name"]
       16 JUMPIFNOTEQKS                    R8 K12 ["Dark"] ; [+6]
       18 GETIMPORT                        R7 K14 [Color3.fromHex]
       20 LOADK                            R8 K15 ["#2C2C2C"]
       21 CALL                             R7 1 1
       22 JUMP                             ; [+4]
       23 GETIMPORT                        R7 K14 [Color3.fromHex]
       25 LOADK                            R8 K16 ["#FFFFFF"]
       26 CALL                             R7 1 1
       27 SETTABLEKS                       R7 R6 K7 ["Color3"]
       29 SETTABLEKS                       R6 R5 K5 ["backgroundStyle"]
       31 DUPTABLE                         R6 K19 [{"Information", "Buttons"}]
       32 GETUPVAL                         R7 2
       33 GETTABLEKS                       R7 R7 K1 ["createElement"]
       35 GETUPVAL                         R8 3
       36 GETTABLEKS                       R8 R8 K2 ["View"]
       38 DUPTABLE                         R9 K23 [{["tag"] = "row align-x-center align-y-top gap-small size-full-2000 margin-left-large margin-right-large margin-top-small", ["LayoutOrder"] = 1}]
       39 DUPTABLE                         R10 K26 [{"Icon", "TextLabel"}]
       40 GETUPVAL                         R11 2
       41 GETTABLEKS                       R11 R11 K1 ["createElement"]
       43 GETUPVAL                         R12 3
       44 GETTABLEKS                       R12 R12 K24 ["Icon"]
       46 DUPTABLE                         R13 K31 [{["name"] = "icons/status/warning", ["tag"] = "size-1000-full", ["LayoutOrder"] = 0}]
       47 CALL                             R11 2 1
       48 SETTABLEKS                       R11 R10 K24 ["Icon"]
       50 GETUPVAL                         R11 2
       51 GETTABLEKS                       R11 R11 K1 ["createElement"]
       53 GETUPVAL                         R12 3
       54 GETTABLEKS                       R12 R12 K32 ["Text"]
       56 DUPTABLE                         R13 K34 [{["tag"] = "auto-xy text-body-medium text-wrap text-align-x-left", ["Text"]}]
       57 GETTABLEKS                       R14 R0 K32 ["Text"]
       59 SETTABLEKS                       R14 R13 K32 ["Text"]
       61 CALL                             R11 2 1
       62 SETTABLEKS                       R11 R10 K25 ["TextLabel"]
       64 CALL                             R7 3 1
       65 SETTABLEKS                       R7 R6 K17 ["Information"]
       67 GETUPVAL                         R7 2
       68 GETTABLEKS                       R7 R7 K1 ["createElement"]
       70 GETUPVAL                         R8 3
       71 GETTABLEKS                       R8 R8 K2 ["View"]
       73 DUPTABLE                         R9 K37 [{["tag"] = "row align-x-right align-y-top gap-medium size-full-1000", ["LayoutOrder"] = 2}]
       74 DUPTABLE                         R10 K40 [{"Cancel", "Delete"}]
       75 GETUPVAL                         R11 2
       76 GETTABLEKS                       R11 R11 K1 ["createElement"]
       78 GETUPVAL                         R12 3
       79 GETTABLEKS                       R12 R12 K41 ["Button"]
       81 DUPTABLE                         R13 K46 [{["LayoutOrder"] = 1, ["onActivated"], ["text"], ["variant"], ["size"]}]
       82 GETTABLEKS                       R14 R0 K47 ["OnCancel"]
       84 SETTABLEKS                       R14 R13 K42 ["onActivated"]
       86 LOADK                            R16 K48 ["AddAnnotation"]
       87 LOADK                            R17 K38 ["Cancel"]
       88 NAMECALL                         R14 R1 K49 ["getText"]
       90 CALL                             R14 3 1
       91 SETTABLEKS                       R14 R13 K43 ["text"]
       93 GETUPVAL                         R14 3
       94 GETTABLEKS                       R14 R14 K50 ["Enums"]
       96 GETTABLEKS                       R14 R14 K51 ["ButtonVariant"]
       98 GETTABLEKS                       R14 R14 K52 ["Standard"]
      100 SETTABLEKS                       R14 R13 K44 ["variant"]
      102 GETUPVAL                         R14 3
      103 GETTABLEKS                       R14 R14 K50 ["Enums"]
      105 GETTABLEKS                       R14 R14 K53 ["ButtonSize"]
      107 GETTABLEKS                       R14 R14 K54 ["Small"]
      109 SETTABLEKS                       R14 R13 K45 ["size"]
      111 CALL                             R11 2 1
      112 SETTABLEKS                       R11 R10 K38 ["Cancel"]
      114 GETUPVAL                         R11 2
      115 GETTABLEKS                       R11 R11 K1 ["createElement"]
      117 GETUPVAL                         R12 3
      118 GETTABLEKS                       R12 R12 K41 ["Button"]
      120 DUPTABLE                         R13 K55 [{["LayoutOrder"] = 2, ["onActivated"], ["text"], ["variant"], ["size"]}]
      121 GETTABLEKS                       R14 R0 K56 ["OnDelete"]
      123 SETTABLEKS                       R14 R13 K42 ["onActivated"]
      125 LOADK                            R16 K57 ["Dropdown"]
      126 LOADK                            R17 K39 ["Delete"]
      127 NAMECALL                         R14 R1 K49 ["getText"]
      129 CALL                             R14 3 1
      130 SETTABLEKS                       R14 R13 K43 ["text"]
      132 GETUPVAL                         R14 3
      133 GETTABLEKS                       R14 R14 K50 ["Enums"]
      135 GETTABLEKS                       R14 R14 K51 ["ButtonVariant"]
      137 GETTABLEKS                       R14 R14 K58 ["Alert"]
      139 SETTABLEKS                       R14 R13 K44 ["variant"]
      141 GETUPVAL                         R14 3
      142 GETTABLEKS                       R14 R14 K50 ["Enums"]
      144 GETTABLEKS                       R14 R14 K53 ["ButtonSize"]
      146 GETTABLEKS                       R14 R14 K54 ["Small"]
      148 SETTABLEKS                       R14 R13 K45 ["size"]
      150 CALL                             R11 2 1
      151 SETTABLEKS                       R11 R10 K39 ["Delete"]
      153 CALL                             R7 3 1
      154 SETTABLEKS                       R7 R6 K18 ["Buttons"]
      156 CALL                             R3 3 -1
      157 RETURN                           R3 -1

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
