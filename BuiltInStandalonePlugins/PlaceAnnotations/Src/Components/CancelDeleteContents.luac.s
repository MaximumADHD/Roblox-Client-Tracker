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
       13 GETUPVAL                         R7 4
       14 GETTABLEKS                       R7 R7 K7 ["fflagAnnotationsColorErrorFixes"]
       16 JUMPIFNOT                        R7 ; [+2]
       17 LOADNIL                          R6
       18 JUMP                             ; [+16]
       19 DUPTABLE                         R6 K11 [{["Color3"], ["Transparency"] = 0.1}]
       20 GETTABLEKS                       R8 R2 K12 ["Name"]
       22 JUMPIFNOTEQKS                    R8 K13 ["Dark"] ; [+6]
       24 GETIMPORT                        R7 K15 [Color3.fromHex]
       26 LOADK                            R8 K16 ["#2C2C2C"]
       27 CALL                             R7 1 1
       28 JUMP                             ; [+4]
       29 GETIMPORT                        R7 K15 [Color3.fromHex]
       31 LOADK                            R8 K17 ["#FFFFFF"]
       32 CALL                             R7 1 1
       33 SETTABLEKS                       R7 R6 K8 ["Color3"]
       35 SETTABLEKS                       R6 R5 K5 ["backgroundStyle"]
       37 DUPTABLE                         R6 K20 [{"Information", "Buttons"}]
       38 GETUPVAL                         R7 2
       39 GETTABLEKS                       R7 R7 K1 ["createElement"]
       41 GETUPVAL                         R8 3
       42 GETTABLEKS                       R8 R8 K2 ["View"]
       44 DUPTABLE                         R9 K23 [{["tag"], ["LayoutOrder"] = 1}]
       45 GETUPVAL                         R11 4
       46 GETTABLEKS                       R11 R11 K7 ["fflagAnnotationsColorErrorFixes"]
       48 JUMPIFNOT                        R11 ; [+2]
       49 LOADK                            R10 K24 ["row align-x-center align-y-center gap-small size-full-2000 margin-left-large margin-right-large margin-top-small"]
       50 JUMP                             ; [+1]
       51 LOADK                            R10 K25 ["row align-x-center align-y-top gap-small size-full-2000 margin-left-large margin-right-large margin-top-small"]
       52 SETTABLEKS                       R10 R9 K3 ["tag"]
       54 DUPTABLE                         R10 K28 [{"Icon", "TextLabel"}]
       55 GETUPVAL                         R11 2
       56 GETTABLEKS                       R11 R11 K1 ["createElement"]
       58 GETUPVAL                         R12 3
       59 GETTABLEKS                       R12 R12 K26 ["Icon"]
       61 DUPTABLE                         R13 K32 [{["name"] = "icons/status/warning", ["tag"], ["LayoutOrder"] = 0}]
       62 GETUPVAL                         R15 4
       63 GETTABLEKS                       R15 R15 K7 ["fflagAnnotationsColorErrorFixes"]
       65 JUMPIFNOT                        R15 ; [+2]
       66 LOADK                            R14 K33 ["size-800-800"]
       67 JUMP                             ; [+1]
       68 LOADK                            R14 K34 ["size-1000-full"]
       69 SETTABLEKS                       R14 R13 K3 ["tag"]
       71 CALL                             R11 2 1
       72 SETTABLEKS                       R11 R10 K26 ["Icon"]
       74 GETUPVAL                         R11 2
       75 GETTABLEKS                       R11 R11 K1 ["createElement"]
       77 GETUPVAL                         R12 3
       78 GETTABLEKS                       R12 R12 K35 ["Text"]
       80 DUPTABLE                         R13 K37 [{["tag"] = "auto-xy text-body-medium text-wrap text-align-x-left", ["Text"]}]
       81 GETTABLEKS                       R14 R0 K35 ["Text"]
       83 SETTABLEKS                       R14 R13 K35 ["Text"]
       85 CALL                             R11 2 1
       86 SETTABLEKS                       R11 R10 K27 ["TextLabel"]
       88 CALL                             R7 3 1
       89 SETTABLEKS                       R7 R6 K18 ["Information"]
       91 GETUPVAL                         R7 2
       92 GETTABLEKS                       R7 R7 K1 ["createElement"]
       94 GETUPVAL                         R8 3
       95 GETTABLEKS                       R8 R8 K2 ["View"]
       97 DUPTABLE                         R9 K40 [{["tag"] = "row align-x-right align-y-top gap-medium size-full-1000", ["LayoutOrder"] = 2}]
       98 DUPTABLE                         R10 K43 [{"Cancel", "Delete"}]
       99 GETUPVAL                         R11 2
      100 GETTABLEKS                       R11 R11 K1 ["createElement"]
      102 GETUPVAL                         R12 3
      103 GETTABLEKS                       R12 R12 K44 ["Button"]
      105 DUPTABLE                         R13 K49 [{["LayoutOrder"] = 1, ["onActivated"], ["text"], ["variant"], ["size"]}]
      106 GETTABLEKS                       R14 R0 K50 ["OnCancel"]
      108 SETTABLEKS                       R14 R13 K45 ["onActivated"]
      110 LOADK                            R16 K51 ["AddAnnotation"]
      111 LOADK                            R17 K41 ["Cancel"]
      112 NAMECALL                         R14 R1 K52 ["getText"]
      114 CALL                             R14 3 1
      115 SETTABLEKS                       R14 R13 K46 ["text"]
      117 GETUPVAL                         R14 3
      118 GETTABLEKS                       R14 R14 K53 ["Enums"]
      120 GETTABLEKS                       R14 R14 K54 ["ButtonVariant"]
      122 GETTABLEKS                       R14 R14 K55 ["Standard"]
      124 SETTABLEKS                       R14 R13 K47 ["variant"]
      126 GETUPVAL                         R14 3
      127 GETTABLEKS                       R14 R14 K53 ["Enums"]
      129 GETTABLEKS                       R14 R14 K56 ["ButtonSize"]
      131 GETTABLEKS                       R14 R14 K57 ["Small"]
      133 SETTABLEKS                       R14 R13 K48 ["size"]
      135 CALL                             R11 2 1
      136 SETTABLEKS                       R11 R10 K41 ["Cancel"]
      138 GETUPVAL                         R11 2
      139 GETTABLEKS                       R11 R11 K1 ["createElement"]
      141 GETUPVAL                         R12 3
      142 GETTABLEKS                       R12 R12 K44 ["Button"]
      144 DUPTABLE                         R13 K58 [{["LayoutOrder"] = 2, ["onActivated"], ["text"], ["variant"], ["size"]}]
      145 GETTABLEKS                       R14 R0 K59 ["OnDelete"]
      147 SETTABLEKS                       R14 R13 K45 ["onActivated"]
      149 LOADK                            R16 K60 ["Dropdown"]
      150 LOADK                            R17 K42 ["Delete"]
      151 NAMECALL                         R14 R1 K52 ["getText"]
      153 CALL                             R14 3 1
      154 SETTABLEKS                       R14 R13 K46 ["text"]
      156 GETUPVAL                         R14 3
      157 GETTABLEKS                       R14 R14 K53 ["Enums"]
      159 GETTABLEKS                       R14 R14 K54 ["ButtonVariant"]
      161 GETTABLEKS                       R14 R14 K61 ["Alert"]
      163 SETTABLEKS                       R14 R13 K47 ["variant"]
      165 GETUPVAL                         R14 3
      166 GETTABLEKS                       R14 R14 K53 ["Enums"]
      168 GETTABLEKS                       R14 R14 K56 ["ButtonSize"]
      170 GETTABLEKS                       R14 R14 K57 ["Small"]
      172 SETTABLEKS                       R14 R13 K48 ["size"]
      174 CALL                             R11 2 1
      175 SETTABLEKS                       R11 R10 K42 ["Delete"]
      177 CALL                             R7 3 1
      178 SETTABLEKS                       R7 R6 K19 ["Buttons"]
      180 CALL                             R3 3 -1
      181 RETURN                           R3 -1

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
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R8 R0 K15 ["Bin"]
       45 GETTABLEKS                       R8 R8 K16 ["Common"]
       47 GETTABLEKS                       R8 R8 K17 ["defineLuaFlags"]
       49 CALL                             R7 1 1
       50 DUPCLOSURE                       R8 K18 [PROTO_0]
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R7
       56 RETURN                           R8 1
