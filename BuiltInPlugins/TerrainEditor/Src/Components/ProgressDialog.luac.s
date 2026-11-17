PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Pause"]
        3 JUMPIFNOTEQ                      R0 R1 ; [+10]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["OnPause"]
        8 JUMPIFNOT                        R1 ; [+5]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K1 ["OnPause"]
       12 CALL                             R1 0 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K2 ["Resume"]
       17 JUMPIFNOTEQ                      R0 R1 ; [+10]
       19 GETUPVAL                         R1 1
       20 GETTABLEKS                       R1 R1 K3 ["OnResume"]
       22 JUMPIFNOT                        R1 ; [+5]
       23 GETUPVAL                         R1 1
       24 GETTABLEKS                       R1 R1 K3 ["OnResume"]
       26 CALL                             R1 0 0
       27 RETURN                           R0 0
       28 GETUPVAL                         R1 0
       29 GETTABLEKS                       R1 R1 K4 ["Cancel"]
       31 JUMPIFNOTEQ                      R0 R1 ; [+9]
       33 GETUPVAL                         R1 1
       34 GETTABLEKS                       R1 R1 K5 ["OnCancel"]
       36 JUMPIFNOT                        R1 ; [+4]
       37 GETUPVAL                         R1 1
       38 GETTABLEKS                       R1 R1 K5 ["OnCancel"]
       40 CALL                             R1 0 0
       41 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["ProgressDialog"]
        2 NAMECALL                         R1 R1 K1 ["use"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 1
        6 NAMECALL                         R2 R2 K1 ["use"]
        8 CALL                             R2 1 1
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K2 ["new"]
       12 CALL                             R3 0 1
       13 NEWTABLE                         R4 0 0
       15 GETTABLEKS                       R5 R0 K3 ["OnPause"]
       17 JUMPIFNOT                        R5 ; [+49]
       18 GETTABLEKS                       R5 R0 K4 ["OnResume"]
       20 JUMPIFNOT                        R5 ; [+46]
       21 GETTABLEKS                       R5 R0 K5 ["Paused"]
       23 JUMPIFNOT                        R5 ; [+22]
       24 DUPTABLE                         R7 K8 [{"Key", "Text"}]
       25 GETUPVAL                         R8 3
       26 GETTABLEKS                       R8 R8 K9 ["Resume"]
       28 SETTABLEKS                       R8 R7 K6 ["Key"]
       30 LOADK                            R10 K10 ["Dialog"]
       31 GETUPVAL                         R11 3
       32 GETTABLEKS                       R11 R11 K9 ["Resume"]
       34 NAMECALL                         R8 R2 K11 ["getText"]
       36 CALL                             R8 3 1
       37 SETTABLEKS                       R8 R7 K7 ["Text"]
       39 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
       41 MOVE                             R6 R4
       42 GETIMPORT                        R5 K14 [table.insert]
       44 CALL                             R5 2 0
       45 JUMP                             ; [+21]
       46 DUPTABLE                         R7 K8 [{"Key", "Text"}]
       47 GETUPVAL                         R8 3
       48 GETTABLEKS                       R8 R8 K15 ["Pause"]
       50 SETTABLEKS                       R8 R7 K6 ["Key"]
       52 LOADK                            R10 K10 ["Dialog"]
       53 GETUPVAL                         R11 3
       54 GETTABLEKS                       R11 R11 K15 ["Pause"]
       56 NAMECALL                         R8 R2 K11 ["getText"]
       58 CALL                             R8 3 1
       59 SETTABLEKS                       R8 R7 K7 ["Text"]
       61 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
       63 MOVE                             R6 R4
       64 GETIMPORT                        R5 K14 [table.insert]
       66 CALL                             R5 2 0
       67 GETTABLEKS                       R5 R0 K16 ["OnCancel"]
       69 JUMPIFNOT                        R5 ; [+21]
       70 DUPTABLE                         R7 K8 [{"Key", "Text"}]
       71 GETUPVAL                         R8 3
       72 GETTABLEKS                       R8 R8 K17 ["Cancel"]
       74 SETTABLEKS                       R8 R7 K6 ["Key"]
       76 LOADK                            R10 K10 ["Dialog"]
       77 GETUPVAL                         R11 3
       78 GETTABLEKS                       R11 R11 K17 ["Cancel"]
       80 NAMECALL                         R8 R2 K11 ["getText"]
       82 CALL                             R8 3 1
       83 SETTABLEKS                       R8 R7 K7 ["Text"]
       85 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
       87 MOVE                             R6 R4
       88 GETIMPORT                        R5 K14 [table.insert]
       90 CALL                             R5 2 0
       91 GETUPVAL                         R5 4
       92 GETTABLEKS                       R5 R5 K18 ["createElement"]
       94 GETUPVAL                         R6 5
       95 DUPTABLE                         R7 K27 [{["Enabled"], ["Modal"] = False, ["Title"], ["MinContentSize"], ["Buttons"], ["OnButtonPressed"], ["OnClose"]}]
       96 GETTABLEKS                       R8 R0 K19 ["Enabled"]
       98 SETTABLEKS                       R8 R7 K19 ["Enabled"]
      100 GETTABLEKS                       R8 R0 K22 ["Title"]
      102 SETTABLEKS                       R8 R7 K22 ["Title"]
      104 GETTABLEKS                       R8 R1 K23 ["MinContentSize"]
      106 SETTABLEKS                       R8 R7 K23 ["MinContentSize"]
      108 SETTABLEKS                       R4 R7 K24 ["Buttons"]
      110 NEWCLOSURE                       R8 P0
      111 CAPTURE                          UPVAL U3
      112 CAPTURE                          VAL R0
      113 SETTABLEKS                       R8 R7 K25 ["OnButtonPressed"]
      115 GETTABLEKS                       R8 R0 K26 ["OnClose"]
      117 SETTABLEKS                       R8 R7 K26 ["OnClose"]
      119 DUPTABLE                         R8 K29 [{"Contents"}]
      120 GETUPVAL                         R9 4
      121 GETTABLEKS                       R9 R9 K18 ["createElement"]
      123 GETUPVAL                         R10 6
      124 DUPTABLE                         R11 K34 [{"Layout", "Padding", "Size", "Spacing"}]
      125 GETIMPORT                        R12 K38 [Enum.FillDirection.Vertical]
      127 SETTABLEKS                       R12 R11 K30 ["Layout"]
      129 GETTABLEKS                       R12 R1 K31 ["Padding"]
      131 SETTABLEKS                       R12 R11 K31 ["Padding"]
      133 GETIMPORT                        R12 K41 [UDim2.fromScale]
      135 LOADN                            R13 1
      136 LOADN                            R14 1
      137 CALL                             R12 2 1
      138 SETTABLEKS                       R12 R11 K32 ["Size"]
      140 GETTABLEKS                       R12 R1 K33 ["Spacing"]
      142 SETTABLEKS                       R12 R11 K33 ["Spacing"]
      144 DUPTABLE                         R12 K45 [{"Description", "Progress", "Time"}]
      145 GETUPVAL                         R13 4
      146 GETTABLEKS                       R13 R13 K18 ["createElement"]
      148 GETUPVAL                         R14 7
      149 DUPTABLE                         R15 K47 [{"LayoutOrder", "Size", "Text"}]
      150 NAMECALL                         R16 R3 K48 ["getNextOrder"]
      152 CALL                             R16 1 1
      153 SETTABLEKS                       R16 R15 K46 ["LayoutOrder"]
      155 GETIMPORT                        R16 K49 [UDim2.new]
      157 LOADN                            R17 1
      158 LOADN                            R18 0
      159 LOADN                            R19 0
      160 GETTABLEKS                       R20 R1 K50 ["DescriptionHeight"]
      162 CALL                             R16 4 1
      163 SETTABLEKS                       R16 R15 K32 ["Size"]
      165 GETTABLEKS                       R16 R0 K42 ["Description"]
      167 SETTABLEKS                       R16 R15 K7 ["Text"]
      169 CALL                             R13 2 1
      170 SETTABLEKS                       R13 R12 K42 ["Description"]
      172 GETUPVAL                         R13 4
      173 GETTABLEKS                       R13 R13 K18 ["createElement"]
      175 GETUPVAL                         R14 8
      176 DUPTABLE                         R15 K51 [{"LayoutOrder", "Progress", "Size"}]
      177 NAMECALL                         R16 R3 K48 ["getNextOrder"]
      179 CALL                             R16 1 1
      180 SETTABLEKS                       R16 R15 K46 ["LayoutOrder"]
      182 GETTABLEKS                       R16 R0 K43 ["Progress"]
      184 SETTABLEKS                       R16 R15 K43 ["Progress"]
      186 GETIMPORT                        R16 K49 [UDim2.new]
      188 LOADN                            R17 1
      189 LOADN                            R18 0
      190 LOADN                            R19 0
      191 GETTABLEKS                       R20 R1 K52 ["ProgressHeight"]
      193 CALL                             R16 4 1
      194 SETTABLEKS                       R16 R15 K32 ["Size"]
      196 CALL                             R13 2 1
      197 SETTABLEKS                       R13 R12 K43 ["Progress"]
      199 GETTABLEKS                       R14 R0 K53 ["TimeRemaining"]
      201 JUMPIFNOT                        R14 ; [+37]
      202 GETUPVAL                         R13 4
      203 GETTABLEKS                       R13 R13 K18 ["createElement"]
      205 GETUPVAL                         R14 7
      206 DUPTABLE                         R15 K47 [{"LayoutOrder", "Size", "Text"}]
      207 NAMECALL                         R16 R3 K48 ["getNextOrder"]
      209 CALL                             R16 1 1
      210 SETTABLEKS                       R16 R15 K46 ["LayoutOrder"]
      212 GETIMPORT                        R16 K49 [UDim2.new]
      214 LOADN                            R17 1
      215 LOADN                            R18 0
      216 LOADN                            R19 0
      217 GETTABLEKS                       R20 R1 K50 ["DescriptionHeight"]
      219 CALL                             R16 4 1
      220 SETTABLEKS                       R16 R15 K32 ["Size"]
      222 LOADK                            R18 K10 ["Dialog"]
      223 LOADK                            R19 K53 ["TimeRemaining"]
      224 DUPTABLE                         R20 K54 [{"Time"}]
      225 GETUPVAL                         R21 9
      226 GETTABLEKS                       R22 R0 K53 ["TimeRemaining"]
      228 MOVE                             R23 R2
      229 CALL                             R21 2 1
      230 SETTABLEKS                       R21 R20 K44 ["Time"]
      232 NAMECALL                         R16 R2 K11 ["getText"]
      234 CALL                             R16 4 1
      235 SETTABLEKS                       R16 R15 K7 ["Text"]
      237 CALL                             R13 2 1
      238 JUMP                             ; [+1]
      239 LOADNIL                          R13
      240 SETTABLEKS                       R13 R12 K44 ["Time"]
      242 CALL                             R9 3 1
      243 SETTABLEKS                       R9 R8 K28 ["Contents"]
      245 CALL                             R5 3 -1
      246 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
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
       23 GETTABLEKS                       R3 R3 K10 ["Localization"]
       25 GETTABLEKS                       R4 R2 K9 ["ContextServices"]
       27 GETTABLEKS                       R4 R4 K11 ["Stylizer"]
       29 GETTABLEKS                       R5 R2 K12 ["UI"]
       31 GETTABLEKS                       R6 R5 K13 ["Pane"]
       33 GETTABLEKS                       R7 R5 K14 ["LoadingBar"]
       35 GETTABLEKS                       R8 R5 K15 ["StyledDialog"]
       37 GETTABLEKS                       R9 R5 K16 ["TextLabel"]
       39 GETTABLEKS                       R10 R2 K17 ["Util"]
       41 GETTABLEKS                       R10 R10 K18 ["LayoutOrderIterator"]
       43 GETIMPORT                        R11 K5 [require]
       45 GETTABLEKS                       R12 R0 K19 ["Src"]
       47 GETTABLEKS                       R12 R12 K20 ["Hooks"]
       49 GETTABLEKS                       R12 R12 K21 ["useOperation"]
       51 CALL                             R11 1 1
       52 GETIMPORT                        R12 K5 [require]
       54 GETTABLEKS                       R13 R0 K19 ["Src"]
       56 GETTABLEKS                       R13 R13 K17 ["Util"]
       58 GETTABLEKS                       R13 R13 K22 ["FormatTimeRemaining"]
       60 CALL                             R12 1 1
       61 GETIMPORT                        R13 K5 [require]
       63 GETTABLEKS                       R14 R0 K19 ["Src"]
       65 GETTABLEKS                       R14 R14 K23 ["Types"]
       67 CALL                             R13 1 1
       68 GETTABLEKS                       R14 R13 K24 ["DialogOption"]
       70 DUPCLOSURE                       R15 K25 [PROTO_1]
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R10
       74 CAPTURE                          VAL R14
       75 CAPTURE                          VAL R1
       76 CAPTURE                          VAL R8
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R12
       81 RETURN                           R15 1
