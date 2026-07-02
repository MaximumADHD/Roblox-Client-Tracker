PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K7 [{["Text"], ["fontStyle"], ["RichText"] = True, ["tag"] = "auto-xy content-default"}]
        5 LOADK                            R5 K8 ["Your balance is %* 200"]
        6 GETUPVAL                         R7 2
        7 GETUPVAL                         R8 3
        8 GETTABLEKS                       R8 R8 K9 ["Robux"]
       10 CALL                             R7 1 1
       11 NAMECALL                         R5 R5 K10 ["format"]
       13 CALL                             R5 2 1
       14 MOVE                             R4 R5
       15 SETTABLEKS                       R4 R3 K1 ["Text"]
       17 DUPTABLE                         R4 K12 [{"FontSize"}]
       18 GETTABLEKS                       R5 R0 K13 ["controls"]
       20 GETTABLEKS                       R5 R5 K14 ["textSize"]
       22 SETTABLEKS                       R5 R4 K11 ["FontSize"]
       24 SETTABLEKS                       R4 R3 K2 ["fontStyle"]
       26 CALL                             R1 2 -1
       27 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R1 K0 ["Color"]
        4 GETTABLEKS                       R2 R2 K1 ["Content"]
        6 GETTABLEKS                       R2 R2 K2 ["Emphasis"]
        8 GETTABLEKS                       R2 R2 K3 ["Color3"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K4 ["createElement"]
       13 GETUPVAL                         R4 2
       14 DUPTABLE                         R5 K11 [{["Text"], ["fontStyle"], ["RichText"] = True, ["tag"] = "auto-xy content-default"}]
       15 LOADK                            R7 K12 ["Your balance is <b><font color=\"#%*\">%* 200</font></b>"]
       16 NAMECALL                         R9 R2 K13 ["ToHex"]
       18 CALL                             R9 1 1
       19 GETUPVAL                         R10 3
       20 GETUPVAL                         R11 4
       21 GETTABLEKS                       R11 R11 K14 ["Robux"]
       23 CALL                             R10 1 1
       24 NAMECALL                         R7 R7 K15 ["format"]
       26 CALL                             R7 3 1
       27 MOVE                             R6 R7
       28 SETTABLEKS                       R6 R5 K5 ["Text"]
       30 DUPTABLE                         R6 K17 [{"FontSize"}]
       31 GETTABLEKS                       R7 R0 K18 ["controls"]
       33 GETTABLEKS                       R7 R7 K19 ["textSize"]
       35 SETTABLEKS                       R7 R6 K16 ["FontSize"]
       37 SETTABLEKS                       R6 R5 K6 ["fontStyle"]
       39 CALL                             R3 2 -1
       40 RETURN                           R3 -1

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
       23 GETTABLEKS                       R6 R0 K10 ["Components"]
       25 GETTABLEKS                       R6 R6 K11 ["Text"]
       27 CALL                             R5 1 1
       28 GETIMPORT                        R6 K6 [require]
       30 GETTABLEKS                       R7 R0 K12 ["Utility"]
       32 GETTABLEKS                       R7 R7 K13 ["getIconRichText"]
       34 CALL                             R6 1 1
       35 GETIMPORT                        R7 K6 [require]
       37 GETTABLEKS                       R8 R0 K14 ["Providers"]
       39 GETTABLEKS                       R8 R8 K15 ["Style"]
       41 GETTABLEKS                       R8 R8 K16 ["useTokens"]
       43 CALL                             R7 1 1
       44 DUPTABLE                         R8 K20 [{["summary"] = "Text", ["stories"], ["controls"]}]
       45 NEWTABLE                         R9 0 2
       47 DUPTABLE                         R10 K24 [{["name"] = "Rich text icon", ["story"]}]
       48 DUPCLOSURE                       R11 K25 [PROTO_0]
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R6
       52 CAPTURE                          VAL R3
       53 SETTABLEKS                       R11 R10 K23 ["story"]
       55 DUPTABLE                         R11 K27 [{["name"] = "Rich text icon, custom color", ["story"]}]
       56 DUPCLOSURE                       R12 K28 [PROTO_1]
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R3
       62 SETTABLEKS                       R12 R11 K23 ["story"]
       64 SETLIST                          R9 R10 2 [1]
       66 SETTABLEKS                       R9 R8 K18 ["stories"]
       68 DUPTABLE                         R9 K31 [{["textSize"] = 24}]
       69 SETTABLEKS                       R9 R8 K19 ["controls"]
       71 RETURN                           R8 1
