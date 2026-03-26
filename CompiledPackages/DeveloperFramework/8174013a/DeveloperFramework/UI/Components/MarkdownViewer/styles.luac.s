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
       16 MOVE                             R2 R1
       17 LOADK                            R3 K9 [".Component-Markdown"]
       18 NEWTABLE                         R4 0 0
       20 NEWTABLE                         R5 0 6
       22 MOVE                             R6 R1
       23 LOADK                            R7 K10 [">> .Header ::UIPadding"]
       24 DUPTABLE                         R8 K12 [{"PaddingTop"}]
       25 GETIMPORT                        R9 K15 [UDim.new]
       27 LOADN                            R10 0
       28 LOADN                            R11 20
       29 CALL                             R9 2 1
       30 SETTABLEKS                       R9 R8 K11 ["PaddingTop"]
       32 CALL                             R6 2 1
       33 MOVE                             R7 R1
       34 LOADK                            R8 K16 [">> .Paragraph ::UIPadding"]
       35 DUPTABLE                         R9 K12 [{"PaddingTop"}]
       36 GETIMPORT                        R10 K15 [UDim.new]
       38 LOADN                            R11 0
       39 LOADN                            R12 10
       40 CALL                             R10 2 1
       41 SETTABLEKS                       R10 R9 K11 ["PaddingTop"]
       43 CALL                             R7 2 1
       44 MOVE                             R8 R1
       45 LOADK                            R9 K17 [">> .List"]
       46 NEWTABLE                         R10 0 0
       48 NEWTABLE                         R11 0 2
       50 MOVE                             R12 R1
       51 LOADK                            R13 K18 ["::UIPadding"]
       52 DUPTABLE                         R14 K12 [{"PaddingTop"}]
       53 GETIMPORT                        R15 K15 [UDim.new]
       55 LOADN                            R16 0
       56 LOADN                            R17 10
       57 CALL                             R15 2 1
       58 SETTABLEKS                       R15 R14 K11 ["PaddingTop"]
       60 CALL                             R12 2 1
       61 MOVE                             R13 R1
       62 LOADK                            R14 K19 [">> .ListItem ::UIPadding"]
       63 DUPTABLE                         R15 K12 [{"PaddingTop"}]
       64 GETIMPORT                        R16 K15 [UDim.new]
       66 LOADN                            R17 0
       67 LOADN                            R18 2
       68 CALL                             R16 2 1
       69 SETTABLEKS                       R16 R15 K11 ["PaddingTop"]
       71 CALL                             R13 2 -1
       72 SETLIST                          R11 R12 -1 [1]
       74 CALL                             R8 3 1
       75 MOVE                             R9 R1
       76 LOADK                            R10 K20 [">> .CodeBlock"]
       77 NEWTABLE                         R11 0 0
       79 NEWTABLE                         R12 0 4
       81 MOVE                             R13 R1
       82 LOADK                            R14 K18 ["::UIPadding"]
       83 DUPTABLE                         R15 K22 [{"PaddingTop", "PaddingBottom"}]
       84 GETIMPORT                        R16 K15 [UDim.new]
       86 LOADN                            R17 0
       87 LOADN                            R18 10
       88 CALL                             R16 2 1
       89 SETTABLEKS                       R16 R15 K11 ["PaddingTop"]
       91 GETIMPORT                        R16 K15 [UDim.new]
       93 LOADN                            R17 0
       94 LOADN                            R18 10
       95 CALL                             R16 2 1
       96 SETTABLEKS                       R16 R15 K21 ["PaddingBottom"]
       98 CALL                             R13 2 1
       99 MOVE                             R14 R1
      100 LOADK                            R15 K23 [">> .CopyButton"]
      101 DUPTABLE                         R16 K27 [{"Size", "BackgroundTransparency", "Text"}]
      102 GETIMPORT                        R17 K30 [UDim2.fromOffset]
      104 LOADN                            R18 24
      105 LOADN                            R19 24
      106 CALL                             R17 2 1
      107 SETTABLEKS                       R17 R16 K24 ["Size"]
      109 LOADN                            R17 1
      110 SETTABLEKS                       R17 R16 K25 ["BackgroundTransparency"]
      112 LOADK                            R17 K31 [""]
      113 SETTABLEKS                       R17 R16 K26 ["Text"]
      115 NEWTABLE                         R17 0 1
      117 MOVE                             R18 R1
      118 LOADK                            R19 K32 [">> .CopyIcon"]
      119 DUPTABLE                         R20 K37 [{"Size", "Image", "ImageColor3", "BackgroundTransparency", "AnchorPoint", "Position"}]
      120 GETIMPORT                        R21 K30 [UDim2.fromOffset]
      122 LOADN                            R22 16
      123 LOADN                            R23 16
      124 CALL                             R21 2 1
      125 SETTABLEKS                       R21 R20 K24 ["Size"]
      127 LOADK                            R21 K38 ["$CopyImage"]
      128 SETTABLEKS                       R21 R20 K33 ["Image"]
      130 LOADK                            R21 K39 ["$TextPrimary"]
      131 SETTABLEKS                       R21 R20 K34 ["ImageColor3"]
      133 LOADN                            R21 1
      134 SETTABLEKS                       R21 R20 K25 ["BackgroundTransparency"]
      136 GETIMPORT                        R21 K41 [Vector2.new]
      138 LOADK                            R22 K42 [0.5]
      139 LOADK                            R23 K42 [0.5]
      140 CALL                             R21 2 1
      141 SETTABLEKS                       R21 R20 K35 ["AnchorPoint"]
      143 GETIMPORT                        R21 K44 [UDim2.fromScale]
      145 LOADK                            R22 K42 [0.5]
      146 LOADK                            R23 K42 [0.5]
      147 CALL                             R21 2 1
      148 SETTABLEKS                       R21 R20 K36 ["Position"]
      150 CALL                             R18 2 -1
      151 SETLIST                          R17 R18 -1 [1]
      153 CALL                             R14 3 1
      154 MOVE                             R15 R1
      155 LOADK                            R16 K45 [">> .LineNumbers"]
      156 DUPTABLE                         R17 K51 [{"Size", "AutomaticSize", "BackgroundTransparency", "BackgroundColor3", "TextXAlignment", "TextYAlignment", "TextWrapped"}]
      157 GETIMPORT                        R18 K52 [UDim2.new]
      159 LOADN                            R19 0
      160 LOADN                            R20 0
      161 LOADN                            R21 0
      162 LOADN                            R22 0
      163 CALL                             R18 4 1
      164 SETTABLEKS                       R18 R17 K24 ["Size"]
      166 GETIMPORT                        R18 K55 [Enum.AutomaticSize.XY]
      168 SETTABLEKS                       R18 R17 K46 ["AutomaticSize"]
      170 LOADN                            R18 0
      171 SETTABLEKS                       R18 R17 K25 ["BackgroundTransparency"]
      173 LOADK                            R18 K56 ["$BackgroundPaper"]
      174 SETTABLEKS                       R18 R17 K47 ["BackgroundColor3"]
      176 GETIMPORT                        R18 K58 [Enum.TextXAlignment.Right]
      178 SETTABLEKS                       R18 R17 K48 ["TextXAlignment"]
      180 GETIMPORT                        R18 K60 [Enum.TextYAlignment.Top]
      182 SETTABLEKS                       R18 R17 K49 ["TextYAlignment"]
      184 LOADB                            R18 0
      185 SETTABLEKS                       R18 R17 K50 ["TextWrapped"]
      187 CALL                             R15 2 1
      188 MOVE                             R16 R1
      189 LOADK                            R17 K61 [">> .CodeScroller ::UIFlexItem"]
      190 DUPTABLE                         R18 K63 [{"FlexMode"}]
      191 GETIMPORT                        R19 K66 [Enum.UIFlexMode.Fill]
      193 SETTABLEKS                       R19 R18 K62 ["FlexMode"]
      195 CALL                             R16 2 -1
      196 SETLIST                          R12 R13 -1 [1]
      198 CALL                             R9 3 1
      199 MOVE                             R10 R1
      200 LOADK                            R11 K67 [">> .HorizontalRule ::UIPadding"]
      201 DUPTABLE                         R12 K12 [{"PaddingTop"}]
      202 GETIMPORT                        R13 K15 [UDim.new]
      204 LOADN                            R14 0
      205 LOADN                            R15 10
      206 CALL                             R13 2 1
      207 SETTABLEKS                       R13 R12 K11 ["PaddingTop"]
      209 CALL                             R10 2 1
      210 MOVE                             R11 R1
      211 LOADK                            R12 K68 [">> #1 > UIPadding"]
      212 DUPTABLE                         R13 K22 [{"PaddingTop", "PaddingBottom"}]
      213 GETIMPORT                        R14 K15 [UDim.new]
      215 LOADN                            R15 0
      216 LOADN                            R16 0
      217 CALL                             R14 2 1
      218 SETTABLEKS                       R14 R13 K11 ["PaddingTop"]
      220 GETIMPORT                        R14 K15 [UDim.new]
      222 LOADN                            R15 0
      223 LOADN                            R16 0
      224 CALL                             R14 2 1
      225 SETTABLEKS                       R14 R13 K21 ["PaddingBottom"]
      227 CALL                             R11 2 -1
      228 SETLIST                          R5 R6 -1 [1]
      230 CALL                             R2 3 -1
      231 RETURN                           R2 -1
