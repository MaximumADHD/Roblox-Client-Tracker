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
       16 MOVE                             R2 R1
       17 LOADK                            R3 K9 [".Component-Pane"]
       18 DUPTABLE                         R4 K15 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Size"]}]
       19 GETIMPORT                        R5 K18 [UDim2.fromScale]
       21 LOADN                            R6 1
       22 LOADN                            R7 1
       23 CALL                             R5 2 1
       24 SETTABLEKS                       R5 R4 K14 ["Size"]
       26 NEWTABLE                         R5 0 11
       28 MOVE                             R6 R1
       29 LOADK                            R7 K19 [".Default"]
       30 DUPTABLE                         R8 K22 [{["BackgroundColor3"] = "$BackgroundDefault", ["BackgroundTransparency"] = 0}]
       31 CALL                             R6 2 1
       32 MOVE                             R7 R1
       33 LOADK                            R8 K23 [".Paper"]
       34 DUPTABLE                         R9 K25 [{["BackgroundColor3"] = "$BackgroundPaper", ["BackgroundTransparency"] = 0}]
       35 CALL                             R7 2 1
       36 MOVE                             R8 R1
       37 LOADK                            R9 K26 [".Main"]
       38 DUPTABLE                         R10 K22 [{["BackgroundColor3"] = "$BackgroundDefault", ["BackgroundTransparency"] = 0}]
       39 CALL                             R8 2 1
       40 MOVE                             R9 R1
       41 LOADK                            R10 K27 [".Muted"]
       42 DUPTABLE                         R11 K29 [{["BackgroundColor3"] = "$ForegroundMuted", ["BackgroundTransparency"] = 0}]
       43 CALL                             R9 2 1
       44 MOVE                             R10 R1
       45 LOADK                            R11 K30 [".Contrast"]
       46 DUPTABLE                         R12 K32 [{["BackgroundColor3"] = "$ForegroundContrast", ["BackgroundTransparency"] = 0}]
       47 CALL                             R10 2 1
       48 MOVE                             R11 R1
       49 LOADK                            R12 K33 [".PrimaryBrand"]
       50 DUPTABLE                         R13 K37 [{["BackgroundColor3"] = "$PrimaryMain", ["BackgroundTransparency"] = 0, ["TextColor3"] = "$TextPrimary"}]
       51 NEWTABLE                         R14 0 1
       53 MOVE                             R15 R1
       54 LOADK                            R16 K38 [":hover"]
       55 DUPTABLE                         R17 K40 [{["BackgroundColor3"] = "$PrimaryHoverBackground"}]
       56 CALL                             R15 2 -1
       57 SETLIST                          R14 R15 -1 [1]
       59 CALL                             R11 3 1
       60 MOVE                             R12 R1
       61 LOADK                            R13 K41 [".Primary"]
       62 DUPTABLE                         R14 K42 [{["BackgroundColor3"] = "$TextPrimary", ["BackgroundTransparency"] = 0}]
       63 NEWTABLE                         R15 0 1
       65 MOVE                             R16 R1
       66 LOADK                            R17 K38 [":hover"]
       67 DUPTABLE                         R18 K44 [{["BackgroundColor3"] = "$TextSecondary"}]
       68 CALL                             R16 2 -1
       69 SETLIST                          R15 R16 -1 [1]
       71 CALL                             R12 3 1
       72 MOVE                             R13 R1
       73 LOADK                            R14 K45 [".Secondary"]
       74 DUPTABLE                         R15 K47 [{["BackgroundColor3"] = "$SecondaryMain", ["BackgroundTransparency"] = 0}]
       75 NEWTABLE                         R16 0 1
       77 MOVE                             R17 R1
       78 LOADK                            R18 K38 [":hover"]
       79 DUPTABLE                         R19 K49 [{["BackgroundColor3"] = "$SecondaryHoverBackground"}]
       80 CALL                             R17 2 -1
       81 SETLIST                          R16 R17 -1 [1]
       83 CALL                             R13 3 1
       84 MOVE                             R14 R1
       85 LOADK                            R15 K50 [".Row"]
       86 DUPTABLE                         R16 K52 [{["BackgroundColor3"] = "$FilledInputBackground", ["BackgroundTransparency"] = 0}]
       87 NEWTABLE                         R17 0 1
       89 MOVE                             R18 R1
       90 LOADK                            R19 K38 [":hover"]
       91 DUPTABLE                         R20 K53 [{["BackgroundColor3"] = "$ForegroundContrast"}]
       92 CALL                             R18 2 -1
       93 SETLIST                          R17 R18 -1 [1]
       95 CALL                             R14 3 1
       96 MOVE                             R15 R1
       97 LOADK                            R16 K54 [".Selected"]
       98 DUPTABLE                         R17 K56 [{["BackgroundColor3"] = "$ActionSelected", ["BackgroundTransparency"] = 0}]
       99 CALL                             R15 2 1
      100 MOVE                             R16 R1
      101 LOADK                            R17 K57 [".Input"]
      102 DUPTABLE                         R18 K52 [{["BackgroundColor3"] = "$FilledInputBackground", ["BackgroundTransparency"] = 0}]
      103 CALL                             R16 2 -1
      104 SETLIST                          R5 R6 -1 [1]
      106 CALL                             R2 3 -1
      107 RETURN                           R2 -1
