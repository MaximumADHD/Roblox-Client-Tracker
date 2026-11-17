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
       37 DUPTABLE                         R10 K22 [{["Size"] = "$ThumbnailSize", ["BackgroundTransparency"] = "$Transparent"}]
       38 NEWTABLE                         R11 0 1
       40 MOVE                             R12 R2
       41 LOADK                            R13 K23 ["::UICorner"]
       42 DUPTABLE                         R14 K25 [{"CornerRadius"}]
       43 GETIMPORT                        R15 K16 [UDim.new]
       45 LOADN                            R16 0
       46 LOADN                            R17 4
       47 CALL                             R15 2 1
       48 SETTABLEKS                       R15 R14 K24 ["CornerRadius"]
       50 CALL                             R12 2 -1
       51 SETLIST                          R11 R12 -1 [1]
       53 CALL                             R8 3 -1
       54 SETLIST                          R6 R7 -1 [1]
       56 DUPTABLE                         R7 K34 [{["ThumbnailSize"], ["ThumbnailToContentPadding"], ["ShimmerSize"], ["ShimmerInitialPosition"], ["Transparent"] = 1, ["ShimmerAngle"] = 45}]
       57 GETIMPORT                        R8 K37 [UDim2.fromOffset]
       59 LOADN                            R9 50
       60 LOADN                            R10 50
       61 CALL                             R8 2 1
       62 SETTABLEKS                       R8 R7 K26 ["ThumbnailSize"]
       64 GETIMPORT                        R8 K16 [UDim.new]
       66 LOADN                            R9 0
       67 LOADN                            R10 16
       68 CALL                             R8 2 1
       69 SETTABLEKS                       R8 R7 K27 ["ThumbnailToContentPadding"]
       71 GETIMPORT                        R8 K38 [UDim2.new]
       73 LOADN                            R9 2
       74 LOADN                            R10 0
       75 LOADN                            R11 1
       76 LOADN                            R12 0
       77 CALL                             R8 4 1
       78 SETTABLEKS                       R8 R7 K28 ["ShimmerSize"]
       80 GETIMPORT                        R8 K38 [UDim2.new]
       82 LOADN                            R9 0
       83 LOADN                            R10 0
       84 LOADN                            R11 0
       85 LOADN                            R12 0
       86 CALL                             R8 4 1
       87 SETTABLEKS                       R8 R7 K29 ["ShimmerInitialPosition"]
       89 CALL                             R3 4 -1
       90 RETURN                           R3 -1
