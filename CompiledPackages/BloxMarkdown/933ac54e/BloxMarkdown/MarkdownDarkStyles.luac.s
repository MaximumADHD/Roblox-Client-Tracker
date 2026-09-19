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
       34 DUPTABLE                         R11 K15 [{["Name"] = "MarkdownDarkStyles", ["tokens"], ["rules"]}]
       35 DUPTABLE                         R12 K45 [{["textColor"], ["mutedText"], ["linkColor"], ["linkHover"], ["codeBg"], ["codeBorder"], ["codeText"], ["blockquoteBorder"], ["blockquoteBg"], ["tableBorder"], ["tableHeaderBg"], ["tableStripeBg"], ["dividerColor"], ["checkboxUnchecked"], ["checkboxChecked"], ["checkmarkColor"], ["surface"], ["toggleTrack"], ["toggleTrackChecked"], ["toggleKnob"], ["toggleKnobChecked"], ["scrollbarColor"], ["transparent"] = 1, ["opaque"] = 0, ["font"], ["fontBold"], ["fontCode"]}]
       36 GETIMPORT                        R13 K48 [Color3.new]
       38 LOADK                            R14 K49 [0.95686]
       39 LOADK                            R15 K49 [0.95686]
       40 LOADK                            R16 K50 [0.96471]
       41 CALL                             R13 3 1
       42 SETTABLEKS                       R13 R12 K16 ["textColor"]
       44 GETIMPORT                        R13 K48 [Color3.new]
       46 LOADK                            R14 K51 [0.45098]
       47 LOADK                            R15 K52 [0.47059]
       48 LOADK                            R16 K53 [0.54902]
       49 CALL                             R13 3 1
       50 SETTABLEKS                       R13 R12 K17 ["mutedText"]
       52 GETIMPORT                        R13 K48 [Color3.new]
       54 LOADK                            R14 K54 [0.32157]
       55 LOADK                            R15 K55 [0.5451]
       56 LOADN                            R16 1
       57 CALL                             R13 3 1
       58 SETTABLEKS                       R13 R12 K18 ["linkColor"]
       60 GETIMPORT                        R13 K48 [Color3.new]
       62 LOADK                            R14 K56 [0.52]
       63 LOADK                            R15 K57 [0.68]
       64 LOADN                            R16 1
       65 CALL                             R13 3 1
       66 SETTABLEKS                       R13 R12 K19 ["linkHover"]
       68 GETIMPORT                        R13 K48 [Color3.new]
       70 LOADK                            R14 K58 [0.09804]
       71 LOADK                            R15 K59 [0.10196]
       72 LOADK                            R16 K60 [0.12157]
       73 CALL                             R13 3 1
       74 SETTABLEKS                       R13 R12 K20 ["codeBg"]
       76 GETIMPORT                        R13 K48 [Color3.new]
       78 LOADK                            R14 K61 [0.12549]
       79 LOADK                            R15 K62 [0.13333]
       80 LOADK                            R16 K63 [0.15294]
       81 CALL                             R13 3 1
       82 SETTABLEKS                       R13 R12 K21 ["codeBorder"]
       84 GETIMPORT                        R13 K48 [Color3.new]
       86 LOADK                            R14 K49 [0.95686]
       87 LOADK                            R15 K49 [0.95686]
       88 LOADK                            R16 K50 [0.96471]
       89 CALL                             R13 3 1
       90 SETTABLEKS                       R13 R12 K22 ["codeText"]
       92 GETIMPORT                        R13 K48 [Color3.new]
       94 LOADK                            R14 K51 [0.45098]
       95 LOADK                            R15 K52 [0.47059]
       96 LOADK                            R16 K53 [0.54902]
       97 CALL                             R13 3 1
       98 SETTABLEKS                       R13 R12 K23 ["blockquoteBorder"]
      100 GETIMPORT                        R13 K48 [Color3.new]
      102 LOADK                            R14 K58 [0.09804]
      103 LOADK                            R15 K59 [0.10196]
      104 LOADK                            R16 K60 [0.12157]
      105 CALL                             R13 3 1
      106 SETTABLEKS                       R13 R12 K24 ["blockquoteBg"]
      108 GETIMPORT                        R13 K48 [Color3.new]
      110 LOADK                            R14 K63 [0.15294]
      111 LOADK                            R15 K64 [0.16078]
      112 LOADK                            R16 K65 [0.18824]
      113 CALL                             R13 3 1
      114 SETTABLEKS                       R13 R12 K25 ["tableBorder"]
      116 GETIMPORT                        R13 K48 [Color3.new]
      118 LOADK                            R14 K61 [0.12549]
      119 LOADK                            R15 K62 [0.13333]
      120 LOADK                            R16 K63 [0.15294]
      121 CALL                             R13 3 1
      122 SETTABLEKS                       R13 R12 K26 ["tableHeaderBg"]
      124 GETIMPORT                        R13 K48 [Color3.new]
      126 LOADK                            R14 K58 [0.09804]
      127 LOADK                            R15 K59 [0.10196]
      128 LOADK                            R16 K60 [0.12157]
      129 CALL                             R13 3 1
      130 SETTABLEKS                       R13 R12 K27 ["tableStripeBg"]
      132 GETIMPORT                        R13 K48 [Color3.new]
      134 LOADK                            R14 K63 [0.15294]
      135 LOADK                            R15 K64 [0.16078]
      136 LOADK                            R16 K65 [0.18824]
      137 CALL                             R13 3 1
      138 SETTABLEKS                       R13 R12 K28 ["dividerColor"]
      140 GETIMPORT                        R13 K48 [Color3.new]
      142 LOADK                            R14 K51 [0.45098]
      143 LOADK                            R15 K52 [0.47059]
      144 LOADK                            R16 K53 [0.54902]
      145 CALL                             R13 3 1
      146 SETTABLEKS                       R13 R12 K29 ["checkboxUnchecked"]
      148 GETIMPORT                        R13 K48 [Color3.new]
      150 LOADK                            R14 K66 [0.2]
      151 LOADK                            R15 K67 [0.37255]
      152 LOADN                            R16 1
      153 CALL                             R13 3 1
      154 SETTABLEKS                       R13 R12 K30 ["checkboxChecked"]
      156 GETIMPORT                        R13 K48 [Color3.new]
      158 LOADN                            R14 1
      159 LOADN                            R15 1
      160 LOADN                            R16 1
      161 CALL                             R13 3 1
      162 SETTABLEKS                       R13 R12 K31 ["checkmarkColor"]
      164 GETIMPORT                        R13 K48 [Color3.new]
      166 LOADK                            R14 K68 [0.07059]
      167 LOADK                            R15 K68 [0.07059]
      168 LOADK                            R16 K69 [0.08235]
      169 CALL                             R13 3 1
      170 SETTABLEKS                       R13 R12 K32 ["surface"]
      172 GETIMPORT                        R13 K48 [Color3.new]
      174 LOADK                            R14 K63 [0.15294]
      175 LOADK                            R15 K64 [0.16078]
      176 LOADK                            R16 K65 [0.18824]
      177 CALL                             R13 3 1
      178 SETTABLEKS                       R13 R12 K33 ["toggleTrack"]
      180 GETIMPORT                        R13 K48 [Color3.new]
      182 LOADK                            R14 K49 [0.95686]
      183 LOADK                            R15 K49 [0.95686]
      184 LOADK                            R16 K50 [0.96471]
      185 CALL                             R13 3 1
      186 SETTABLEKS                       R13 R12 K34 ["toggleTrackChecked"]
      188 GETIMPORT                        R13 K48 [Color3.new]
      190 LOADK                            R14 K49 [0.95686]
      191 LOADK                            R15 K49 [0.95686]
      192 LOADK                            R16 K50 [0.96471]
      193 CALL                             R13 3 1
      194 SETTABLEKS                       R13 R12 K35 ["toggleKnob"]
      196 GETIMPORT                        R13 K48 [Color3.new]
      198 LOADK                            R14 K68 [0.07059]
      199 LOADK                            R15 K68 [0.07059]
      200 LOADK                            R16 K69 [0.08235]
      201 CALL                             R13 3 1
      202 SETTABLEKS                       R13 R12 K36 ["toggleKnobChecked"]
      204 GETIMPORT                        R13 K48 [Color3.new]
      206 LOADK                            R14 K51 [0.45098]
      207 LOADK                            R15 K52 [0.47059]
      208 LOADK                            R16 K53 [0.54902]
      209 CALL                             R13 3 1
      210 SETTABLEKS                       R13 R12 K37 ["scrollbarColor"]
      212 GETIMPORT                        R13 K73 [Enum.Font.BuilderSans]
      214 SETTABLEKS                       R13 R12 K42 ["font"]
      216 GETIMPORT                        R13 K75 [Enum.Font.BuilderSansBold]
      218 SETTABLEKS                       R13 R12 K43 ["fontBold"]
      220 GETIMPORT                        R13 K76 [Font.new]
      222 LOADK                            R14 K77 ["rbxasset://fonts/families/BuilderMono.json"]
      223 GETIMPORT                        R15 K80 [Enum.FontWeight.Regular]
      225 GETIMPORT                        R16 K83 [Enum.FontStyle.Normal]
      227 CALL                             R13 3 1
      228 SETTABLEKS                       R13 R12 K44 ["fontCode"]
      230 SETTABLEKS                       R12 R11 K13 ["tokens"]
      232 SETTABLEKS                       R5 R11 K14 ["rules"]
      234 CALL                             R10 1 -1
      235 SETLIST                          R9 R10 -1 [1]
      237 CALL                             R6 3 1
      238 RETURN                           R6 1
