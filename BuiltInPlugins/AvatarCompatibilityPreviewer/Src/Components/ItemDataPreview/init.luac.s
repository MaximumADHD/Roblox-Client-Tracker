PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["ItemData"]
        2 GETTABLEKS                       R1 R1 K1 ["item"]
        4 GETTABLEKS                       R1 R1 K2 ["source"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K3 ["SOURCE_BUILTIN"]
        9 JUMPIFNOTEQ                      R1 R2 ; [+29]
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K4 ["createElement"]
       14 GETTABLEKS                       R2 R0 K0 ["ItemData"]
       16 GETTABLEKS                       R2 R2 K5 ["palette"]
       18 GETTABLEKS                       R2 R2 K6 ["PreviewComponent"]
       20 DUPTABLE                         R3 K10 [{"Item", "Selected", "Transparency"}]
       21 GETTABLEKS                       R4 R0 K0 ["ItemData"]
       23 GETTABLEKS                       R4 R4 K1 ["item"]
       25 GETTABLEKS                       R4 R4 K11 ["builtinItem"]
       27 SETTABLEKS                       R4 R3 K7 ["Item"]
       29 GETTABLEKS                       R4 R0 K8 ["Selected"]
       31 SETTABLEKS                       R4 R3 K8 ["Selected"]
       33 GETTABLEKS                       R4 R0 K9 ["Transparency"]
       35 SETTABLEKS                       R4 R3 K9 ["Transparency"]
       37 CALL                             R1 2 -1
       38 RETURN                           R1 -1
       39 GETUPVAL                         R1 2
       40 CALL                             R1 0 1
       41 JUMPIFNOT                        R1 ; [+39]
       42 GETTABLEKS                       R1 R0 K0 ["ItemData"]
       44 GETTABLEKS                       R1 R1 K1 ["item"]
       46 GETTABLEKS                       R1 R1 K2 ["source"]
       48 GETUPVAL                         R2 0
       49 GETTABLEKS                       R2 R2 K12 ["SOURCE_MARKETPLACE"]
       51 JUMPIFNOTEQ                      R1 R2 ; [+29]
       53 GETUPVAL                         R1 1
       54 GETTABLEKS                       R1 R1 K4 ["createElement"]
       56 GETTABLEKS                       R2 R0 K0 ["ItemData"]
       58 GETTABLEKS                       R2 R2 K5 ["palette"]
       60 GETTABLEKS                       R2 R2 K6 ["PreviewComponent"]
       62 DUPTABLE                         R3 K10 [{"Item", "Selected", "Transparency"}]
       63 GETTABLEKS                       R4 R0 K0 ["ItemData"]
       65 GETTABLEKS                       R4 R4 K1 ["item"]
       67 GETTABLEKS                       R4 R4 K13 ["marketplaceItem"]
       69 SETTABLEKS                       R4 R3 K7 ["Item"]
       71 GETTABLEKS                       R4 R0 K8 ["Selected"]
       73 SETTABLEKS                       R4 R3 K8 ["Selected"]
       75 GETTABLEKS                       R4 R0 K9 ["Transparency"]
       77 SETTABLEKS                       R4 R3 K9 ["Transparency"]
       79 CALL                             R1 2 -1
       80 RETURN                           R1 -1
       81 GETTABLEKS                       R1 R0 K0 ["ItemData"]
       83 GETTABLEKS                       R1 R1 K1 ["item"]
       85 GETTABLEKS                       R1 R1 K2 ["source"]
       87 GETUPVAL                         R2 0
       88 GETTABLEKS                       R2 R2 K14 ["SOURCE_INSTANCE"]
       90 JUMPIFNOTEQ                      R1 R2 ; [+20]
       92 GETUPVAL                         R1 1
       93 GETTABLEKS                       R1 R1 K4 ["createElement"]
       95 GETUPVAL                         R2 3
       96 DUPTABLE                         R3 K16 [{"Instance", "Transparency"}]
       97 GETTABLEKS                       R4 R0 K0 ["ItemData"]
       99 GETTABLEKS                       R4 R4 K1 ["item"]
      101 GETTABLEKS                       R4 R4 K17 ["instance"]
      103 SETTABLEKS                       R4 R3 K15 ["Instance"]
      105 GETTABLEKS                       R4 R0 K9 ["Transparency"]
      107 SETTABLEKS                       R4 R3 K9 ["Transparency"]
      109 CALL                             R1 2 -1
      110 RETURN                           R1 -1
      111 GETIMPORT                        R1 K19 [error]
      113 LOADK                            R3 K20 ["Unknown item source: %*"]
      114 GETTABLEKS                       R5 R0 K0 ["ItemData"]
      116 GETTABLEKS                       R5 R5 K1 ["item"]
      118 GETTABLEKS                       R5 R5 K2 ["source"]
      120 NAMECALL                         R3 R3 K21 ["format"]
      122 CALL                             R3 2 1
      123 MOVE                             R2 R3
      124 CALL                             R1 1 0
      125 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R3 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETIMPORT                        R4 K1 [script]
       27 GETTABLEKS                       R4 R4 K11 ["ItemDataPreviewModel"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Flags"]
       36 GETTABLEKS                       R5 R5 K13 ["getFFlagAvatarPreviewerLookComposer"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K6 ["Src"]
       43 GETTABLEKS                       R6 R6 K14 ["Types"]
       45 CALL                             R5 1 1
       46 DUPCLOSURE                       R6 K15 [PROTO_0]
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R3
       51 RETURN                           R6 1
