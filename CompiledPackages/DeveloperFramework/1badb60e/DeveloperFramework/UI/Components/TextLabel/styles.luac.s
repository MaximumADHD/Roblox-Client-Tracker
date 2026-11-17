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
       17 LOADK                            R3 K9 [".Component-TextLabel"]
       18 DUPTABLE                         R4 K21 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Font"] = "$TextLabelFont", ["Size"], ["TextSize"] = "$TextLabelTextSize", ["TextColor3"] = "$TextPrimary"}]
       19 GETIMPORT                        R5 K24 [UDim2.fromScale]
       21 LOADN                            R6 1
       22 LOADN                            R7 1
       23 CALL                             R5 2 1
       24 SETTABLEKS                       R5 R4 K16 ["Size"]
       26 NEWTABLE                         R5 0 22
       28 MOVE                             R6 R1
       29 LOADK                            R7 K25 [".Disabled"]
       30 DUPTABLE                         R8 K28 [{["TextTransparency"] = 0.5}]
       31 CALL                             R6 2 1
       32 MOVE                             R7 R1
       33 LOADK                            R8 K29 [".Body"]
       34 DUPTABLE                         R9 K32 [{["TextSize"] = 14, ["TextColor3"] = "$TextSecondary"}]
       35 CALL                             R7 2 1
       36 MOVE                             R8 R1
       37 LOADK                            R9 K33 [".Bold"]
       38 DUPTABLE                         R10 K34 [{"Font"}]
       39 GETIMPORT                        R11 K37 [Enum.Font.SourceSansBold]
       41 SETTABLEKS                       R11 R10 K14 ["Font"]
       43 CALL                             R8 2 1
       44 MOVE                             R9 R1
       45 LOADK                            R10 K38 [".Semibold"]
       46 DUPTABLE                         R11 K40 [{["Font"], ["TextSize"] = 22}]
       47 GETIMPORT                        R12 K42 [Enum.Font.SourceSansSemibold]
       49 SETTABLEKS                       R12 R11 K14 ["Font"]
       51 CALL                             R9 2 1
       52 MOVE                             R10 R1
       53 LOADK                            R11 K43 [".SubText"]
       54 DUPTABLE                         R12 K44 [{["TextColor3"] = "$TextSecondary"}]
       55 CALL                             R10 2 1
       56 MOVE                             R11 R1
       57 LOADK                            R12 K45 [".Label"]
       58 DUPTABLE                         R13 K44 [{["TextColor3"] = "$TextSecondary"}]
       59 CALL                             R11 2 1
       60 MOVE                             R12 R1
       61 LOADK                            R13 K46 [".Selected"]
       62 DUPTABLE                         R14 K48 [{["TextColor3"] = "$TextLink"}]
       63 CALL                             R12 2 1
       64 MOVE                             R13 R1
       65 LOADK                            R14 K49 [".Subtitle"]
       66 DUPTABLE                         R15 K50 [{["TextColor3"] = "$TextSecondary", ["TextSize"] = 22}]
       67 CALL                             R13 2 1
       68 MOVE                             R14 R1
       69 LOADK                            R15 K51 [".Title"]
       70 DUPTABLE                         R16 K53 [{["TextSize"] = "$TextLabelTitleSize"}]
       71 CALL                             R14 2 1
       72 MOVE                             R15 R1
       73 LOADK                            R16 K54 [".Contrast"]
       74 DUPTABLE                         R17 K56 [{["TextColor3"] = "$TextContrast"}]
       75 CALL                             R15 2 1
       76 MOVE                             R16 R1
       77 LOADK                            R17 K57 [".Success"]
       78 DUPTABLE                         R18 K59 [{["TextColor3"] = "$TextSuccess"}]
       79 CALL                             R16 2 1
       80 MOVE                             R17 R1
       81 LOADK                            R18 K60 [".Error"]
       82 DUPTABLE                         R19 K62 [{["TextColor3"] = "$TextError"}]
       83 CALL                             R17 2 1
       84 MOVE                             R18 R1
       85 LOADK                            R19 K63 [".Warning"]
       86 DUPTABLE                         R20 K65 [{["TextColor3"] = "$TextWarning"}]
       87 CALL                             R18 2 1
       88 MOVE                             R19 R1
       89 LOADK                            R20 K66 [".Monospace"]
       90 DUPTABLE                         R21 K67 [{["Font"], ["TextSize"] = 14}]
       91 GETIMPORT                        R22 K69 [Enum.Font.RobotoMono]
       93 SETTABLEKS                       R22 R21 K14 ["Font"]
       95 CALL                             R19 2 1
       96 MOVE                             R20 R1
       97 LOADK                            R21 K70 [".Wrap"]
       98 DUPTABLE                         R22 K75 [{["TextWrapped"] = True, ["TextXAlignment"], ["TextYAlignment"]}]
       99 GETIMPORT                        R23 K77 [Enum.TextXAlignment.Left]
      101 SETTABLEKS                       R23 R22 K73 ["TextXAlignment"]
      103 GETIMPORT                        R23 K79 [Enum.TextYAlignment.Top]
      105 SETTABLEKS                       R23 R22 K74 ["TextYAlignment"]
      107 CALL                             R20 2 1
      108 MOVE                             R21 R1
      109 LOADK                            R22 K80 [".Truncate"]
      110 DUPTABLE                         R23 K82 [{"TextTruncate"}]
      111 GETIMPORT                        R24 K84 [Enum.TextTruncate.AtEnd]
      113 SETTABLEKS                       R24 R23 K81 ["TextTruncate"]
      115 CALL                             R21 2 1
      116 SETLIST                          R5 R6 16 [1]
      118 MOVE                             R6 R1
      119 LOADK                            R7 K85 [".Left"]
      120 DUPTABLE                         R8 K86 [{"TextXAlignment"}]
      121 GETIMPORT                        R9 K77 [Enum.TextXAlignment.Left]
      123 SETTABLEKS                       R9 R8 K73 ["TextXAlignment"]
      125 CALL                             R6 2 1
      126 MOVE                             R7 R1
      127 LOADK                            R8 K87 [".Right"]
      128 DUPTABLE                         R9 K86 [{"TextXAlignment"}]
      129 GETIMPORT                        R10 K89 [Enum.TextXAlignment.Right]
      131 SETTABLEKS                       R10 R9 K73 ["TextXAlignment"]
      133 CALL                             R7 2 1
      134 MOVE                             R8 R1
      135 LOADK                            R9 K90 [".Top"]
      136 DUPTABLE                         R10 K91 [{"TextYAlignment"}]
      137 GETIMPORT                        R11 K79 [Enum.TextYAlignment.Top]
      139 SETTABLEKS                       R11 R10 K74 ["TextYAlignment"]
      141 CALL                             R8 2 1
      142 MOVE                             R9 R1
      143 LOADK                            R10 K92 [".Bottom"]
      144 DUPTABLE                         R11 K91 [{"TextYAlignment"}]
      145 GETIMPORT                        R12 K94 [Enum.TextYAlignment.Bottom]
      147 SETTABLEKS                       R12 R11 K74 ["TextYAlignment"]
      149 CALL                             R9 2 1
      150 MOVE                             R10 R1
      151 LOADK                            R11 K95 [".BuilderSans"]
      152 DUPTABLE                         R12 K34 [{"Font"}]
      153 GETIMPORT                        R13 K97 [Enum.Font.BuilderSans]
      155 SETTABLEKS                       R13 R12 K14 ["Font"]
      157 NEWTABLE                         R13 0 2
      159 MOVE                             R14 R1
      160 LOADK                            R15 K33 [".Bold"]
      161 DUPTABLE                         R16 K34 [{"Font"}]
      162 GETIMPORT                        R17 K99 [Enum.Font.BuilderSansBold]
      164 SETTABLEKS                       R17 R16 K14 ["Font"]
      166 CALL                             R14 2 1
      167 MOVE                             R15 R1
      168 LOADK                            R16 K38 [".Semibold"]
      169 DUPTABLE                         R17 K40 [{["Font"], ["TextSize"] = 22}]
      170 GETIMPORT                        R18 K101 [Enum.Font.BuilderSansMedium]
      172 SETTABLEKS                       R18 R17 K14 ["Font"]
      174 CALL                             R15 2 -1
      175 SETLIST                          R13 R14 -1 [1]
      177 CALL                             R10 3 1
      178 MOVE                             R11 R1
      179 LOADK                            R12 K102 [".Muted"]
      180 DUPTABLE                         R13 K104 [{["TextColor3"] = "$ContentMuted"}]
      181 CALL                             R11 2 -1
      182 SETLIST                          R5 R6 -1 [17]
      184 DUPTABLE                         R6 K110 [{["TextLabelFont"], ["TextLabelTextSize"] = 16, ["TextLabelTitleSize"] = 24}]
      185 GETIMPORT                        R7 K112 [Enum.Font.SourceSans]
      187 SETTABLEKS                       R7 R6 K105 ["TextLabelFont"]
      189 CALL                             R2 4 -1
      190 RETURN                           R2 -1
