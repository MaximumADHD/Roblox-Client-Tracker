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
       44 MOVE                             R4 R1
       45 CALL                             R3 1 1
       46 JUMPIFNOT                        R3 ; [+24]
       47 DUPTABLE                         R3 K17 [{"Image", "ImageRectOffset", "ImageRectSize"}]
       48 GETUPVAL                         R4 3
       49 GETTABLEKS                       R4 R4 K18 ["packageLink"]
       51 LOADK                            R5 K19 ["AutoupdateOn"]
       52 LOADK                            R6 K20 ["Light"]
       53 CALL                             R4 2 1
       54 SETTABLEKS                       R4 R3 K14 ["Image"]
       56 GETIMPORT                        R4 K23 [Vector2.new]
       58 LOADN                            R5 0
       59 LOADN                            R6 0
       60 CALL                             R4 2 1
       61 SETTABLEKS                       R4 R3 K15 ["ImageRectOffset"]
       63 GETIMPORT                        R4 K23 [Vector2.new]
       65 LOADN                            R5 16
       66 LOADN                            R6 16
       67 CALL                             R4 2 1
       68 SETTABLEKS                       R4 R3 K16 ["ImageRectSize"]
       70 RETURN                           R3 1
       71 GETTABLEKS                       R3 R0 K12 ["getClassIcon"]
       73 GETTABLEKS                       R4 R1 K24 ["datum"]
       75 GETTABLEKS                       R4 R4 K25 ["className"]
       77 CALL                             R3 1 -1
       78 RETURN                           R3 -1

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
       18 GETTABLEKS                       R3 R0 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["ImageUrl"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Fields"]
       27 GETTABLEKS                       R4 R4 K12 ["AllFields"]
       29 GETTABLEKS                       R4 R4 K13 ["ScriptState"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K9 ["Util"]
       36 GETTABLEKS                       R5 R5 K14 ["getField"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K6 ["Components"]
       43 GETTABLEKS                       R6 R6 K15 ["ExplorerNodeRow"]
       45 GETTABLEKS                       R6 R6 K16 ["getIsPackageLinkAutoUpdateEnabled"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K17 ["Hooks"]
       52 GETTABLEKS                       R7 R7 K18 ["useVisibleExplorerNodeRange"]
       54 CALL                             R6 1 1
       55 DUPCLOSURE                       R7 K19 [PROTO_0]
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R2
       60 RETURN                           R7 1
