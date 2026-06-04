MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Packages"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Blox"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K7 ["template"]
       14 GETTABLEKS                       R3 R1 K8 ["StyleSheet"]
       16 GETIMPORT                        R4 K5 [require]
       18 GETIMPORT                        R5 K1 [script]
       20 GETTABLEKS                       R5 R5 K9 ["Parent"]
       22 GETTABLEKS                       R5 R5 K10 ["MarkdownRules"]
       24 CALL                             R4 1 1
       25 MOVE                             R5 R2
       26 LOADK                            R6 K11 ["MarkdownLightStyles"]
       27 NEWTABLE                         R7 0 0
       29 NEWTABLE                         R8 0 1
       31 MOVE                             R9 R3
       32 DUPTABLE                         R10 K15 [{"Name", "tokens", "rules"}]
       33 LOADK                            R11 K11 ["MarkdownLightStyles"]
       34 SETTABLEKS                       R11 R10 K12 ["Name"]
       36 DUPTABLE                         R11 K43 [{"textColor", "mutedText", "linkColor", "linkHover", "codeBg", "codeBorder", "codeText", "blockquoteBorder", "blockquoteBg", "tableBorder", "tableHeaderBg", "tableStripeBg", "dividerColor", "checkboxUnchecked", "checkboxChecked", "checkmarkColor", "surface", "toggleTrack", "toggleTrackChecked", "toggleKnob", "toggleKnobChecked", "scrollbarColor", "transparent", "opaque", "font", "fontBold", "fontCode"}]
       37 GETIMPORT                        R12 K46 [Color3.new]
       39 LOADK                            R13 K47 [0.15294]
       40 LOADK                            R14 K48 [0.16078]
       41 LOADK                            R15 K49 [0.18824]
       42 CALL                             R12 3 1
       43 SETTABLEKS                       R12 R11 K16 ["textColor"]
       45 GETIMPORT                        R12 K46 [Color3.new]
       47 LOADK                            R13 K50 [0.45098]
       48 LOADK                            R14 K51 [0.47059]
       49 LOADK                            R15 K52 [0.54902]
       50 CALL                             R12 3 1
       51 SETTABLEKS                       R12 R11 K17 ["mutedText"]
       53 GETIMPORT                        R12 K46 [Color3.new]
       55 LOADK                            R13 K53 [0.07843]
       56 LOADK                            R14 K54 [0.27451]
       57 LOADN                            R15 1
       58 CALL                             R12 3 1
       59 SETTABLEKS                       R12 R11 K18 ["linkColor"]
       61 GETIMPORT                        R12 K46 [Color3.new]
       63 LOADK                            R13 K55 [0.32157]
       64 LOADK                            R14 K56 [0.5451]
       65 LOADN                            R15 1
       66 CALL                             R12 3 1
       67 SETTABLEKS                       R12 R11 K19 ["linkHover"]
       69 GETIMPORT                        R12 K46 [Color3.new]
       71 LOADK                            R13 K57 [0.95686]
       72 LOADK                            R14 K57 [0.95686]
       73 LOADK                            R15 K58 [0.96471]
       74 CALL                             R12 3 1
       75 SETTABLEKS                       R12 R11 K20 ["codeBg"]
       77 GETIMPORT                        R12 K46 [Color3.new]
       79 LOADK                            R13 K57 [0.95686]
       80 LOADK                            R14 K57 [0.95686]
       81 LOADK                            R15 K58 [0.96471]
       82 CALL                             R12 3 1
       83 SETTABLEKS                       R12 R11 K21 ["codeBorder"]
       85 GETIMPORT                        R12 K46 [Color3.new]
       87 LOADK                            R13 K47 [0.15294]
       88 LOADK                            R14 K48 [0.16078]
       89 LOADK                            R15 K49 [0.18824]
       90 CALL                             R12 3 1
       91 SETTABLEKS                       R12 R11 K22 ["codeText"]
       93 GETIMPORT                        R12 K46 [Color3.new]
       95 LOADK                            R13 K50 [0.45098]
       96 LOADK                            R14 K51 [0.47059]
       97 LOADK                            R15 K52 [0.54902]
       98 CALL                             R12 3 1
       99 SETTABLEKS                       R12 R11 K23 ["blockquoteBorder"]
      101 GETIMPORT                        R12 K46 [Color3.new]
      103 LOADK                            R13 K57 [0.95686]
      104 LOADK                            R14 K57 [0.95686]
      105 LOADK                            R15 K58 [0.96471]
      106 CALL                             R12 3 1
      107 SETTABLEKS                       R12 R11 K24 ["blockquoteBg"]
      109 GETIMPORT                        R12 K46 [Color3.new]
      111 LOADK                            R13 K59 [0.85]
      112 LOADK                            R14 K60 [0.86]
      113 LOADK                            R15 K61 [0.88]
      114 CALL                             R12 3 1
      115 SETTABLEKS                       R12 R11 K25 ["tableBorder"]
      117 GETIMPORT                        R12 K46 [Color3.new]
      119 LOADK                            R13 K57 [0.95686]
      120 LOADK                            R14 K57 [0.95686]
      121 LOADK                            R15 K58 [0.96471]
      122 CALL                             R12 3 1
      123 SETTABLEKS                       R12 R11 K26 ["tableHeaderBg"]
      125 GETIMPORT                        R12 K46 [Color3.new]
      127 LOADK                            R13 K57 [0.95686]
      128 LOADK                            R14 K57 [0.95686]
      129 LOADK                            R15 K58 [0.96471]
      130 CALL                             R12 3 1
      131 SETTABLEKS                       R12 R11 K27 ["tableStripeBg"]
      133 GETIMPORT                        R12 K46 [Color3.new]
      135 LOADK                            R13 K59 [0.85]
      136 LOADK                            R14 K60 [0.86]
      137 LOADK                            R15 K61 [0.88]
      138 CALL                             R12 3 1
      139 SETTABLEKS                       R12 R11 K28 ["dividerColor"]
      141 GETIMPORT                        R12 K46 [Color3.new]
      143 LOADK                            R13 K50 [0.45098]
      144 LOADK                            R14 K51 [0.47059]
      145 LOADK                            R15 K52 [0.54902]
      146 CALL                             R12 3 1
      147 SETTABLEKS                       R12 R11 K29 ["checkboxUnchecked"]
      149 GETIMPORT                        R12 K46 [Color3.new]
      151 LOADK                            R13 K62 [0.2]
      152 LOADK                            R14 K63 [0.37255]
      153 LOADN                            R15 1
      154 CALL                             R12 3 1
      155 SETTABLEKS                       R12 R11 K30 ["checkboxChecked"]
      157 GETIMPORT                        R12 K46 [Color3.new]
      159 LOADN                            R13 1
      160 LOADN                            R14 1
      161 LOADN                            R15 1
      162 CALL                             R12 3 1
      163 SETTABLEKS                       R12 R11 K31 ["checkmarkColor"]
      165 GETIMPORT                        R12 K46 [Color3.new]
      167 LOADN                            R13 1
      168 LOADN                            R14 1
      169 LOADN                            R15 1
      170 CALL                             R12 3 1
      171 SETTABLEKS                       R12 R11 K32 ["surface"]
      173 GETIMPORT                        R12 K46 [Color3.new]
      175 LOADK                            R13 K59 [0.85]
      176 LOADK                            R14 K60 [0.86]
      177 LOADK                            R15 K61 [0.88]
      178 CALL                             R12 3 1
      179 SETTABLEKS                       R12 R11 K33 ["toggleTrack"]
      181 GETIMPORT                        R12 K46 [Color3.new]
      183 LOADK                            R13 K47 [0.15294]
      184 LOADK                            R14 K48 [0.16078]
      185 LOADK                            R15 K49 [0.18824]
      186 CALL                             R12 3 1
      187 SETTABLEKS                       R12 R11 K34 ["toggleTrackChecked"]
      189 GETIMPORT                        R12 K46 [Color3.new]
      191 LOADN                            R13 1
      192 LOADN                            R14 1
      193 LOADN                            R15 1
      194 CALL                             R12 3 1
      195 SETTABLEKS                       R12 R11 K35 ["toggleKnob"]
      197 GETIMPORT                        R12 K46 [Color3.new]
      199 LOADN                            R13 1
      200 LOADN                            R14 1
      201 LOADN                            R15 1
      202 CALL                             R12 3 1
      203 SETTABLEKS                       R12 R11 K36 ["toggleKnobChecked"]
      205 GETIMPORT                        R12 K46 [Color3.new]
      207 LOADK                            R13 K64 [0.72]
      208 LOADK                            R14 K65 [0.73]
      209 LOADK                            R15 K66 [0.76]
      210 CALL                             R12 3 1
      211 SETTABLEKS                       R12 R11 K37 ["scrollbarColor"]
      213 LOADN                            R12 1
      214 SETTABLEKS                       R12 R11 K38 ["transparent"]
      216 LOADN                            R12 0
      217 SETTABLEKS                       R12 R11 K39 ["opaque"]
      219 GETIMPORT                        R12 K70 [Enum.Font.BuilderSans]
      221 SETTABLEKS                       R12 R11 K40 ["font"]
      223 GETIMPORT                        R12 K72 [Enum.Font.BuilderSansBold]
      225 SETTABLEKS                       R12 R11 K41 ["fontBold"]
      227 GETIMPORT                        R12 K73 [Font.new]
      229 LOADK                            R13 K74 ["rbxasset://fonts/families/BuilderMono.json"]
      230 GETIMPORT                        R14 K77 [Enum.FontWeight.Regular]
      232 GETIMPORT                        R15 K80 [Enum.FontStyle.Normal]
      234 CALL                             R12 3 1
      235 SETTABLEKS                       R12 R11 K42 ["fontCode"]
      237 SETTABLEKS                       R11 R10 K13 ["tokens"]
      239 SETTABLEKS                       R4 R10 K14 ["rules"]
      241 CALL                             R9 1 -1
      242 SETLIST                          R8 R9 -1 [1]
      244 CALL                             R5 3 1
      245 RETURN                           R5 1
