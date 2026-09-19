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
       28 JUMPIFNOTEQKS                    R1 K6 ["Light"] ; [+8]
       30 GETIMPORT                        R5 K9 [Color3.fromHSV]
       32 MOVE                             R6 R3
       33 LOADK                            R7 K10 [0.636364]
       34 LOADK                            R8 K11 [0.905882]
       35 CALL                             R5 3 -1
       36 RETURN                           R5 -1
       37 JUMPIFNOTEQKS                    R1 K12 ["Dark"] ; [+8]
       39 GETIMPORT                        R5 K9 [Color3.fromHSV]
       41 MOVE                             R6 R3
       42 LOADK                            R7 K13 [0.492]
       43 LOADK                            R8 K14 [0.980392]
       44 CALL                             R5 3 -1
       45 RETURN                           R5 -1
       46 GETUPVAL                         R5 3
       47 RETURN                           R5 1

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
       13 GETTABLEKS                       R2 R2 K8 ["FolderIconTint"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Components"]
       20 GETTABLEKS                       R3 R3 K10 ["Contexts"]
       22 GETTABLEKS                       R3 R3 K11 ["ThemeContext"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K12 ["Flags"]
       29 GETTABLEKS                       R4 R4 K13 ["getEngineFeatureFolderIconTint"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K14 ["Util"]
       36 GETTABLEKS                       R5 R5 K15 ["getField"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K16 ["Hooks"]
       43 GETTABLEKS                       R6 R6 K17 ["useVisibleExplorerNodeRange"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K20 [Color3.new]
       48 LOADN                            R7 1
       49 LOADN                            R8 1
       50 LOADN                            R9 1
       51 CALL                             R6 3 1
       52 DUPCLOSURE                       R7 K21 [PROTO_0]
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R6
       57 DUPCLOSURE                       R8 K22 [PROTO_1]
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R1
       60 DUPTABLE                         R9 K25 [{"getClassIconTint", "isTintedFolder"}]
       61 SETTABLEKS                       R7 R9 K23 ["getClassIconTint"]
       63 SETTABLEKS                       R8 R9 K24 ["isTintedFolder"]
       65 RETURN                           R9 1
