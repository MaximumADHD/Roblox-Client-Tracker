MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Styling"]
       13 GETTABLEKS                       R2 R2 K8 ["createStyleRule"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Style"]
       20 GETTABLEKS                       R3 R3 K10 ["Themes"]
       22 GETTABLEKS                       R3 R3 K11 ["FoundationDark"]
       24 CALL                             R2 1 1
       25 MOVE                             R3 R2
       26 LOADN                            R4 1
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K6 [require]
       30 GETTABLEKS                       R5 R0 K12 ["SharedFlags"]
       32 GETTABLEKS                       R5 R5 K13 ["getFFlagDevFrameworkFixInputBackground"]
       34 CALL                             R4 1 1
       35 MOVE                             R5 R1
       36 LOADK                            R6 K14 [".Component-Pane"]
       37 DUPTABLE                         R7 K20 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Size"]}]
       38 GETIMPORT                        R8 K23 [UDim2.fromScale]
       40 LOADN                            R9 1
       41 LOADN                            R10 1
       42 CALL                             R8 2 1
       43 SETTABLEKS                       R8 R7 K19 ["Size"]
       45 NEWTABLE                         R8 0 11
       47 MOVE                             R9 R1
       48 LOADK                            R10 K24 [".Default"]
       49 DUPTABLE                         R11 K27 [{["BackgroundColor3"] = "$BackgroundDefault", ["BackgroundTransparency"] = 0}]
       50 CALL                             R9 2 1
       51 MOVE                             R10 R1
       52 LOADK                            R11 K28 [".Paper"]
       53 DUPTABLE                         R12 K30 [{["BackgroundColor3"] = "$BackgroundPaper", ["BackgroundTransparency"] = 0}]
       54 CALL                             R10 2 1
       55 MOVE                             R11 R1
       56 LOADK                            R12 K31 [".Main"]
       57 DUPTABLE                         R13 K27 [{["BackgroundColor3"] = "$BackgroundDefault", ["BackgroundTransparency"] = 0}]
       58 CALL                             R11 2 1
       59 MOVE                             R12 R1
       60 LOADK                            R13 K32 [".Muted"]
       61 DUPTABLE                         R14 K34 [{["BackgroundColor3"] = "$ForegroundMuted", ["BackgroundTransparency"] = 0}]
       62 CALL                             R12 2 1
       63 MOVE                             R13 R1
       64 LOADK                            R14 K35 [".Contrast"]
       65 DUPTABLE                         R15 K37 [{["BackgroundColor3"] = "$ForegroundContrast", ["BackgroundTransparency"] = 0}]
       66 CALL                             R13 2 1
       67 MOVE                             R14 R1
       68 LOADK                            R15 K38 [".PrimaryBrand"]
       69 DUPTABLE                         R16 K42 [{["BackgroundColor3"] = "$PrimaryMain", ["BackgroundTransparency"] = 0, ["TextColor3"] = "$TextPrimary"}]
       70 NEWTABLE                         R17 0 1
       72 MOVE                             R18 R1
       73 LOADK                            R19 K43 [":hover"]
       74 DUPTABLE                         R20 K45 [{["BackgroundColor3"] = "$PrimaryHoverBackground"}]
       75 CALL                             R18 2 -1
       76 SETLIST                          R17 R18 -1 [1]
       78 CALL                             R14 3 1
       79 MOVE                             R15 R1
       80 LOADK                            R16 K46 [".Primary"]
       81 DUPTABLE                         R17 K47 [{["BackgroundColor3"] = "$TextPrimary", ["BackgroundTransparency"] = 0}]
       82 NEWTABLE                         R18 0 1
       84 MOVE                             R19 R1
       85 LOADK                            R20 K43 [":hover"]
       86 DUPTABLE                         R21 K49 [{["BackgroundColor3"] = "$TextSecondary"}]
       87 CALL                             R19 2 -1
       88 SETLIST                          R18 R19 -1 [1]
       90 CALL                             R15 3 1
       91 MOVE                             R16 R1
       92 LOADK                            R17 K50 [".Secondary"]
       93 DUPTABLE                         R18 K52 [{["BackgroundColor3"] = "$SecondaryMain", ["BackgroundTransparency"] = 0}]
       94 NEWTABLE                         R19 0 1
       96 MOVE                             R20 R1
       97 LOADK                            R21 K43 [":hover"]
       98 DUPTABLE                         R22 K54 [{["BackgroundColor3"] = "$SecondaryHoverBackground"}]
       99 CALL                             R20 2 -1
      100 SETLIST                          R19 R20 -1 [1]
      102 CALL                             R16 3 1
      103 MOVE                             R17 R1
      104 LOADK                            R18 K55 [".Row"]
      105 DUPTABLE                         R19 K57 [{["BackgroundColor3"] = "$FilledInputBackground", ["BackgroundTransparency"]}]
      106 MOVE                             R21 R4
      107 CALL                             R21 0 1
      108 JUMPIF                           R21 ; [+9]
      109 GETTABLEKS                       R20 R3 K58 ["Color"]
      111 GETTABLEKS                       R20 R20 K59 ["Shift"]
      113 GETTABLEKS                       R20 R20 K60 ["Shift_200"]
      115 GETTABLEKS                       R20 R20 K61 ["Transparency"]
      117 JUMP                             ; [+1]
      118 LOADN                            R20 0
      119 SETTABLEKS                       R20 R19 K15 ["BackgroundTransparency"]
      121 NEWTABLE                         R20 0 1
      123 MOVE                             R21 R1
      124 LOADK                            R22 K43 [":hover"]
      125 DUPTABLE                         R23 K62 [{["BackgroundColor3"] = "$ForegroundContrast"}]
      126 CALL                             R21 2 -1
      127 SETLIST                          R20 R21 -1 [1]
      129 CALL                             R17 3 1
      130 MOVE                             R18 R1
      131 LOADK                            R19 K63 [".Selected"]
      132 DUPTABLE                         R20 K65 [{["BackgroundColor3"] = "$ActionSelected", ["BackgroundTransparency"] = 0}]
      133 CALL                             R18 2 1
      134 MOVE                             R19 R1
      135 LOADK                            R20 K66 [".Input"]
      136 DUPTABLE                         R21 K57 [{["BackgroundColor3"] = "$FilledInputBackground", ["BackgroundTransparency"]}]
      137 MOVE                             R23 R4
      138 CALL                             R23 0 1
      139 JUMPIF                           R23 ; [+9]
      140 GETTABLEKS                       R22 R3 K58 ["Color"]
      142 GETTABLEKS                       R22 R22 K59 ["Shift"]
      144 GETTABLEKS                       R22 R22 K60 ["Shift_200"]
      146 GETTABLEKS                       R22 R22 K61 ["Transparency"]
      148 JUMP                             ; [+1]
      149 LOADN                            R22 0
      150 SETTABLEKS                       R22 R21 K15 ["BackgroundTransparency"]
      152 CALL                             R19 2 -1
      153 SETLIST                          R8 R9 -1 [1]
      155 CALL                             R5 3 -1
      156 RETURN                           R5 -1
