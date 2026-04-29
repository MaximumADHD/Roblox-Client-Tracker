MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Styling"]
       13 GETTABLEKS                       R2 R3 K8 ["createStyleRule"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R5 R0 K9 ["Style"]
       20 GETTABLEKS                       R4 R5 K10 ["Themes"]
       22 GETTABLEKS                       R3 R4 K11 ["FoundationDark"]
       24 CALL                             R2 1 1
       25 MOVE                             R3 R2
       26 LOADN                            R4 1
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K6 [require]
       30 GETTABLEKS                       R6 R0 K12 ["SharedFlags"]
       32 GETTABLEKS                       R5 R6 K13 ["getFFlagDevFrameworkFixInputBackground"]
       34 CALL                             R4 1 1
       35 MOVE                             R5 R1
       36 LOADK                            R6 K14 [".Component-Pane"]
       37 DUPTABLE                         R7 K18 [{"BackgroundTransparency", "BorderSizePixel", "Size"}]
       38 LOADN                            R8 1
       39 SETTABLEKS                       R8 R7 K15 ["BackgroundTransparency"]
       41 LOADN                            R8 0
       42 SETTABLEKS                       R8 R7 K16 ["BorderSizePixel"]
       44 GETIMPORT                        R8 K21 [UDim2.fromScale]
       46 LOADN                            R9 1
       47 LOADN                            R10 1
       48 CALL                             R8 2 1
       49 SETTABLEKS                       R8 R7 K17 ["Size"]
       51 NEWTABLE                         R8 0 11
       53 MOVE                             R9 R1
       54 LOADK                            R10 K22 [".Default"]
       55 DUPTABLE                         R11 K24 [{"BackgroundColor3", "BackgroundTransparency"}]
       56 LOADK                            R12 K25 ["$BackgroundDefault"]
       57 SETTABLEKS                       R12 R11 K23 ["BackgroundColor3"]
       59 LOADN                            R12 0
       60 SETTABLEKS                       R12 R11 K15 ["BackgroundTransparency"]
       62 CALL                             R9 2 1
       63 MOVE                             R10 R1
       64 LOADK                            R11 K26 [".Paper"]
       65 DUPTABLE                         R12 K24 [{"BackgroundColor3", "BackgroundTransparency"}]
       66 LOADK                            R13 K27 ["$BackgroundPaper"]
       67 SETTABLEKS                       R13 R12 K23 ["BackgroundColor3"]
       69 LOADN                            R13 0
       70 SETTABLEKS                       R13 R12 K15 ["BackgroundTransparency"]
       72 CALL                             R10 2 1
       73 MOVE                             R11 R1
       74 LOADK                            R12 K28 [".Main"]
       75 DUPTABLE                         R13 K24 [{"BackgroundColor3", "BackgroundTransparency"}]
       76 LOADK                            R14 K25 ["$BackgroundDefault"]
       77 SETTABLEKS                       R14 R13 K23 ["BackgroundColor3"]
       79 LOADN                            R14 0
       80 SETTABLEKS                       R14 R13 K15 ["BackgroundTransparency"]
       82 CALL                             R11 2 1
       83 MOVE                             R12 R1
       84 LOADK                            R13 K29 [".Muted"]
       85 DUPTABLE                         R14 K24 [{"BackgroundColor3", "BackgroundTransparency"}]
       86 LOADK                            R15 K30 ["$ForegroundMuted"]
       87 SETTABLEKS                       R15 R14 K23 ["BackgroundColor3"]
       89 LOADN                            R15 0
       90 SETTABLEKS                       R15 R14 K15 ["BackgroundTransparency"]
       92 CALL                             R12 2 1
       93 MOVE                             R13 R1
       94 LOADK                            R14 K31 [".Contrast"]
       95 DUPTABLE                         R15 K24 [{"BackgroundColor3", "BackgroundTransparency"}]
       96 LOADK                            R16 K32 ["$ForegroundContrast"]
       97 SETTABLEKS                       R16 R15 K23 ["BackgroundColor3"]
       99 LOADN                            R16 0
      100 SETTABLEKS                       R16 R15 K15 ["BackgroundTransparency"]
      102 CALL                             R13 2 1
      103 MOVE                             R14 R1
      104 LOADK                            R15 K33 [".PrimaryBrand"]
      105 DUPTABLE                         R16 K35 [{"BackgroundColor3", "BackgroundTransparency", "TextColor3"}]
      106 LOADK                            R17 K36 ["$PrimaryMain"]
      107 SETTABLEKS                       R17 R16 K23 ["BackgroundColor3"]
      109 LOADN                            R17 0
      110 SETTABLEKS                       R17 R16 K15 ["BackgroundTransparency"]
      112 LOADK                            R17 K37 ["$TextPrimary"]
      113 SETTABLEKS                       R17 R16 K34 ["TextColor3"]
      115 NEWTABLE                         R17 0 1
      117 MOVE                             R18 R1
      118 LOADK                            R19 K38 [":hover"]
      119 DUPTABLE                         R20 K39 [{"BackgroundColor3"}]
      120 LOADK                            R21 K40 ["$PrimaryHoverBackground"]
      121 SETTABLEKS                       R21 R20 K23 ["BackgroundColor3"]
      123 CALL                             R18 2 -1
      124 SETLIST                          R17 R18 -1 [1]
      126 CALL                             R14 3 1
      127 MOVE                             R15 R1
      128 LOADK                            R16 K41 [".Primary"]
      129 DUPTABLE                         R17 K24 [{"BackgroundColor3", "BackgroundTransparency"}]
      130 LOADK                            R18 K37 ["$TextPrimary"]
      131 SETTABLEKS                       R18 R17 K23 ["BackgroundColor3"]
      133 LOADN                            R18 0
      134 SETTABLEKS                       R18 R17 K15 ["BackgroundTransparency"]
      136 NEWTABLE                         R18 0 1
      138 MOVE                             R19 R1
      139 LOADK                            R20 K38 [":hover"]
      140 DUPTABLE                         R21 K39 [{"BackgroundColor3"}]
      141 LOADK                            R22 K42 ["$TextSecondary"]
      142 SETTABLEKS                       R22 R21 K23 ["BackgroundColor3"]
      144 CALL                             R19 2 -1
      145 SETLIST                          R18 R19 -1 [1]
      147 CALL                             R15 3 1
      148 MOVE                             R16 R1
      149 LOADK                            R17 K43 [".Secondary"]
      150 DUPTABLE                         R18 K24 [{"BackgroundColor3", "BackgroundTransparency"}]
      151 LOADK                            R19 K44 ["$SecondaryMain"]
      152 SETTABLEKS                       R19 R18 K23 ["BackgroundColor3"]
      154 LOADN                            R19 0
      155 SETTABLEKS                       R19 R18 K15 ["BackgroundTransparency"]
      157 NEWTABLE                         R19 0 1
      159 MOVE                             R20 R1
      160 LOADK                            R21 K38 [":hover"]
      161 DUPTABLE                         R22 K39 [{"BackgroundColor3"}]
      162 LOADK                            R23 K45 ["$SecondaryHoverBackground"]
      163 SETTABLEKS                       R23 R22 K23 ["BackgroundColor3"]
      165 CALL                             R20 2 -1
      166 SETLIST                          R19 R20 -1 [1]
      168 CALL                             R16 3 1
      169 MOVE                             R17 R1
      170 LOADK                            R18 K46 [".Row"]
      171 DUPTABLE                         R19 K24 [{"BackgroundColor3", "BackgroundTransparency"}]
      172 LOADK                            R20 K47 ["$FilledInputBackground"]
      173 SETTABLEKS                       R20 R19 K23 ["BackgroundColor3"]
      175 MOVE                             R21 R4
      176 CALL                             R21 0 1
      177 JUMPIF                           R21 ; [+9]
      178 GETTABLEKS                       R23 R3 K48 ["Color"]
      180 GETTABLEKS                       R22 R23 K49 ["Shift"]
      182 GETTABLEKS                       R21 R22 K50 ["Shift_200"]
      184 GETTABLEKS                       R20 R21 K51 ["Transparency"]
      186 JUMP                             ; [+1]
      187 LOADN                            R20 0
      188 SETTABLEKS                       R20 R19 K15 ["BackgroundTransparency"]
      190 NEWTABLE                         R20 0 1
      192 MOVE                             R21 R1
      193 LOADK                            R22 K38 [":hover"]
      194 DUPTABLE                         R23 K39 [{"BackgroundColor3"}]
      195 LOADK                            R24 K32 ["$ForegroundContrast"]
      196 SETTABLEKS                       R24 R23 K23 ["BackgroundColor3"]
      198 CALL                             R21 2 -1
      199 SETLIST                          R20 R21 -1 [1]
      201 CALL                             R17 3 1
      202 MOVE                             R18 R1
      203 LOADK                            R19 K52 [".Selected"]
      204 DUPTABLE                         R20 K24 [{"BackgroundColor3", "BackgroundTransparency"}]
      205 LOADK                            R21 K53 ["$ActionSelected"]
      206 SETTABLEKS                       R21 R20 K23 ["BackgroundColor3"]
      208 LOADN                            R21 0
      209 SETTABLEKS                       R21 R20 K15 ["BackgroundTransparency"]
      211 CALL                             R18 2 1
      212 MOVE                             R19 R1
      213 LOADK                            R20 K54 [".Input"]
      214 DUPTABLE                         R21 K24 [{"BackgroundColor3", "BackgroundTransparency"}]
      215 LOADK                            R22 K47 ["$FilledInputBackground"]
      216 SETTABLEKS                       R22 R21 K23 ["BackgroundColor3"]
      218 MOVE                             R23 R4
      219 CALL                             R23 0 1
      220 JUMPIF                           R23 ; [+9]
      221 GETTABLEKS                       R25 R3 K48 ["Color"]
      223 GETTABLEKS                       R24 R25 K49 ["Shift"]
      225 GETTABLEKS                       R23 R24 K50 ["Shift_200"]
      227 GETTABLEKS                       R22 R23 K51 ["Transparency"]
      229 JUMP                             ; [+1]
      230 LOADN                            R22 0
      231 SETTABLEKS                       R22 R21 K15 ["BackgroundTransparency"]
      233 CALL                             R19 2 -1
      234 SETLIST                          R8 R9 -1 [1]
      236 CALL                             R5 3 -1
      237 RETURN                           R5 -1
