MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CancellableDialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R2 K9 ["createStyleRule"]
       18 MOVE                             R3 R2
       19 LOADK                            R4 K10 [".Component-ThumbnailAndTextInfo"]
       20 NEWTABLE                         R5 0 0
       22 NEWTABLE                         R6 0 2
       24 MOVE                             R7 R2
       25 LOADK                            R8 K11 ["::UIListLayout"]
       26 DUPTABLE                         R9 K13 [{"Padding"}]
       27 GETIMPORT                        R10 K16 [UDim.new]
       29 LOADN                            R11 0
       30 LOADN                            R12 16
       31 CALL                             R10 2 1
       32 SETTABLEKS                       R10 R9 K12 ["Padding"]
       34 CALL                             R7 2 1
       35 MOVE                             R8 R2
       36 LOADK                            R9 K17 [">> .Thumbnail"]
       37 DUPTABLE                         R10 K20 [{"Size", "BackgroundTransparency"}]
       38 LOADK                            R11 K21 ["$ThumbnailSize"]
       39 SETTABLEKS                       R11 R10 K18 ["Size"]
       41 LOADK                            R11 K22 ["$Transparent"]
       42 SETTABLEKS                       R11 R10 K19 ["BackgroundTransparency"]
       44 NEWTABLE                         R11 0 1
       46 MOVE                             R12 R2
       47 LOADK                            R13 K23 ["::UICorner"]
       48 DUPTABLE                         R14 K25 [{"CornerRadius"}]
       49 GETIMPORT                        R15 K16 [UDim.new]
       51 LOADN                            R16 0
       52 LOADN                            R17 4
       53 CALL                             R15 2 1
       54 SETTABLEKS                       R15 R14 K24 ["CornerRadius"]
       56 CALL                             R12 2 -1
       57 SETLIST                          R11 R12 -1 [1]
       59 CALL                             R8 3 -1
       60 SETLIST                          R6 R7 -1 [1]
       62 DUPTABLE                         R7 K32 [{"ThumbnailSize", "ThumbnailToContentPadding", "ShimmerSize", "ShimmerInitialPosition", "Transparent", "ShimmerAngle"}]
       63 GETIMPORT                        R8 K35 [UDim2.fromOffset]
       65 LOADN                            R9 50
       66 LOADN                            R10 50
       67 CALL                             R8 2 1
       68 SETTABLEKS                       R8 R7 K26 ["ThumbnailSize"]
       70 GETIMPORT                        R8 K16 [UDim.new]
       72 LOADN                            R9 0
       73 LOADN                            R10 16
       74 CALL                             R8 2 1
       75 SETTABLEKS                       R8 R7 K27 ["ThumbnailToContentPadding"]
       77 GETIMPORT                        R8 K36 [UDim2.new]
       79 LOADN                            R9 2
       80 LOADN                            R10 0
       81 LOADN                            R11 1
       82 LOADN                            R12 0
       83 CALL                             R8 4 1
       84 SETTABLEKS                       R8 R7 K28 ["ShimmerSize"]
       86 GETIMPORT                        R8 K36 [UDim2.new]
       88 LOADN                            R9 0
       89 LOADN                            R10 0
       90 LOADN                            R11 0
       91 LOADN                            R12 0
       92 CALL                             R8 4 1
       93 SETTABLEKS                       R8 R7 K29 ["ShimmerInitialPosition"]
       95 LOADN                            R8 1
       96 SETTABLEKS                       R8 R7 K30 ["Transparent"]
       98 LOADN                            R8 45
       99 SETTABLEKS                       R8 R7 K31 ["ShimmerAngle"]
      101 CALL                             R3 4 -1
      102 RETURN                           R3 -1
