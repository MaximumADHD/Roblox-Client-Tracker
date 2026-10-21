PROTO_0:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R1
        2 GETUPVAL                         R5 1
        3 GETTABLEKS                       R5 R5 K0 ["key"]
        5 CALL                             R3 2 1
        6 JUMPIFEQKNIL                     R3 ; [+36]
        8 LOADB                            R5 0
        9 FASTCALL1                        TYPEOF R3 ; [+3]
       10 MOVE                             R7 R3
       11 GETIMPORT                        R6 K2 [typeof]
       13 CALL                             R6 1 1
       14 JUMPIFNOTEQKS                    R6 K3 ["table"] ; [+11]
       16 GETTABLEKS                       R7 R3 K4 ["RunContext"]
       18 FASTCALL1                        TYPEOF R7 ; [+2]
       19 GETIMPORT                        R6 K2 [typeof]
       21 CALL                             R6 1 1
       22 JUMPIFEQKS                       R6 K5 ["EnumItem"] ; [+2]
       24 LOADB                            R5 0 +1
       25 LOADB                            R5 1
       26 FASTCALL2K                       ASSERT R5 K6 ; [+4]
       28 LOADK                            R6 K6 ["Expected scriptState to be a table with an EnumItem field"]
       29 GETIMPORT                        R4 K8 [assert]
       31 CALL                             R4 2 0
       32 GETTABLEKS                       R4 R3 K4 ["RunContext"]
       34 GETIMPORT                        R5 K11 [Enum.RunContext.Client]
       36 JUMPIFNOTEQ                      R4 R5 ; [+6]
       38 GETTABLEKS                       R4 R0 K12 ["getClassIcon"]
       40 LOADK                            R5 K13 ["LocalScript"]
       41 CALL                             R4 1 -1
       42 RETURN                           R4 -1
       43 GETUPVAL                         R4 2
       44 CALL                             R4 0 1
       45 JUMPIFNOT                        R4 ; [+7]
       46 GETUPVAL                         R4 3
       47 MOVE                             R5 R1
       48 MOVE                             R6 R2
       49 CALL                             R4 2 1
       50 JUMPIFEQKNIL                     R4 ; [+2]
       52 RETURN                           R4 1
       53 GETUPVAL                         R4 4
       54 JUMPIFNOT                        R4 ; [+10]
       55 GETUPVAL                         R4 5
       56 GETTABLEKS                       R4 R4 K14 ["isTintedFolder"]
       58 MOVE                             R5 R1
       59 CALL                             R4 1 1
       60 JUMPIFNOT                        R4 ; [+4]
       61 GETTABLEKS                       R4 R0 K15 ["getTintableFolderIcon"]
       63 CALL                             R4 0 -1
       64 RETURN                           R4 -1
       65 GETUPVAL                         R4 6
       66 MOVE                             R5 R1
       67 CALL                             R4 1 1
       68 JUMPIFNOT                        R4 ; [+24]
       69 DUPTABLE                         R4 K19 [{"Image", "ImageRectOffset", "ImageRectSize"}]
       70 GETUPVAL                         R5 7
       71 GETTABLEKS                       R5 R5 K20 ["packageLink"]
       73 LOADK                            R6 K21 ["AutoupdateOn"]
       74 LOADK                            R7 K22 ["Light"]
       75 CALL                             R5 2 1
       76 SETTABLEKS                       R5 R4 K16 ["Image"]
       78 GETIMPORT                        R5 K25 [Vector2.new]
       80 LOADN                            R6 0
       81 LOADN                            R7 0
       82 CALL                             R5 2 1
       83 SETTABLEKS                       R5 R4 K17 ["ImageRectOffset"]
       85 GETIMPORT                        R5 K25 [Vector2.new]
       87 LOADN                            R6 16
       88 LOADN                            R7 16
       89 CALL                             R5 2 1
       90 SETTABLEKS                       R5 R4 K18 ["ImageRectSize"]
       92 RETURN                           R4 1
       93 GETTABLEKS                       R4 R0 K12 ["getClassIcon"]
       95 GETTABLEKS                       R5 R1 K26 ["datum"]
       97 GETTABLEKS                       R5 R5 K27 ["className"]
       99 CALL                             R4 1 -1
      100 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["ClassIconContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Components"]
       20 GETTABLEKS                       R3 R3 K9 ["ExplorerNodeRow"]
       22 GETTABLEKS                       R3 R3 K10 ["ClassIconTint"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K11 ["Util"]
       29 GETTABLEKS                       R4 R4 K12 ["ImageUrl"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K13 ["Fields"]
       36 GETTABLEKS                       R5 R5 K14 ["AllFields"]
       38 GETTABLEKS                       R5 R5 K15 ["ScriptState"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K6 ["Components"]
       45 GETTABLEKS                       R6 R6 K7 ["Contexts"]
       47 GETTABLEKS                       R6 R6 K16 ["ThemeContext"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K6 ["Components"]
       54 GETTABLEKS                       R7 R7 K9 ["ExplorerNodeRow"]
       56 GETTABLEKS                       R7 R7 K17 ["getAvatarIcon"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R8 R0 K18 ["Flags"]
       63 GETTABLEKS                       R8 R8 K19 ["getEngineFeatureFolderIconTint"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R9 R0 K18 ["Flags"]
       70 GETTABLEKS                       R9 R9 K20 ["getFFlagExplorerAvatarIcons"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K5 [require]
       75 GETTABLEKS                       R10 R0 K11 ["Util"]
       77 GETTABLEKS                       R10 R10 K21 ["getField"]
       79 CALL                             R9 1 1
       80 GETIMPORT                        R10 K5 [require]
       82 GETTABLEKS                       R11 R0 K6 ["Components"]
       84 GETTABLEKS                       R11 R11 K9 ["ExplorerNodeRow"]
       86 GETTABLEKS                       R11 R11 K22 ["getIsPackageLinkAutoUpdateEnabled"]
       88 CALL                             R10 1 1
       89 GETIMPORT                        R11 K5 [require]
       91 GETTABLEKS                       R12 R0 K23 ["Hooks"]
       93 GETTABLEKS                       R12 R12 K24 ["useVisibleExplorerNodeRange"]
       95 CALL                             R11 1 1
       96 MOVE                             R12 R7
       97 CALL                             R12 0 1
       98 DUPCLOSURE                       R13 K25 [PROTO_0]
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R4
      101 CAPTURE                          VAL R8
      102 CAPTURE                          VAL R6
      103 CAPTURE                          VAL R12
      104 CAPTURE                          VAL R2
      105 CAPTURE                          VAL R10
      106 CAPTURE                          VAL R3
      107 RETURN                           R13 1
