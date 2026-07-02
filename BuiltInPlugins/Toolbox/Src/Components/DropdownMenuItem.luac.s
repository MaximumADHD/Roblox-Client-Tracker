PROTO_0:
        0 LOADK                            R3 K0 ["[</>]"]
        1 LOADK                            R4 K1 [""]
        2 NAMECALL                         R1 R0 K2 ["gsub"]
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_1:
        0 NAMECALL                         R3 R0 K0 ["lower"]
        2 CALL                             R3 1 1
        3 LOADK                            R6 K1 ["[</>]"]
        4 LOADK                            R7 K2 [""]
        5 NAMECALL                         R4 R3 K3 ["gsub"]
        7 CALL                             R4 3 1
        8 MOVE                             R2 R4
        9 NAMECALL                         R4 R1 K0 ["lower"]
       11 CALL                             R4 1 1
       12 LOADK                            R7 K1 ["[</>]"]
       13 LOADK                            R8 K2 [""]
       14 NAMECALL                         R5 R4 K3 ["gsub"]
       16 CALL                             R5 3 1
       17 MOVE                             R3 R5
       18 GETIMPORT                        R4 K6 [string.find]
       20 MOVE                             R5 R2
       21 MOVE                             R6 R3
       22 LOADN                            R7 1
       23 LOADB                            R8 1
       24 CALL                             R4 4 1
       25 LOADNIL                          R5
       26 JUMPIFEQKNIL                     R4 ; [+46]
       28 LOADN                            R13 0
       29 SUBK                             R14 R4 K7 [1]
       30 FASTCALL3                        STRING_SUB R0 R13 R14
       32 MOVE                             R12 R0
       33 GETIMPORT                        R11 K9 [string.sub]
       35 CALL                             R11 3 1
       36 MOVE                             R6 R11
       37 LOADK                            R7 K10 ["</b>"]
       38 FASTCALL1                        STRING_LEN R1 ; [+3]
       39 MOVE                             R17 R1
       40 GETIMPORT                        R16 K12 [string.len]
       42 CALL                             R16 1 1
       43 ADD                              R15 R4 R16
       44 SUBK                             R14 R15 K7 [1]
       45 FASTCALL3                        STRING_SUB R0 R4 R14
       47 MOVE                             R12 R0
       48 MOVE                             R13 R4
       49 GETIMPORT                        R11 K9 [string.sub]
       51 CALL                             R11 3 1
       52 MOVE                             R8 R11
       53 LOADK                            R9 K13 ["<b>"]
       54 FASTCALL1                        STRING_LEN R1 ; [+3]
       55 MOVE                             R14 R1
       56 GETIMPORT                        R13 K12 [string.len]
       58 CALL                             R13 1 1
       59 ADD                              R12 R4 R13
       60 FASTCALL1                        STRING_LEN R0 ; [+3]
       61 MOVE                             R14 R0
       62 GETIMPORT                        R13 K12 [string.len]
       64 CALL                             R13 1 1
       65 FASTCALL3                        STRING_SUB R0 R12 R13
       67 MOVE                             R11 R0
       68 GETIMPORT                        R10 K9 [string.sub]
       70 CALL                             R10 3 1
       71 CONCAT                           R5 R6 R10
       72 JUMP                             ; [+1]
       73 MOVE                             R5 R0
       74 LOADK                            R7 K13 ["<b>"]
       75 MOVE                             R8 R5
       76 LOADK                            R9 K10 ["</b>"]
       77 CONCAT                           R6 R7 R9
       78 RETURN                           R6 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R2 K2 ["TextSize"]
        6 LOADNIL                          R4
        7 GETTABLEKS                       R5 R1 K3 ["FocusedText"]
        9 JUMPIFEQKNIL                     R5 ; [+9]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R6 R1 K4 ["Text"]
       14 GETTABLEKS                       R7 R1 K3 ["FocusedText"]
       16 CALL                             R5 2 1
       17 MOVE                             R4 R5
       18 JUMP                             ; [+2]
       19 GETTABLEKS                       R4 R1 K4 ["Text"]
       21 GETUPVAL                         R5 1
       22 GETTABLEKS                       R5 R5 K5 ["createElement"]
       24 GETUPVAL                         R6 2
       25 DUPTABLE                         R7 K15 [{"AutomaticSize", "OnClick", "Position", "Size", "LayoutOrder", "Style", "DisableHover", "OnMouseEnter", "OnMouseLeave"}]
       26 GETIMPORT                        R8 K18 [Enum.AutomaticSize.Y]
       28 SETTABLEKS                       R8 R7 K6 ["AutomaticSize"]
       30 GETTABLEKS                       R8 R1 K7 ["OnClick"]
       32 SETTABLEKS                       R8 R7 K7 ["OnClick"]
       34 GETTABLEKS                       R8 R1 K8 ["Position"]
       36 SETTABLEKS                       R8 R7 K8 ["Position"]
       38 GETTABLEKS                       R8 R1 K9 ["Size"]
       40 SETTABLEKS                       R8 R7 K9 ["Size"]
       42 GETTABLEKS                       R8 R1 K10 ["LayoutOrder"]
       44 SETTABLEKS                       R8 R7 K10 ["LayoutOrder"]
       46 GETTABLEKS                       R8 R1 K19 ["DropdownMenuItemButtonStyle"]
       48 SETTABLEKS                       R8 R7 K11 ["Style"]
       50 GETTABLEKS                       R8 R1 K12 ["DisableHover"]
       52 SETTABLEKS                       R8 R7 K12 ["DisableHover"]
       54 GETTABLEKS                       R8 R1 K13 ["OnMouseEnter"]
       56 SETTABLEKS                       R8 R7 K13 ["OnMouseEnter"]
       58 GETTABLEKS                       R8 R1 K14 ["OnMouseLeave"]
       60 SETTABLEKS                       R8 R7 K14 ["OnMouseLeave"]
       62 DUPTABLE                         R8 K23 [{"Layout", "ItemLabel", "Separator"}]
       63 GETUPVAL                         R9 1
       64 GETTABLEKS                       R9 R9 K5 ["createElement"]
       66 LOADK                            R10 K24 ["UIListLayout"]
       67 DUPTABLE                         R11 K27 [{"FillDirection", "SortOrder"}]
       68 GETIMPORT                        R12 K29 [Enum.FillDirection.Vertical]
       70 SETTABLEKS                       R12 R11 K25 ["FillDirection"]
       72 GETIMPORT                        R12 K30 [Enum.SortOrder.LayoutOrder]
       74 SETTABLEKS                       R12 R11 K26 ["SortOrder"]
       76 CALL                             R9 2 1
       77 SETTABLEKS                       R9 R8 K20 ["Layout"]
       79 GETTABLEKS                       R10 R0 K0 ["props"]
       81 GETTABLEKS                       R10 R10 K31 ["ItemButtonContentOverride"]
       83 JUMPIFNOT                        R10 ; [+78]
       84 GETUPVAL                         R9 1
       85 GETTABLEKS                       R9 R9 K5 ["createElement"]
       87 LOADK                            R10 K32 ["Frame"]
       88 DUPTABLE                         R11 K35 [{["BackgroundTransparency"] = 1, ["Size"]}]
       89 GETIMPORT                        R12 K38 [UDim2.fromScale]
       91 LOADN                            R13 1
       92 LOADN                            R14 1
       93 CALL                             R12 2 1
       94 SETTABLEKS                       R12 R11 K9 ["Size"]
       96 DUPTABLE                         R12 K40 [{"ItemLabel", "ButtonComponent"}]
       97 GETUPVAL                         R13 1
       98 GETTABLEKS                       R13 R13 K5 ["createElement"]
      100 LOADK                            R14 K41 ["TextLabel"]
      101 DUPTABLE                         R15 K50 [{["BackgroundTransparency"] = 1, ["ClipsDescendants"] = True, ["Font"], ["LayoutOrder"] = 1, ["RichText"] = True, ["Size"], ["Text"], ["TextColor3"], ["TextSize"], ["TextTruncate"], ["TextXAlignment"], ["TextYAlignment"]}]
      102 GETTABLEKS                       R16 R2 K44 ["Font"]
      104 SETTABLEKS                       R16 R15 K44 ["Font"]
      106 GETIMPORT                        R16 K52 [UDim2.new]
      108 LOADN                            R17 1
      109 LOADN                            R18 -40
      110 LOADN                            R19 1
      111 LOADN                            R20 0
      112 CALL                             R16 4 1
      113 SETTABLEKS                       R16 R15 K9 ["Size"]
      115 SETTABLEKS                       R4 R15 K4 ["Text"]
      117 GETTABLEKS                       R16 R2 K53 ["TextColor"]
      119 SETTABLEKS                       R16 R15 K46 ["TextColor3"]
      121 SETTABLEKS                       R3 R15 K2 ["TextSize"]
      123 GETIMPORT                        R16 K55 [Enum.TextTruncate.AtEnd]
      125 SETTABLEKS                       R16 R15 K47 ["TextTruncate"]
      127 GETIMPORT                        R16 K57 [Enum.TextXAlignment.Left]
      129 SETTABLEKS                       R16 R15 K48 ["TextXAlignment"]
      131 GETIMPORT                        R16 K59 [Enum.TextYAlignment.Center]
      133 SETTABLEKS                       R16 R15 K49 ["TextYAlignment"]
      135 DUPTABLE                         R16 K61 [{"Padding"}]
      136 GETUPVAL                         R17 1
      137 GETTABLEKS                       R17 R17 K5 ["createElement"]
      139 LOADK                            R18 K62 ["UIPadding"]
      140 DUPTABLE                         R19 K64 [{"PaddingLeft"}]
      141 GETIMPORT                        R20 K66 [UDim.new]
      143 LOADN                            R21 0
      144 LOADN                            R22 10
      145 CALL                             R20 2 1
      146 SETTABLEKS                       R20 R19 K63 ["PaddingLeft"]
      148 CALL                             R17 2 1
      149 SETTABLEKS                       R17 R16 K60 ["Padding"]
      151 CALL                             R13 3 1
      152 SETTABLEKS                       R13 R12 K21 ["ItemLabel"]
      154 GETTABLEKS                       R13 R0 K0 ["props"]
      156 GETTABLEKS                       R13 R13 K31 ["ItemButtonContentOverride"]
      158 SETTABLEKS                       R13 R12 K39 ["ButtonComponent"]
      160 CALL                             R9 3 1
      161 JUMP                             ; [+50]
      162 GETUPVAL                         R9 1
      163 GETTABLEKS                       R9 R9 K5 ["createElement"]
      165 LOADK                            R10 K41 ["TextLabel"]
      166 DUPTABLE                         R11 K50 [{["BackgroundTransparency"] = 1, ["ClipsDescendants"] = True, ["Font"], ["LayoutOrder"] = 1, ["RichText"] = True, ["Size"], ["Text"], ["TextColor3"], ["TextSize"], ["TextTruncate"], ["TextXAlignment"], ["TextYAlignment"]}]
      167 GETTABLEKS                       R12 R2 K44 ["Font"]
      169 SETTABLEKS                       R12 R11 K44 ["Font"]
      171 GETTABLEKS                       R12 R1 K9 ["Size"]
      173 SETTABLEKS                       R12 R11 K9 ["Size"]
      175 SETTABLEKS                       R4 R11 K4 ["Text"]
      177 GETTABLEKS                       R12 R2 K53 ["TextColor"]
      179 SETTABLEKS                       R12 R11 K46 ["TextColor3"]
      181 SETTABLEKS                       R3 R11 K2 ["TextSize"]
      183 GETIMPORT                        R12 K55 [Enum.TextTruncate.AtEnd]
      185 SETTABLEKS                       R12 R11 K47 ["TextTruncate"]
      187 GETIMPORT                        R12 K57 [Enum.TextXAlignment.Left]
      189 SETTABLEKS                       R12 R11 K48 ["TextXAlignment"]
      191 GETIMPORT                        R12 K59 [Enum.TextYAlignment.Center]
      193 SETTABLEKS                       R12 R11 K49 ["TextYAlignment"]
      195 DUPTABLE                         R12 K61 [{"Padding"}]
      196 GETUPVAL                         R13 1
      197 GETTABLEKS                       R13 R13 K5 ["createElement"]
      199 LOADK                            R14 K62 ["UIPadding"]
      200 DUPTABLE                         R15 K64 [{"PaddingLeft"}]
      201 GETIMPORT                        R16 K66 [UDim.new]
      203 LOADN                            R17 0
      204 LOADN                            R18 10
      205 CALL                             R16 2 1
      206 SETTABLEKS                       R16 R15 K63 ["PaddingLeft"]
      208 CALL                             R13 2 1
      209 SETTABLEKS                       R13 R12 K60 ["Padding"]
      211 CALL                             R9 3 1
      212 SETTABLEKS                       R9 R8 K21 ["ItemLabel"]
      214 GETTABLEKS                       R10 R1 K67 ["HideSeparator"]
      216 NOT                              R9 R10
      217 JUMPIFNOT                        R9 ; [+10]
      218 GETUPVAL                         R9 1
      219 GETTABLEKS                       R9 R9 K5 ["createElement"]
      221 GETUPVAL                         R10 3
      222 DUPTABLE                         R11 K70 [{["DominantAxis"], ["LayoutOrder"] = 2}]
      223 GETIMPORT                        R12 K72 [Enum.DominantAxis.Width]
      225 SETTABLEKS                       R12 R11 K68 ["DominantAxis"]
      227 CALL                             R9 2 1
      228 SETTABLEKS                       R9 R8 K22 ["Separator"]
      230 CALL                             R5 3 -1
      231 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Roact"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R1 K7 ["Framework"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R4 R3 K8 ["ContextServices"]
       23 GETTABLEKS                       R5 R3 K9 ["UI"]
       25 GETTABLEKS                       R5 R5 K10 ["Button"]
       27 GETTABLEKS                       R6 R3 K9 ["UI"]
       29 GETTABLEKS                       R6 R6 K11 ["Separator"]
       31 GETTABLEKS                       R7 R2 K12 ["PureComponent"]
       33 LOADK                            R9 K13 ["DropdownMenuItem"]
       34 NAMECALL                         R7 R7 K14 ["extend"]
       36 CALL                             R7 2 1
       37 GETTABLEKS                       R8 R4 K15 ["withContext"]
       39 DUPTABLE                         R9 K17 [{"Size"}]
       40 GETIMPORT                        R10 K20 [UDim2.new]
       42 LOADN                            R11 0
       43 LOADN                            R12 200
       44 LOADN                            R13 0
       45 LOADN                            R14 25
       46 CALL                             R10 4 1
       47 SETTABLEKS                       R10 R9 K16 ["Size"]
       49 SETTABLEKS                       R9 R7 K21 ["defaultProps"]
       51 DUPCLOSURE                       R9 K22 [PROTO_0]
       52 DUPCLOSURE                       R10 K23 [PROTO_1]
       53 DUPCLOSURE                       R11 K24 [PROTO_2]
       54 CAPTURE                          VAL R10
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R6
       58 SETTABLEKS                       R11 R7 K25 ["render"]
       60 MOVE                             R11 R8
       61 DUPTABLE                         R12 K27 [{"Stylizer"}]
       62 GETTABLEKS                       R13 R4 K26 ["Stylizer"]
       64 SETTABLEKS                       R13 R12 K26 ["Stylizer"]
       66 CALL                             R11 1 1
       67 MOVE                             R12 R7
       68 CALL                             R11 1 1
       69 MOVE                             R7 R11
       70 RETURN                           R7 1
