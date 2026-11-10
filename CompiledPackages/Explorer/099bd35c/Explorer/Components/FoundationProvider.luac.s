PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagExplorerFoundation not enabled"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K3 ["useContext"]
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K4 ["Context"]
       14 CALL                             R1 1 1
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R2 R2 K5 ["useState"]
       18 LOADNIL                          R3
       19 CALL                             R2 1 2
       20 GETUPVAL                         R4 3
       21 LOADK                            R5 K6 ["Frame"]
       22 DUPTABLE                         R6 K10 [{["BackgroundTransparency"] = 1, ["Size"]}]
       23 GETIMPORT                        R7 K13 [UDim2.fromScale]
       25 LOADN                            R8 1
       26 LOADN                            R9 1
       27 CALL                             R7 2 1
       28 SETTABLEKS                       R7 R6 K9 ["Size"]
       30 DUPTABLE                         R7 K16 [{"Children", "Overlays"}]
       31 GETUPVAL                         R8 3
       32 LOADK                            R9 K6 ["Frame"]
       33 DUPTABLE                         R10 K10 [{["BackgroundTransparency"] = 1, ["Size"]}]
       34 GETIMPORT                        R11 K13 [UDim2.fromScale]
       36 LOADN                            R12 1
       37 LOADN                            R13 1
       38 CALL                             R11 2 1
       39 SETTABLEKS                       R11 R10 K9 ["Size"]
       41 GETUPVAL                         R11 3
       42 GETUPVAL                         R12 4
       43 GETTABLEKS                       R12 R12 K17 ["FoundationProvider"]
       45 DUPTABLE                         R13 K20 [{"overlayGui", "theme"}]
       46 SETTABLEKS                       R2 R13 K18 ["overlayGui"]
       48 GETTABLEKS                       R15 R1 K19 ["theme"]
       50 JUMPIFNOTEQKS                    R15 K21 ["Dark"] ; [+9]
       52 GETUPVAL                         R14 4
       53 GETTABLEKS                       R14 R14 K22 ["Enums"]
       55 GETTABLEKS                       R14 R14 K23 ["Theme"]
       57 GETTABLEKS                       R14 R14 K21 ["Dark"]
       59 JUMP                             ; [+7]
       60 GETUPVAL                         R14 4
       61 GETTABLEKS                       R14 R14 K22 ["Enums"]
       63 GETTABLEKS                       R14 R14 K23 ["Theme"]
       65 GETTABLEKS                       R14 R14 K24 ["Light"]
       67 SETTABLEKS                       R14 R13 K19 ["theme"]
       69 GETTABLEKS                       R14 R0 K25 ["children"]
       71 CALL                             R11 3 -1
       72 CALL                             R8 -1 1
       73 SETTABLEKS                       R8 R7 K14 ["Children"]
       75 GETUPVAL                         R8 3
       76 LOADK                            R9 K6 ["Frame"]
       77 DUPTABLE                         R10 K29 [{["BackgroundTransparency"] = 1, ["Size"], ["ZIndex"] = 2, ["ref"]}]
       78 GETIMPORT                        R11 K13 [UDim2.fromScale]
       80 LOADN                            R12 1
       81 LOADN                            R13 1
       82 CALL                             R11 2 1
       83 SETTABLEKS                       R11 R10 K9 ["Size"]
       85 SETTABLEKS                       R3 R10 K28 ["ref"]
       87 CALL                             R8 2 1
       88 SETTABLEKS                       R8 R7 K15 ["Overlays"]
       90 CALL                             R4 3 -1
       91 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Components"]
       25 GETTABLEKS                       R4 R4 K10 ["Contexts"]
       27 GETTABLEKS                       R4 R4 K11 ["ThemeContext"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K12 ["Flags"]
       34 GETTABLEKS                       R5 R5 K13 ["getFFlagExplorerFoundation"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R2 K14 ["createElement"]
       39 DUPCLOSURE                       R6 K15 [PROTO_0]
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R1
       45 RETURN                           R6 1
