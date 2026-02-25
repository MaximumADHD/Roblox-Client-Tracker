PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K5 [{"Text", "fontStyle", "RichText", "tag"}]
        5 LOADK                            R5 K6 ["Your balance is %* 200"]
        6 GETUPVAL                         R7 2
        7 GETUPVAL                         R9 3
        8 GETTABLEKS                       R8 R9 K7 ["Robux"]
       10 CALL                             R7 1 1
       11 NAMECALL                         R5 R5 K8 ["format"]
       13 CALL                             R5 2 1
       14 MOVE                             R4 R5
       15 SETTABLEKS                       R4 R3 K1 ["Text"]
       17 DUPTABLE                         R4 K10 [{"FontSize"}]
       18 GETTABLEKS                       R6 R0 K11 ["controls"]
       20 GETTABLEKS                       R5 R6 K12 ["textSize"]
       22 SETTABLEKS                       R5 R4 K9 ["FontSize"]
       24 SETTABLEKS                       R4 R3 K2 ["fontStyle"]
       26 LOADB                            R4 1
       27 SETTABLEKS                       R4 R3 K3 ["RichText"]
       29 LOADK                            R4 K13 ["auto-xy content-default"]
       30 SETTABLEKS                       R4 R3 K4 ["tag"]
       32 CALL                             R1 2 -1
       33 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R5 R1 K0 ["Color"]
        4 GETTABLEKS                       R4 R5 K1 ["Content"]
        6 GETTABLEKS                       R3 R4 K2 ["Emphasis"]
        8 GETTABLEKS                       R2 R3 K3 ["Color3"]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R3 R4 K4 ["createElement"]
       13 GETUPVAL                         R4 2
       14 DUPTABLE                         R5 K9 [{"Text", "fontStyle", "RichText", "tag"}]
       15 LOADK                            R7 K10 ["Your balance is <b><font color=\"#%*\">%* 200</font></b>"]
       16 NAMECALL                         R9 R2 K11 ["ToHex"]
       18 CALL                             R9 1 1
       19 GETUPVAL                         R10 3
       20 GETUPVAL                         R12 4
       21 GETTABLEKS                       R11 R12 K12 ["Robux"]
       23 CALL                             R10 1 1
       24 NAMECALL                         R7 R7 K13 ["format"]
       26 CALL                             R7 3 1
       27 MOVE                             R6 R7
       28 SETTABLEKS                       R6 R5 K5 ["Text"]
       30 DUPTABLE                         R6 K15 [{"FontSize"}]
       31 GETTABLEKS                       R8 R0 K16 ["controls"]
       33 GETTABLEKS                       R7 R8 K17 ["textSize"]
       35 SETTABLEKS                       R7 R6 K14 ["FontSize"]
       37 SETTABLEKS                       R6 R5 K6 ["fontStyle"]
       39 LOADB                            R6 1
       40 SETTABLEKS                       R6 R5 K7 ["RichText"]
       42 LOADK                            R6 K18 ["auto-xy content-default"]
       43 SETTABLEKS                       R6 R5 K8 ["tag"]
       45 CALL                             R3 2 -1
       46 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["BuilderIcons"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K8 ["Icon"]
       16 GETIMPORT                        R4 K6 [require]
       18 GETTABLEKS                       R5 R1 K9 ["React"]
       20 CALL                             R4 1 1
       21 GETIMPORT                        R5 K6 [require]
       23 GETTABLEKS                       R7 R0 K10 ["Components"]
       25 GETTABLEKS                       R6 R7 K11 ["Text"]
       27 CALL                             R5 1 1
       28 GETIMPORT                        R6 K6 [require]
       30 GETTABLEKS                       R8 R0 K12 ["Utility"]
       32 GETTABLEKS                       R7 R8 K13 ["getIconRichText"]
       34 CALL                             R6 1 1
       35 GETIMPORT                        R7 K6 [require]
       37 GETTABLEKS                       R10 R0 K14 ["Providers"]
       39 GETTABLEKS                       R9 R10 K15 ["Style"]
       41 GETTABLEKS                       R8 R9 K16 ["useTokens"]
       43 CALL                             R7 1 1
       44 DUPTABLE                         R8 K20 [{"summary", "stories", "controls"}]
       45 LOADK                            R9 K11 ["Text"]
       46 SETTABLEKS                       R9 R8 K17 ["summary"]
       48 NEWTABLE                         R9 0 2
       50 DUPTABLE                         R10 K23 [{"name", "story"}]
       51 LOADK                            R11 K24 ["Rich text icon"]
       52 SETTABLEKS                       R11 R10 K21 ["name"]
       54 DUPCLOSURE                       R11 K25 [PROTO_0]
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R3
       59 SETTABLEKS                       R11 R10 K22 ["story"]
       61 DUPTABLE                         R11 K23 [{"name", "story"}]
       62 LOADK                            R12 K26 ["Rich text icon, custom color"]
       63 SETTABLEKS                       R12 R11 K21 ["name"]
       65 DUPCLOSURE                       R12 K27 [PROTO_1]
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R3
       71 SETTABLEKS                       R12 R11 K22 ["story"]
       73 SETLIST                          R9 R10 2 [1]
       75 SETTABLEKS                       R9 R8 K18 ["stories"]
       77 DUPTABLE                         R9 K29 [{"textSize"}]
       78 LOADN                            R10 24
       79 SETTABLEKS                       R10 R9 K28 ["textSize"]
       81 SETTABLEKS                       R9 R8 K19 ["controls"]
       83 RETURN                           R8 1
