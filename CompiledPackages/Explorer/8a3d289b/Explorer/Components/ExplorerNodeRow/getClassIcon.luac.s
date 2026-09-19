PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K0 ["key"]
        5 CALL                             R2 2 1
        6 JUMPIFEQKNIL                     R2 ; [+36]
        8 LOADB                            R4 0
        9 FASTCALL1                        TYPEOF R2 ; [+3]
       10 MOVE                             R6 R2
       11 GETIMPORT                        R5 K2 [typeof]
       13 CALL                             R5 1 1
       14 JUMPIFNOTEQKS                    R5 K3 ["table"] ; [+11]
       16 GETTABLEKS                       R6 R2 K4 ["RunContext"]
       18 FASTCALL1                        TYPEOF R6 ; [+2]
       19 GETIMPORT                        R5 K2 [typeof]
       21 CALL                             R5 1 1
       22 JUMPIFEQKS                       R5 K5 ["EnumItem"] ; [+2]
       24 LOADB                            R4 0 +1
       25 LOADB                            R4 1
       26 FASTCALL2K                       ASSERT R4 K6 ; [+4]
       28 LOADK                            R5 K6 ["Expected scriptState to be a table with an EnumItem field"]
       29 GETIMPORT                        R3 K8 [assert]
       31 CALL                             R3 2 0
       32 GETTABLEKS                       R3 R2 K4 ["RunContext"]
       34 GETIMPORT                        R4 K11 [Enum.RunContext.Client]
       36 JUMPIFNOTEQ                      R3 R4 ; [+6]
       38 GETTABLEKS                       R3 R0 K12 ["getClassIcon"]
       40 LOADK                            R4 K13 ["LocalScript"]
       41 CALL                             R3 1 -1
       42 RETURN                           R3 -1
       43 GETUPVAL                         R3 2
       44 JUMPIFNOT                        R3 ; [+10]
       45 GETUPVAL                         R3 3
       46 GETTABLEKS                       R3 R3 K14 ["isTintedFolder"]
       48 MOVE                             R4 R1
       49 CALL                             R3 1 1
       50 JUMPIFNOT                        R3 ; [+4]
       51 GETTABLEKS                       R3 R0 K15 ["getTintableFolderIcon"]
       53 CALL                             R3 0 -1
       54 RETURN                           R3 -1
       55 GETUPVAL                         R3 4
       56 MOVE                             R4 R1
       57 CALL                             R3 1 1
       58 JUMPIFNOT                        R3 ; [+24]
       59 DUPTABLE                         R3 K19 [{"Image", "ImageRectOffset", "ImageRectSize"}]
       60 GETUPVAL                         R4 5
       61 GETTABLEKS                       R4 R4 K20 ["packageLink"]
       63 LOADK                            R5 K21 ["AutoupdateOn"]
       64 LOADK                            R6 K22 ["Light"]
       65 CALL                             R4 2 1
       66 SETTABLEKS                       R4 R3 K16 ["Image"]
       68 GETIMPORT                        R4 K25 [Vector2.new]
       70 LOADN                            R5 0
       71 LOADN                            R6 0
       72 CALL                             R4 2 1
       73 SETTABLEKS                       R4 R3 K17 ["ImageRectOffset"]
       75 GETIMPORT                        R4 K25 [Vector2.new]
       77 LOADN                            R5 16
       78 LOADN                            R6 16
       79 CALL                             R4 2 1
       80 SETTABLEKS                       R4 R3 K18 ["ImageRectSize"]
       82 RETURN                           R3 1
       83 GETTABLEKS                       R3 R0 K12 ["getClassIcon"]
       85 GETTABLEKS                       R4 R1 K26 ["datum"]
       87 GETTABLEKS                       R4 R4 K27 ["className"]
       89 CALL                             R3 1 -1
       90 RETURN                           R3 -1

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
       43 GETTABLEKS                       R6 R0 K16 ["Flags"]
       45 GETTABLEKS                       R6 R6 K17 ["getEngineFeatureFolderIconTint"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K11 ["Util"]
       52 GETTABLEKS                       R7 R7 K18 ["getField"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K6 ["Components"]
       59 GETTABLEKS                       R8 R8 K9 ["ExplorerNodeRow"]
       61 GETTABLEKS                       R8 R8 K19 ["getIsPackageLinkAutoUpdateEnabled"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K20 ["Hooks"]
       68 GETTABLEKS                       R9 R9 K21 ["useVisibleExplorerNodeRange"]
       70 CALL                             R8 1 1
       71 MOVE                             R9 R5
       72 CALL                             R9 0 1
       73 DUPCLOSURE                       R10 K22 [PROTO_0]
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R3
       80 RETURN                           R10 1
