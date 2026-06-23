MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["BloxMarkdown"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Blox"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K8 ["template"]
       16 GETTABLEKS                       R4 R2 K9 ["StyleSheet"]
       18 GETIMPORT                        R5 K6 [require]
       20 GETIMPORT                        R6 K1 [script]
       22 GETTABLEKS                       R6 R6 K4 ["Parent"]
       24 GETTABLEKS                       R6 R6 K10 ["MarkdownRules"]
       26 CALL                             R5 1 1
       27 MOVE                             R6 R3
       28 LOADK                            R7 K11 ["MarkdownDarkStyles"]
       29 NEWTABLE                         R8 0 0
       31 NEWTABLE                         R9 0 1
       33 MOVE                             R10 R4
       34 DUPTABLE                         R11 K15 [{"Name", "tokens", "rules"}]
       35 LOADK                            R12 K11 ["MarkdownDarkStyles"]
       36 SETTABLEKS                       R12 R11 K12 ["Name"]
       38 DUPTABLE                         R12 K43 [{"textColor", "mutedText", "linkColor", "linkHover", "codeBg", "codeBorder", "codeText", "blockquoteBorder", "blockquoteBg", "tableBorder", "tableHeaderBg", "tableStripeBg", "dividerColor", "checkboxUnchecked", "checkboxChecked", "checkmarkColor", "surface", "toggleTrack", "toggleTrackChecked", "toggleKnob", "toggleKnobChecked", "scrollbarColor", "transparent", "opaque", "font", "fontBold", "fontCode"}]
       39 GETIMPORT                        R13 K46 [Color3.new]
       41 LOADK                            R14 K47 [0.95686]
       42 LOADK                            R15 K47 [0.95686]
       43 LOADK                            R16 K48 [0.96471]
       44 CALL                             R13 3 1
       45 SETTABLEKS                       R13 R12 K16 ["textColor"]
       47 GETIMPORT                        R13 K46 [Color3.new]
       49 LOADK                            R14 K49 [0.45098]
       50 LOADK                            R15 K50 [0.47059]
       51 LOADK                            R16 K51 [0.54902]
       52 CALL                             R13 3 1
       53 SETTABLEKS                       R13 R12 K17 ["mutedText"]
       55 GETIMPORT                        R13 K46 [Color3.new]
       57 LOADK                            R14 K52 [0.32157]
       58 LOADK                            R15 K53 [0.5451]
       59 LOADN                            R16 1
       60 CALL                             R13 3 1
       61 SETTABLEKS                       R13 R12 K18 ["linkColor"]
       63 GETIMPORT                        R13 K46 [Color3.new]
       65 LOADK                            R14 K54 [0.52]
       66 LOADK                            R15 K55 [0.68]
       67 LOADN                            R16 1
       68 CALL                             R13 3 1
       69 SETTABLEKS                       R13 R12 K19 ["linkHover"]
       71 GETIMPORT                        R13 K46 [Color3.new]
       73 LOADK                            R14 K56 [0.09804]
       74 LOADK                            R15 K57 [0.10196]
       75 LOADK                            R16 K58 [0.12157]
       76 CALL                             R13 3 1
       77 SETTABLEKS                       R13 R12 K20 ["codeBg"]
       79 GETIMPORT                        R13 K46 [Color3.new]
       81 LOADK                            R14 K59 [0.12549]
       82 LOADK                            R15 K60 [0.13333]
       83 LOADK                            R16 K61 [0.15294]
       84 CALL                             R13 3 1
       85 SETTABLEKS                       R13 R12 K21 ["codeBorder"]
       87 GETIMPORT                        R13 K46 [Color3.new]
       89 LOADK                            R14 K47 [0.95686]
       90 LOADK                            R15 K47 [0.95686]
       91 LOADK                            R16 K48 [0.96471]
       92 CALL                             R13 3 1
       93 SETTABLEKS                       R13 R12 K22 ["codeText"]
       95 GETIMPORT                        R13 K46 [Color3.new]
       97 LOADK                            R14 K49 [0.45098]
       98 LOADK                            R15 K50 [0.47059]
       99 LOADK                            R16 K51 [0.54902]
      100 CALL                             R13 3 1
      101 SETTABLEKS                       R13 R12 K23 ["blockquoteBorder"]
      103 GETIMPORT                        R13 K46 [Color3.new]
      105 LOADK                            R14 K56 [0.09804]
      106 LOADK                            R15 K57 [0.10196]
      107 LOADK                            R16 K58 [0.12157]
      108 CALL                             R13 3 1
      109 SETTABLEKS                       R13 R12 K24 ["blockquoteBg"]
      111 GETIMPORT                        R13 K46 [Color3.new]
      113 LOADK                            R14 K61 [0.15294]
      114 LOADK                            R15 K62 [0.16078]
      115 LOADK                            R16 K63 [0.18824]
      116 CALL                             R13 3 1
      117 SETTABLEKS                       R13 R12 K25 ["tableBorder"]
      119 GETIMPORT                        R13 K46 [Color3.new]
      121 LOADK                            R14 K59 [0.12549]
      122 LOADK                            R15 K60 [0.13333]
      123 LOADK                            R16 K61 [0.15294]
      124 CALL                             R13 3 1
      125 SETTABLEKS                       R13 R12 K26 ["tableHeaderBg"]
      127 GETIMPORT                        R13 K46 [Color3.new]
      129 LOADK                            R14 K56 [0.09804]
      130 LOADK                            R15 K57 [0.10196]
      131 LOADK                            R16 K58 [0.12157]
      132 CALL                             R13 3 1
      133 SETTABLEKS                       R13 R12 K27 ["tableStripeBg"]
      135 GETIMPORT                        R13 K46 [Color3.new]
      137 LOADK                            R14 K61 [0.15294]
      138 LOADK                            R15 K62 [0.16078]
      139 LOADK                            R16 K63 [0.18824]
      140 CALL                             R13 3 1
      141 SETTABLEKS                       R13 R12 K28 ["dividerColor"]
      143 GETIMPORT                        R13 K46 [Color3.new]
      145 LOADK                            R14 K49 [0.45098]
      146 LOADK                            R15 K50 [0.47059]
      147 LOADK                            R16 K51 [0.54902]
      148 CALL                             R13 3 1
      149 SETTABLEKS                       R13 R12 K29 ["checkboxUnchecked"]
      151 GETIMPORT                        R13 K46 [Color3.new]
      153 LOADK                            R14 K64 [0.2]
      154 LOADK                            R15 K65 [0.37255]
      155 LOADN                            R16 1
      156 CALL                             R13 3 1
      157 SETTABLEKS                       R13 R12 K30 ["checkboxChecked"]
      159 GETIMPORT                        R13 K46 [Color3.new]
      161 LOADN                            R14 1
      162 LOADN                            R15 1
      163 LOADN                            R16 1
      164 CALL                             R13 3 1
      165 SETTABLEKS                       R13 R12 K31 ["checkmarkColor"]
      167 GETIMPORT                        R13 K46 [Color3.new]
      169 LOADK                            R14 K66 [0.07059]
      170 LOADK                            R15 K66 [0.07059]
      171 LOADK                            R16 K67 [0.08235]
      172 CALL                             R13 3 1
      173 SETTABLEKS                       R13 R12 K32 ["surface"]
      175 GETIMPORT                        R13 K46 [Color3.new]
      177 LOADK                            R14 K61 [0.15294]
      178 LOADK                            R15 K62 [0.16078]
      179 LOADK                            R16 K63 [0.18824]
      180 CALL                             R13 3 1
      181 SETTABLEKS                       R13 R12 K33 ["toggleTrack"]
      183 GETIMPORT                        R13 K46 [Color3.new]
      185 LOADK                            R14 K47 [0.95686]
      186 LOADK                            R15 K47 [0.95686]
      187 LOADK                            R16 K48 [0.96471]
      188 CALL                             R13 3 1
      189 SETTABLEKS                       R13 R12 K34 ["toggleTrackChecked"]
      191 GETIMPORT                        R13 K46 [Color3.new]
      193 LOADK                            R14 K47 [0.95686]
      194 LOADK                            R15 K47 [0.95686]
      195 LOADK                            R16 K48 [0.96471]
      196 CALL                             R13 3 1
      197 SETTABLEKS                       R13 R12 K35 ["toggleKnob"]
      199 GETIMPORT                        R13 K46 [Color3.new]
      201 LOADK                            R14 K66 [0.07059]
      202 LOADK                            R15 K66 [0.07059]
      203 LOADK                            R16 K67 [0.08235]
      204 CALL                             R13 3 1
      205 SETTABLEKS                       R13 R12 K36 ["toggleKnobChecked"]
      207 GETIMPORT                        R13 K46 [Color3.new]
      209 LOADK                            R14 K49 [0.45098]
      210 LOADK                            R15 K50 [0.47059]
      211 LOADK                            R16 K51 [0.54902]
      212 CALL                             R13 3 1
      213 SETTABLEKS                       R13 R12 K37 ["scrollbarColor"]
      215 LOADN                            R13 1
      216 SETTABLEKS                       R13 R12 K38 ["transparent"]
      218 LOADN                            R13 0
      219 SETTABLEKS                       R13 R12 K39 ["opaque"]
      221 GETIMPORT                        R13 K71 [Enum.Font.BuilderSans]
      223 SETTABLEKS                       R13 R12 K40 ["font"]
      225 GETIMPORT                        R13 K73 [Enum.Font.BuilderSansBold]
      227 SETTABLEKS                       R13 R12 K41 ["fontBold"]
      229 GETIMPORT                        R13 K74 [Font.new]
      231 LOADK                            R14 K75 ["rbxasset://fonts/families/BuilderMono.json"]
      232 GETIMPORT                        R15 K78 [Enum.FontWeight.Regular]
      234 GETIMPORT                        R16 K81 [Enum.FontStyle.Normal]
      236 CALL                             R13 3 1
      237 SETTABLEKS                       R13 R12 K42 ["fontCode"]
      239 SETTABLEKS                       R12 R11 K13 ["tokens"]
      241 SETTABLEKS                       R5 R11 K14 ["rules"]
      243 CALL                             R10 1 -1
      244 SETLIST                          R9 R10 -1 [1]
      246 CALL                             R6 3 1
      247 RETURN                           R6 1
