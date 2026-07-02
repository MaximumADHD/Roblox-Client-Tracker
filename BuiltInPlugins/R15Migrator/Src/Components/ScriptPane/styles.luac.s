MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R2 K9 ["createStyleRule"]
       18 MOVE                             R3 R2
       19 LOADK                            R4 K10 [".Component-TreeTable"]
       20 NEWTABLE                         R5 0 0
       22 NEWTABLE                         R6 0 1
       24 MOVE                             R7 R2
       25 LOADK                            R8 K11 [">> .Component-CellComponent"]
       26 NEWTABLE                         R9 0 0
       28 NEWTABLE                         R10 0 2
       30 MOVE                             R11 R2
       31 LOADK                            R12 K12 ["> .Left ::UIPadding"]
       32 DUPTABLE                         R13 K17 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       33 GETIMPORT                        R14 K20 [UDim.new]
       35 LOADN                            R15 0
       36 LOADN                            R16 1
       37 CALL                             R14 2 1
       38 SETTABLEKS                       R14 R13 K13 ["PaddingTop"]
       40 GETIMPORT                        R14 K20 [UDim.new]
       42 LOADN                            R15 0
       43 LOADN                            R16 1
       44 CALL                             R14 2 1
       45 SETTABLEKS                       R14 R13 K14 ["PaddingBottom"]
       47 GETIMPORT                        R14 K20 [UDim.new]
       49 LOADN                            R15 0
       50 LOADN                            R16 5
       51 CALL                             R14 2 1
       52 SETTABLEKS                       R14 R13 K15 ["PaddingLeft"]
       54 GETIMPORT                        R14 K20 [UDim.new]
       56 LOADN                            R15 0
       57 LOADN                            R16 5
       58 CALL                             R14 2 1
       59 SETTABLEKS                       R14 R13 K16 ["PaddingRight"]
       61 CALL                             R11 2 1
       62 MOVE                             R12 R2
       63 LOADK                            R13 K21 [">> .Arrow"]
       64 DUPTABLE                         R14 K27 [{["BackgroundTransparency"] = 1, ["Image"] = "$ArrowRightImage", ["Size"]}]
       65 GETIMPORT                        R15 K30 [UDim2.fromOffset]
       67 LOADN                            R16 16
       68 LOADN                            R17 16
       69 CALL                             R15 2 1
       70 SETTABLEKS                       R15 R14 K26 ["Size"]
       72 NEWTABLE                         R15 0 1
       74 MOVE                             R16 R2
       75 LOADK                            R17 K31 [".Invisible"]
       76 DUPTABLE                         R18 K33 [{["ImageTransparency"] = 1}]
       77 CALL                             R16 2 -1
       78 SETLIST                          R15 R16 -1 [1]
       80 CALL                             R12 3 -1
       81 SETLIST                          R10 R11 -1 [1]
       83 CALL                             R7 3 -1
       84 SETLIST                          R6 R7 -1 [1]
       86 DUPTABLE                         R7 K40 [{["ArrowSize"] = 16, ["CellPadding"] = 5, ["Indent"] = 20}]
       87 CALL                             R3 4 -1
       88 RETURN                           R3 -1
