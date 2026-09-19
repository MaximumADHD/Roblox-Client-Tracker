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
      101 DUPTABLE                         R16 K29 [{["Size"], ["BackgroundTransparency"] = 1, ["Text"] = ""}]
      102 GETIMPORT                        R17 K32 [UDim2.fromOffset]
      104 LOADN                            R18 24
      105 LOADN                            R19 24
      106 CALL                             R17 2 1
      107 SETTABLEKS                       R17 R16 K24 ["Size"]
      109 NEWTABLE                         R17 0 1
      111 MOVE                             R18 R1
      112 LOADK                            R19 K33 [">> .CopyIcon"]
      113 DUPTABLE                         R20 K40 [{["Size"], ["Image"] = "$CopyImage", ["ImageColor3"] = "$TextPrimary", ["BackgroundTransparency"] = 1, ["AnchorPoint"], ["Position"]}]
      114 GETIMPORT                        R21 K32 [UDim2.fromOffset]
      116 LOADN                            R22 16
      117 LOADN                            R23 16
      118 CALL                             R21 2 1
      119 SETTABLEKS                       R21 R20 K24 ["Size"]
      121 GETIMPORT                        R21 K42 [Vector2.new]
      123 LOADK                            R22 K43 [0.5]
      124 LOADK                            R23 K43 [0.5]
      125 CALL                             R21 2 1
      126 SETTABLEKS                       R21 R20 K38 ["AnchorPoint"]
      128 GETIMPORT                        R21 K45 [UDim2.fromScale]
      130 LOADK                            R22 K43 [0.5]
      131 LOADK                            R23 K43 [0.5]
      132 CALL                             R21 2 1
      133 SETTABLEKS                       R21 R20 K39 ["Position"]
      135 CALL                             R18 2 -1
      136 SETLIST                          R17 R18 -1 [1]
      138 CALL                             R14 3 1
      139 MOVE                             R15 R1
      140 LOADK                            R16 K46 [">> .LineNumbers"]
      141 DUPTABLE                         R17 K55 [{["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 0, ["BackgroundColor3"] = "$BackgroundPaper", ["TextXAlignment"], ["TextYAlignment"], ["TextWrapped"] = False}]
      142 GETIMPORT                        R18 K56 [UDim2.new]
      144 LOADN                            R19 0
      145 LOADN                            R20 0
      146 LOADN                            R21 0
      147 LOADN                            R22 0
      148 CALL                             R18 4 1
      149 SETTABLEKS                       R18 R17 K24 ["Size"]
      151 GETIMPORT                        R18 K59 [Enum.AutomaticSize.XY]
      153 SETTABLEKS                       R18 R17 K47 ["AutomaticSize"]
      155 GETIMPORT                        R18 K61 [Enum.TextXAlignment.Right]
      157 SETTABLEKS                       R18 R17 K51 ["TextXAlignment"]
      159 GETIMPORT                        R18 K63 [Enum.TextYAlignment.Top]
      161 SETTABLEKS                       R18 R17 K52 ["TextYAlignment"]
      163 CALL                             R15 2 1
      164 MOVE                             R16 R1
      165 LOADK                            R17 K64 [">> .CodeScroller ::UIFlexItem"]
      166 DUPTABLE                         R18 K66 [{"FlexMode"}]
      167 GETIMPORT                        R19 K69 [Enum.UIFlexMode.Fill]
      169 SETTABLEKS                       R19 R18 K65 ["FlexMode"]
      171 CALL                             R16 2 -1
      172 SETLIST                          R12 R13 -1 [1]
      174 CALL                             R9 3 1
      175 MOVE                             R10 R1
      176 LOADK                            R11 K70 [">> .HorizontalRule ::UIPadding"]
      177 DUPTABLE                         R12 K12 [{"PaddingTop"}]
      178 GETIMPORT                        R13 K15 [UDim.new]
      180 LOADN                            R14 0
      181 LOADN                            R15 10
      182 CALL                             R13 2 1
      183 SETTABLEKS                       R13 R12 K11 ["PaddingTop"]
      185 CALL                             R10 2 1
      186 MOVE                             R11 R1
      187 LOADK                            R12 K71 [">> #1 > UIPadding"]
      188 DUPTABLE                         R13 K22 [{"PaddingTop", "PaddingBottom"}]
      189 GETIMPORT                        R14 K15 [UDim.new]
      191 LOADN                            R15 0
      192 LOADN                            R16 0
      193 CALL                             R14 2 1
      194 SETTABLEKS                       R14 R13 K11 ["PaddingTop"]
      196 GETIMPORT                        R14 K15 [UDim.new]
      198 LOADN                            R15 0
      199 LOADN                            R16 0
      200 CALL                             R14 2 1
      201 SETTABLEKS                       R14 R13 K21 ["PaddingBottom"]
      203 CALL                             R11 2 -1
      204 SETLIST                          R5 R6 -1 [1]
      206 CALL                             R2 3 -1
      207 RETURN                           R2 -1
