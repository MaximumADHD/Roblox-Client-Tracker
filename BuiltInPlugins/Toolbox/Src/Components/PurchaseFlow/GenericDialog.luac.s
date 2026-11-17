PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Localization"]
        3 NAMECALL                         R1 R1 K1 ["use"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 1
        7 NAMECALL                         R2 R2 K1 ["use"]
        9 CALL                             R2 1 1
       10 GETTABLEKS                       R3 R0 K2 ["Description"]
       12 GETTABLEKS                       R4 R0 K3 ["Header"]
       14 GETTABLEKS                       R5 R0 K4 ["Image"]
       16 GETTABLEKS                       R6 R0 K5 ["OnClose"]
       18 GETTABLEKS                       R8 R0 K6 ["Title"]
       20 JUMPIFNOT                        R8 ; [+3]
       21 GETTABLEKS                       R7 R0 K6 ["Title"]
       23 JUMP                             ; [+5]
       24 LOADK                            R9 K7 ["General"]
       25 LOADK                            R10 K8 ["RobloxStudio"]
       26 NAMECALL                         R7 R1 K9 ["getText"]
       28 CALL                             R7 3 1
       29 GETUPVAL                         R8 2
       30 GETTABLEKS                       R8 R8 K10 ["new"]
       32 CALL                             R8 0 1
       33 GETUPVAL                         R10 3
       34 GETTABLEKS                       R10 R10 K11 ["PROMPT_SIZE"]
       36 GETTABLEKS                       R10 R10 K12 ["Y"]
       38 GETTABLEKS                       R10 R10 K13 ["Offset"]
       40 GETUPVAL                         R11 3
       41 GETTABLEKS                       R11 R11 K14 ["BALANCE_SIZE"]
       43 GETTABLEKS                       R11 R11 K12 ["Y"]
       45 GETTABLEKS                       R11 R11 K13 ["Offset"]
       47 ADD                              R9 R10 R11
       48 GETUPVAL                         R11 3
       49 GETTABLEKS                       R11 R11 K15 ["IMAGE_SIZE"]
       51 GETTABLEKS                       R11 R11 K16 ["X"]
       53 GETTABLEKS                       R11 R11 K13 ["Offset"]
       55 GETUPVAL                         R12 3
       56 GETTABLEKS                       R12 R12 K11 ["PROMPT_SIZE"]
       58 GETTABLEKS                       R12 R12 K16 ["X"]
       60 GETTABLEKS                       R12 R12 K13 ["Offset"]
       62 ADD                              R10 R11 R12
       63 GETUPVAL                         R11 4
       64 GETTABLEKS                       R11 R11 K17 ["createElement"]
       66 GETUPVAL                         R12 5
       67 DUPTABLE                         R13 K22 [{"Buttons", "LayoutOrder", "MinContentSize", "OnButtonPressed", "OnClose", "Title"}]
       68 NEWTABLE                         R14 0 1
       70 DUPTABLE                         R15 K28 [{["Key"] = False, ["Style"] = "RoundPrimary", ["Text"]}]
       71 LOADK                            R18 K29 ["Common"]
       72 LOADK                            R19 K30 ["OK"]
       73 NAMECALL                         R16 R1 K9 ["getText"]
       75 CALL                             R16 3 1
       76 SETTABLEKS                       R16 R15 K27 ["Text"]
       78 SETLIST                          R14 R15 1 [1]
       80 SETTABLEKS                       R14 R13 K18 ["Buttons"]
       82 GETTABLEKS                       R14 R0 K19 ["LayoutOrder"]
       84 SETTABLEKS                       R14 R13 K19 ["LayoutOrder"]
       86 GETIMPORT                        R14 K32 [Vector2.new]
       88 MOVE                             R15 R10
       89 MOVE                             R16 R9
       90 CALL                             R14 2 1
       91 SETTABLEKS                       R14 R13 K20 ["MinContentSize"]
       93 SETTABLEKS                       R6 R13 K21 ["OnButtonPressed"]
       95 JUMPIFNOT                        R6 ; [+2]
       96 MOVE                             R14 R6
       97 JUMP                             ; [+1]
       98 DUPCLOSURE                       R14 K33 [PROTO_0]
       99 SETTABLEKS                       R14 R13 K5 ["OnClose"]
      101 SETTABLEKS                       R7 R13 K6 ["Title"]
      103 DUPTABLE                         R14 K35 [{"Container"}]
      104 GETUPVAL                         R15 4
      105 GETTABLEKS                       R15 R15 K17 ["createElement"]
      107 GETUPVAL                         R16 6
      108 DUPTABLE                         R17 K41 [{["AutomaticSize"], ["Layout"], ["LayoutOrder"], ["Spacing"] = 16, ["VerticalAlignment"]}]
      109 GETIMPORT                        R18 K44 [Enum.AutomaticSize.XY]
      111 SETTABLEKS                       R18 R17 K36 ["AutomaticSize"]
      113 GETIMPORT                        R18 K47 [Enum.FillDirection.Horizontal]
      115 SETTABLEKS                       R18 R17 K37 ["Layout"]
      117 NAMECALL                         R18 R8 K48 ["getNextOrder"]
      119 CALL                             R18 1 1
      120 SETTABLEKS                       R18 R17 K19 ["LayoutOrder"]
      122 GETIMPORT                        R18 K50 [Enum.VerticalAlignment.Top]
      124 SETTABLEKS                       R18 R17 K40 ["VerticalAlignment"]
      126 DUPTABLE                         R18 K53 [{"Thumbnail", "TextContainer"}]
      127 JUMPIFNOT                        R5 ; [+19]
      128 GETUPVAL                         R19 4
      129 GETTABLEKS                       R19 R19 K17 ["createElement"]
      131 GETUPVAL                         R20 7
      132 DUPTABLE                         R21 K55 [{"Image", "LayoutOrder", "Size"}]
      133 SETTABLEKS                       R5 R21 K4 ["Image"]
      135 NAMECALL                         R22 R8 K48 ["getNextOrder"]
      137 CALL                             R22 1 1
      138 SETTABLEKS                       R22 R21 K19 ["LayoutOrder"]
      140 GETUPVAL                         R22 3
      141 GETTABLEKS                       R22 R22 K15 ["IMAGE_SIZE"]
      143 SETTABLEKS                       R22 R21 K54 ["Size"]
      145 CALL                             R19 2 1
      146 JUMP                             ; [+1]
      147 LOADNIL                          R19
      148 SETTABLEKS                       R19 R18 K51 ["Thumbnail"]
      150 GETUPVAL                         R19 4
      151 GETTABLEKS                       R19 R19 K17 ["createElement"]
      153 GETUPVAL                         R20 6
      154 DUPTABLE                         R21 K58 [{["AutomaticSize"], ["HorizontalAlignment"], ["Layout"], ["LayoutOrder"], ["Spacing"] = 8, ["Size"], ["VerticalAlignment"]}]
      155 GETUPVAL                         R23 8
      156 CALL                             R23 0 1
      157 JUMPIFNOT                        R23 ; [+3]
      158 GETIMPORT                        R22 K59 [Enum.AutomaticSize.Y]
      160 JUMP                             ; [+2]
      161 GETIMPORT                        R22 K44 [Enum.AutomaticSize.XY]
      163 SETTABLEKS                       R22 R21 K36 ["AutomaticSize"]
      165 GETUPVAL                         R23 8
      166 CALL                             R23 0 1
      167 JUMPIFNOT                        R23 ; [+3]
      168 GETIMPORT                        R22 K61 [Enum.HorizontalAlignment.Left]
      170 JUMP                             ; [+1]
      171 LOADNIL                          R22
      172 SETTABLEKS                       R22 R21 K56 ["HorizontalAlignment"]
      174 GETIMPORT                        R22 K63 [Enum.FillDirection.Vertical]
      176 SETTABLEKS                       R22 R21 K37 ["Layout"]
      178 NAMECALL                         R22 R8 K48 ["getNextOrder"]
      180 CALL                             R22 1 1
      181 SETTABLEKS                       R22 R21 K19 ["LayoutOrder"]
      183 GETUPVAL                         R23 8
      184 CALL                             R23 0 1
      185 JUMPIFNOT                        R23 ; [+17]
      186 JUMPIFNOT                        R5 ; [+16]
      187 GETIMPORT                        R22 K65 [UDim2.new]
      189 LOADN                            R23 1
      190 GETUPVAL                         R26 3
      191 GETTABLEKS                       R26 R26 K15 ["IMAGE_SIZE"]
      193 GETTABLEKS                       R26 R26 K16 ["X"]
      195 GETTABLEKS                       R26 R26 K13 ["Offset"]
      197 MINUS                            R25 R26
      198 SUBK                             R24 R25 K39 [16]
      199 LOADN                            R25 0
      200 LOADN                            R26 0
      201 CALL                             R22 4 1
      202 JUMP                             ; [+7]
      203 GETIMPORT                        R22 K65 [UDim2.new]
      205 LOADN                            R23 1
      206 LOADN                            R24 0
      207 LOADN                            R25 0
      208 LOADN                            R26 0
      209 CALL                             R22 4 1
      210 SETTABLEKS                       R22 R21 K54 ["Size"]
      212 GETIMPORT                        R22 K50 [Enum.VerticalAlignment.Top]
      214 SETTABLEKS                       R22 R21 K40 ["VerticalAlignment"]
      216 DUPTABLE                         R22 K67 [{"Header", "Prompt"}]
      217 GETUPVAL                         R23 4
      218 GETTABLEKS                       R23 R23 K17 ["createElement"]
      220 GETUPVAL                         R24 9
      221 DUPTABLE                         R25 K73 [{["AutomaticSize"], ["LayoutOrder"], ["Font"], ["Size"], ["Text"], ["TextColor"], ["TextWrapped"] = True, ["TextXAlignment"]}]
      222 GETIMPORT                        R26 K59 [Enum.AutomaticSize.Y]
      224 SETTABLEKS                       R26 R25 K36 ["AutomaticSize"]
      226 NAMECALL                         R26 R8 K48 ["getNextOrder"]
      228 CALL                             R26 1 1
      229 SETTABLEKS                       R26 R25 K19 ["LayoutOrder"]
      231 GETUPVAL                         R26 10
      232 GETTABLEKS                       R26 R26 K74 ["FONT_BOLD"]
      234 SETTABLEKS                       R26 R25 K68 ["Font"]
      236 GETIMPORT                        R26 K65 [UDim2.new]
      238 LOADN                            R27 1
      239 LOADN                            R28 0
      240 LOADN                            R29 0
      241 LOADN                            R30 0
      242 CALL                             R26 4 1
      243 SETTABLEKS                       R26 R25 K54 ["Size"]
      245 SETTABLEKS                       R4 R25 K27 ["Text"]
      247 GETTABLEKS                       R26 R2 K75 ["purchaseDialog"]
      249 GETTABLEKS                       R26 R26 K76 ["promptText"]
      251 SETTABLEKS                       R26 R25 K69 ["TextColor"]
      253 GETIMPORT                        R26 K77 [Enum.TextXAlignment.Left]
      255 SETTABLEKS                       R26 R25 K72 ["TextXAlignment"]
      257 CALL                             R23 2 1
      258 SETTABLEKS                       R23 R22 K3 ["Header"]
      260 GETUPVAL                         R23 4
      261 GETTABLEKS                       R23 R23 K17 ["createElement"]
      263 GETUPVAL                         R24 9
      264 DUPTABLE                         R25 K78 [{["AutomaticSize"], ["LayoutOrder"], ["Size"], ["Text"], ["TextColor"], ["TextWrapped"] = True, ["TextXAlignment"]}]
      265 GETIMPORT                        R26 K59 [Enum.AutomaticSize.Y]
      267 SETTABLEKS                       R26 R25 K36 ["AutomaticSize"]
      269 NAMECALL                         R26 R8 K48 ["getNextOrder"]
      271 CALL                             R26 1 1
      272 SETTABLEKS                       R26 R25 K19 ["LayoutOrder"]
      274 GETIMPORT                        R26 K65 [UDim2.new]
      276 LOADN                            R27 1
      277 LOADN                            R28 0
      278 LOADN                            R29 0
      279 LOADN                            R30 0
      280 CALL                             R26 4 1
      281 SETTABLEKS                       R26 R25 K54 ["Size"]
      283 SETTABLEKS                       R3 R25 K27 ["Text"]
      285 GETTABLEKS                       R26 R2 K75 ["purchaseDialog"]
      287 GETTABLEKS                       R26 R26 K76 ["promptText"]
      289 SETTABLEKS                       R26 R25 K69 ["TextColor"]
      291 GETIMPORT                        R26 K77 [Enum.TextXAlignment.Left]
      293 SETTABLEKS                       R26 R25 K72 ["TextXAlignment"]
      295 CALL                             R23 2 1
      296 SETTABLEKS                       R23 R22 K66 ["Prompt"]
      298 CALL                             R19 3 1
      299 SETTABLEKS                       R19 R18 K52 ["TextContainer"]
      301 CALL                             R15 3 1
      302 SETTABLEKS                       R15 R14 K34 ["Container"]
      304 CALL                             R11 3 -1
      305 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Framework"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R3 K9 ["UI"]
       21 GETTABLEKS                       R5 R4 K10 ["Image"]
       23 GETTABLEKS                       R6 R3 K9 ["UI"]
       25 GETTABLEKS                       R6 R6 K11 ["Pane"]
       27 GETTABLEKS                       R7 R4 K12 ["StyledDialog"]
       29 GETTABLEKS                       R8 R4 K13 ["TextLabel"]
       31 GETTABLEKS                       R9 R0 K14 ["Src"]
       33 GETTABLEKS                       R9 R9 K15 ["Util"]
       35 GETIMPORT                        R10 K6 [require]
       37 GETTABLEKS                       R11 R9 K16 ["Constants"]
       39 CALL                             R10 1 1
       40 GETIMPORT                        R11 K6 [require]
       42 GETTABLEKS                       R12 R9 K17 ["LayoutOrderIterator"]
       44 CALL                             R11 1 1
       45 GETTABLEKS                       R12 R10 K18 ["Dialog"]
       47 GETTABLEKS                       R13 R3 K19 ["ContextServices"]
       49 GETTABLEKS                       R13 R13 K20 ["Stylizer"]
       51 GETTABLEKS                       R14 R3 K19 ["ContextServices"]
       53 GETIMPORT                        R15 K6 [require]
       55 GETTABLEKS                       R16 R0 K14 ["Src"]
       57 GETTABLEKS                       R16 R16 K15 ["Util"]
       59 GETTABLEKS                       R16 R16 K21 ["SharedFlags"]
       61 GETTABLEKS                       R16 R16 K22 ["getFFlagToolboxFixGenericDialogSize"]
       63 CALL                             R15 1 1
       64 DUPCLOSURE                       R16 K23 [PROTO_1]
       65 CAPTURE                          VAL R14
       66 CAPTURE                          VAL R13
       67 CAPTURE                          VAL R11
       68 CAPTURE                          VAL R12
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R15
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R10
       76 RETURN                           R16 1
