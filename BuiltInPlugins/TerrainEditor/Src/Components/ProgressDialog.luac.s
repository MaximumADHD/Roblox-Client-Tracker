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
       95 DUPTABLE                         R7 K26 [{"Enabled", "Modal", "Title", "MinContentSize", "Buttons", "OnButtonPressed", "OnClose"}]
       96 GETTABLEKS                       R8 R0 K19 ["Enabled"]
       98 SETTABLEKS                       R8 R7 K19 ["Enabled"]
      100 LOADB                            R8 0
      101 SETTABLEKS                       R8 R7 K20 ["Modal"]
      103 GETTABLEKS                       R8 R0 K21 ["Title"]
      105 SETTABLEKS                       R8 R7 K21 ["Title"]
      107 GETTABLEKS                       R8 R1 K22 ["MinContentSize"]
      109 SETTABLEKS                       R8 R7 K22 ["MinContentSize"]
      111 SETTABLEKS                       R4 R7 K23 ["Buttons"]
      113 NEWCLOSURE                       R8 P0
      114 CAPTURE                          UPVAL U3
      115 CAPTURE                          VAL R0
      116 SETTABLEKS                       R8 R7 K24 ["OnButtonPressed"]
      118 GETTABLEKS                       R8 R0 K25 ["OnClose"]
      120 SETTABLEKS                       R8 R7 K25 ["OnClose"]
      122 DUPTABLE                         R8 K28 [{"Contents"}]
      123 GETUPVAL                         R9 4
      124 GETTABLEKS                       R9 R9 K18 ["createElement"]
      126 GETUPVAL                         R10 6
      127 DUPTABLE                         R11 K33 [{"Layout", "Padding", "Size", "Spacing"}]
      128 GETIMPORT                        R12 K37 [Enum.FillDirection.Vertical]
      130 SETTABLEKS                       R12 R11 K29 ["Layout"]
      132 GETTABLEKS                       R12 R1 K30 ["Padding"]
      134 SETTABLEKS                       R12 R11 K30 ["Padding"]
      136 GETIMPORT                        R12 K40 [UDim2.fromScale]
      138 LOADN                            R13 1
      139 LOADN                            R14 1
      140 CALL                             R12 2 1
      141 SETTABLEKS                       R12 R11 K31 ["Size"]
      143 GETTABLEKS                       R12 R1 K32 ["Spacing"]
      145 SETTABLEKS                       R12 R11 K32 ["Spacing"]
      147 DUPTABLE                         R12 K44 [{"Description", "Progress", "Time"}]
      148 GETUPVAL                         R13 4
      149 GETTABLEKS                       R13 R13 K18 ["createElement"]
      151 GETUPVAL                         R14 7
      152 DUPTABLE                         R15 K46 [{"LayoutOrder", "Size", "Text"}]
      153 NAMECALL                         R16 R3 K47 ["getNextOrder"]
      155 CALL                             R16 1 1
      156 SETTABLEKS                       R16 R15 K45 ["LayoutOrder"]
      158 GETIMPORT                        R16 K48 [UDim2.new]
      160 LOADN                            R17 1
      161 LOADN                            R18 0
      162 LOADN                            R19 0
      163 GETTABLEKS                       R20 R1 K49 ["DescriptionHeight"]
      165 CALL                             R16 4 1
      166 SETTABLEKS                       R16 R15 K31 ["Size"]
      168 GETTABLEKS                       R16 R0 K41 ["Description"]
      170 SETTABLEKS                       R16 R15 K7 ["Text"]
      172 CALL                             R13 2 1
      173 SETTABLEKS                       R13 R12 K41 ["Description"]
      175 GETUPVAL                         R13 4
      176 GETTABLEKS                       R13 R13 K18 ["createElement"]
      178 GETUPVAL                         R14 8
      179 DUPTABLE                         R15 K50 [{"LayoutOrder", "Progress", "Size"}]
      180 NAMECALL                         R16 R3 K47 ["getNextOrder"]
      182 CALL                             R16 1 1
      183 SETTABLEKS                       R16 R15 K45 ["LayoutOrder"]
      185 GETTABLEKS                       R16 R0 K42 ["Progress"]
      187 SETTABLEKS                       R16 R15 K42 ["Progress"]
      189 GETIMPORT                        R16 K48 [UDim2.new]
      191 LOADN                            R17 1
      192 LOADN                            R18 0
      193 LOADN                            R19 0
      194 GETTABLEKS                       R20 R1 K51 ["ProgressHeight"]
      196 CALL                             R16 4 1
      197 SETTABLEKS                       R16 R15 K31 ["Size"]
      199 CALL                             R13 2 1
      200 SETTABLEKS                       R13 R12 K42 ["Progress"]
      202 GETTABLEKS                       R14 R0 K52 ["TimeRemaining"]
      204 JUMPIFNOT                        R14 ; [+37]
      205 GETUPVAL                         R13 4
      206 GETTABLEKS                       R13 R13 K18 ["createElement"]
      208 GETUPVAL                         R14 7
      209 DUPTABLE                         R15 K46 [{"LayoutOrder", "Size", "Text"}]
      210 NAMECALL                         R16 R3 K47 ["getNextOrder"]
      212 CALL                             R16 1 1
      213 SETTABLEKS                       R16 R15 K45 ["LayoutOrder"]
      215 GETIMPORT                        R16 K48 [UDim2.new]
      217 LOADN                            R17 1
      218 LOADN                            R18 0
      219 LOADN                            R19 0
      220 GETTABLEKS                       R20 R1 K49 ["DescriptionHeight"]
      222 CALL                             R16 4 1
      223 SETTABLEKS                       R16 R15 K31 ["Size"]
      225 LOADK                            R18 K10 ["Dialog"]
      226 LOADK                            R19 K52 ["TimeRemaining"]
      227 DUPTABLE                         R20 K53 [{"Time"}]
      228 GETUPVAL                         R21 9
      229 GETTABLEKS                       R22 R0 K52 ["TimeRemaining"]
      231 MOVE                             R23 R2
      232 CALL                             R21 2 1
      233 SETTABLEKS                       R21 R20 K43 ["Time"]
      235 NAMECALL                         R16 R2 K11 ["getText"]
      237 CALL                             R16 4 1
      238 SETTABLEKS                       R16 R15 K7 ["Text"]
      240 CALL                             R13 2 1
      241 JUMP                             ; [+1]
      242 LOADNIL                          R13
      243 SETTABLEKS                       R13 R12 K43 ["Time"]
      245 CALL                             R9 3 1
      246 SETTABLEKS                       R9 R8 K27 ["Contents"]
      248 CALL                             R5 3 -1
      249 RETURN                           R5 -1

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
