PROTO_0:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["Only in flag branch"]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 GETUPVAL                         R2 1
        9 MOVE                             R3 R0
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R4 R4 K3 ["key"]
       13 CALL                             R2 2 1
       14 JUMPIFNOTEQKNIL                  R2 ; [+3]
       16 GETUPVAL                         R3 3
       17 RETURN                           R3 1
       18 GETTABLEKS                       R3 R2 K4 ["IconTint"]
       20 NAMECALL                         R3 R3 K5 ["ToHSV"]
       22 CALL                             R3 1 2
       23 LOADN                            R5 0
       24 JUMPIFNOTLE                      R4 R5 ; [+3]
       26 GETUPVAL                         R5 3
       27 RETURN                           R5 1
       28 GETUPVAL                         R5 4
       29 CALL                             R5 0 1
       30 JUMPIFNOT                        R5 ; [+10]
       31 GETUPVAL                         R5 1
       32 MOVE                             R6 R0
       33 GETUPVAL                         R7 5
       34 GETTABLEKS                       R7 R7 K3 ["key"]
       36 CALL                             R5 2 1
       37 JUMPIFNOT                        R5 ; [+3]
       38 GETTABLEKS                       R5 R2 K4 ["IconTint"]
       40 RETURN                           R5 1
       41 JUMPIFNOTEQKS                    R1 K6 ["Light"] ; [+8]
       43 GETIMPORT                        R5 K9 [Color3.fromHSV]
       45 MOVE                             R6 R3
       46 LOADK                            R7 K10 [0.636364]
       47 LOADK                            R8 K11 [0.905882]
       48 CALL                             R5 3 -1
       49 RETURN                           R5 -1
       50 JUMPIFNOTEQKS                    R1 K12 ["Dark"] ; [+8]
       52 GETIMPORT                        R5 K9 [Color3.fromHSV]
       54 MOVE                             R6 R3
       55 LOADK                            R7 K13 [0.492]
       56 LOADK                            R8 K14 [0.980392]
       57 CALL                             R5 3 -1
       58 RETURN                           R5 -1
       59 GETUPVAL                         R5 3
       60 RETURN                           R5 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["key"]
        5 CALL                             R1 2 1
        6 JUMPIFNOT                        R1 ; [+11]
        7 GETTABLEKS                       R2 R1 K1 ["IconTint"]
        9 NAMECALL                         R2 R2 K2 ["ToHSV"]
       11 CALL                             R2 1 2
       12 LOADN                            R5 0
       13 JUMPIFLT                         R5 R3 ; [+2]
       15 LOADB                            R4 0 +1
       16 LOADB                            R4 1
       17 RETURN                           R4 1
       18 LOADB                            R2 0
       19 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Fields"]
       11 GETTABLEKS                       R2 R2 K7 ["AllFields"]
       13 GETTABLEKS                       R2 R2 K8 ["ExplorerIcon"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Fields"]
       20 GETTABLEKS                       R3 R3 K7 ["AllFields"]
       22 GETTABLEKS                       R3 R3 K9 ["FolderIconTint"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K10 ["Components"]
       29 GETTABLEKS                       R4 R4 K11 ["Contexts"]
       31 GETTABLEKS                       R4 R4 K12 ["ThemeContext"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K13 ["Flags"]
       38 GETTABLEKS                       R5 R5 K14 ["getEngineFeatureExplorerIconContent"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K13 ["Flags"]
       45 GETTABLEKS                       R6 R6 K15 ["getEngineFeatureFolderIconTint"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K16 ["Util"]
       52 GETTABLEKS                       R7 R7 K17 ["getField"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K18 ["Hooks"]
       59 GETTABLEKS                       R8 R8 K19 ["useVisibleExplorerNodeRange"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K22 [Color3.new]
       64 LOADN                            R9 1
       65 LOADN                            R10 1
       66 LOADN                            R11 1
       67 CALL                             R8 3 1
       68 DUPCLOSURE                       R9 K23 [PROTO_0]
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R4
       74 CAPTURE                          VAL R1
       75 DUPCLOSURE                       R10 K24 [PROTO_1]
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R2
       78 DUPTABLE                         R11 K27 [{"getClassIconTint", "isTintedFolder"}]
       79 SETTABLEKS                       R9 R11 K25 ["getClassIconTint"]
       81 SETTABLEKS                       R10 R11 K26 ["isTintedFolder"]
       83 RETURN                           R11 1
