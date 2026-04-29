PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagExplorerFoundation not enabled"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R1 R2 K3 ["useContext"]
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R2 R3 K4 ["Context"]
       14 CALL                             R1 1 1
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R2 R3 K5 ["useState"]
       18 LOADNIL                          R3
       19 CALL                             R2 1 2
       20 GETUPVAL                         R4 3
       21 LOADK                            R5 K6 ["Frame"]
       22 DUPTABLE                         R6 K9 [{"BackgroundTransparency", "Size"}]
       23 LOADN                            R7 1
       24 SETTABLEKS                       R7 R6 K7 ["BackgroundTransparency"]
       26 GETIMPORT                        R7 K12 [UDim2.fromScale]
       28 LOADN                            R8 1
       29 LOADN                            R9 1
       30 CALL                             R7 2 1
       31 SETTABLEKS                       R7 R6 K8 ["Size"]
       33 DUPTABLE                         R7 K15 [{"Children", "Overlays"}]
       34 GETUPVAL                         R8 3
       35 LOADK                            R9 K6 ["Frame"]
       36 DUPTABLE                         R10 K9 [{"BackgroundTransparency", "Size"}]
       37 LOADN                            R11 1
       38 SETTABLEKS                       R11 R10 K7 ["BackgroundTransparency"]
       40 GETIMPORT                        R11 K12 [UDim2.fromScale]
       42 LOADN                            R12 1
       43 LOADN                            R13 1
       44 CALL                             R11 2 1
       45 SETTABLEKS                       R11 R10 K8 ["Size"]
       47 GETUPVAL                         R11 3
       48 GETUPVAL                         R13 4
       49 GETTABLEKS                       R12 R13 K16 ["FoundationProvider"]
       51 DUPTABLE                         R13 K19 [{"overlayGui", "theme"}]
       52 SETTABLEKS                       R2 R13 K17 ["overlayGui"]
       54 GETTABLEKS                       R15 R1 K18 ["theme"]
       56 JUMPIFNOTEQKS                    R15 K20 ["Dark"] ; [+9]
       58 GETUPVAL                         R17 4
       59 GETTABLEKS                       R16 R17 K21 ["Enums"]
       61 GETTABLEKS                       R15 R16 K22 ["Theme"]
       63 GETTABLEKS                       R14 R15 K20 ["Dark"]
       65 JUMP                             ; [+7]
       66 GETUPVAL                         R17 4
       67 GETTABLEKS                       R16 R17 K21 ["Enums"]
       69 GETTABLEKS                       R15 R16 K22 ["Theme"]
       71 GETTABLEKS                       R14 R15 K23 ["Light"]
       73 SETTABLEKS                       R14 R13 K18 ["theme"]
       75 GETTABLEKS                       R14 R0 K24 ["children"]
       77 CALL                             R11 3 -1
       78 CALL                             R8 -1 1
       79 SETTABLEKS                       R8 R7 K13 ["Children"]
       81 GETUPVAL                         R8 3
       82 LOADK                            R9 K6 ["Frame"]
       83 DUPTABLE                         R10 K27 [{"BackgroundTransparency", "Size", "ZIndex", "ref"}]
       84 LOADN                            R11 1
       85 SETTABLEKS                       R11 R10 K7 ["BackgroundTransparency"]
       87 GETIMPORT                        R11 K12 [UDim2.fromScale]
       89 LOADN                            R12 1
       90 LOADN                            R13 1
       91 CALL                             R11 2 1
       92 SETTABLEKS                       R11 R10 K8 ["Size"]
       94 LOADN                            R11 2
       95 SETTABLEKS                       R11 R10 K25 ["ZIndex"]
       97 SETTABLEKS                       R3 R10 K26 ["ref"]
       99 CALL                             R8 2 1
      100 SETTABLEKS                       R8 R7 K14 ["Overlays"]
      102 CALL                             R4 3 -1
      103 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K9 ["Components"]
       25 GETTABLEKS                       R5 R6 K10 ["Contexts"]
       27 GETTABLEKS                       R4 R5 K11 ["ThemeContext"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K12 ["Flags"]
       34 GETTABLEKS                       R5 R6 K13 ["getFFlagExplorerFoundation"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R2 K14 ["createElement"]
       39 DUPCLOSURE                       R6 K15 [PROTO_0]
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R1
       45 RETURN                           R6 1
