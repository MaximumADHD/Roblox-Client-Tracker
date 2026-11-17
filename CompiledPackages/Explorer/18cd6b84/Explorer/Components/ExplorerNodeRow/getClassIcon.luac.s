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
       44 JUMPIFNOT                        R4 ; [+34]
       45 GETUPVAL                         R4 0
       46 MOVE                             R5 R1
       47 GETUPVAL                         R6 3
       48 GETTABLEKS                       R6 R6 K0 ["key"]
       50 CALL                             R4 2 1
       51 JUMPIFNOT                        R4 ; [+27]
       52 FASTCALL1                        TYPEOF R4 ; [+3]
       53 MOVE                             R8 R4
       54 GETIMPORT                        R7 K2 [typeof]
       56 CALL                             R7 1 1
       57 JUMPIFEQKS                       R7 K14 ["string"] ; [+2]
       59 LOADB                            R6 0 +1
       60 LOADB                            R6 1
       61 FASTCALL2K                       ASSERT R6 K15 ; [+4]
       63 LOADK                            R7 K15 ["explorerIcon is not a string"]
       64 GETIMPORT                        R5 K8 [assert]
       66 CALL                             R5 2 0
       67 DUPTABLE                         R5 K19 [{"Image", "ImageRectOffset", "ImageRectSize"}]
       68 SETTABLEKS                       R4 R5 K16 ["Image"]
       70 GETIMPORT                        R6 K22 [Vector2.zero]
       72 SETTABLEKS                       R6 R5 K17 ["ImageRectOffset"]
       74 GETIMPORT                        R6 K22 [Vector2.zero]
       76 SETTABLEKS                       R6 R5 K18 ["ImageRectSize"]
       78 RETURN                           R5 1
       79 GETUPVAL                         R4 4
       80 CALL                             R4 0 1
       81 JUMPIFNOT                        R4 ; [+7]
       82 GETUPVAL                         R4 5
       83 MOVE                             R5 R1
       84 MOVE                             R6 R2
       85 CALL                             R4 2 1
       86 JUMPIFEQKNIL                     R4 ; [+2]
       88 RETURN                           R4 1
       89 GETUPVAL                         R4 6
       90 JUMPIFNOT                        R4 ; [+10]
       91 GETUPVAL                         R4 7
       92 GETTABLEKS                       R4 R4 K23 ["isTintedFolder"]
       94 MOVE                             R5 R1
       95 CALL                             R4 1 1
       96 JUMPIFNOT                        R4 ; [+4]
       97 GETTABLEKS                       R4 R0 K24 ["getTintableFolderIcon"]
       99 CALL                             R4 0 -1
      100 RETURN                           R4 -1
      101 GETUPVAL                         R4 8
      102 MOVE                             R5 R1
      103 CALL                             R4 1 1
      104 JUMPIFNOT                        R4 ; [+24]
      105 DUPTABLE                         R4 K19 [{"Image", "ImageRectOffset", "ImageRectSize"}]
      106 GETUPVAL                         R5 9
      107 GETTABLEKS                       R5 R5 K25 ["packageLink"]
      109 LOADK                            R6 K26 ["AutoupdateOn"]
      110 LOADK                            R7 K27 ["Light"]
      111 CALL                             R5 2 1
      112 SETTABLEKS                       R5 R4 K16 ["Image"]
      114 GETIMPORT                        R5 K29 [Vector2.new]
      116 LOADN                            R6 0
      117 LOADN                            R7 0
      118 CALL                             R5 2 1
      119 SETTABLEKS                       R5 R4 K17 ["ImageRectOffset"]
      121 GETIMPORT                        R5 K29 [Vector2.new]
      123 LOADN                            R6 16
      124 LOADN                            R7 16
      125 CALL                             R5 2 1
      126 SETTABLEKS                       R5 R4 K18 ["ImageRectSize"]
      128 RETURN                           R4 1
      129 GETTABLEKS                       R4 R0 K12 ["getClassIcon"]
      131 GETTABLEKS                       R5 R1 K30 ["datum"]
      133 GETTABLEKS                       R5 R5 K31 ["className"]
      135 CALL                             R4 1 -1
      136 RETURN                           R4 -1

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
       27 GETTABLEKS                       R4 R0 K11 ["Fields"]
       29 GETTABLEKS                       R4 R4 K12 ["AllFields"]
       31 GETTABLEKS                       R4 R4 K13 ["ExplorerIcon"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K14 ["Util"]
       38 GETTABLEKS                       R5 R5 K15 ["ImageUrl"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K11 ["Fields"]
       45 GETTABLEKS                       R6 R6 K12 ["AllFields"]
       47 GETTABLEKS                       R6 R6 K16 ["ScriptState"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K6 ["Components"]
       54 GETTABLEKS                       R7 R7 K7 ["Contexts"]
       56 GETTABLEKS                       R7 R7 K17 ["ThemeContext"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R8 R0 K6 ["Components"]
       63 GETTABLEKS                       R8 R8 K9 ["ExplorerNodeRow"]
       65 GETTABLEKS                       R8 R8 K18 ["getAvatarIcon"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R9 R0 K19 ["Flags"]
       72 GETTABLEKS                       R9 R9 K20 ["getEngineFeatureExplorerIconContent"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R10 R0 K19 ["Flags"]
       79 GETTABLEKS                       R10 R10 K21 ["getEngineFeatureFolderIconTint"]
       81 CALL                             R9 1 1
       82 GETIMPORT                        R10 K5 [require]
       84 GETTABLEKS                       R11 R0 K19 ["Flags"]
       86 GETTABLEKS                       R11 R11 K22 ["getFFlagExplorerAvatarIcons"]
       88 CALL                             R10 1 1
       89 GETIMPORT                        R11 K5 [require]
       91 GETTABLEKS                       R12 R0 K14 ["Util"]
       93 GETTABLEKS                       R12 R12 K23 ["getField"]
       95 CALL                             R11 1 1
       96 GETIMPORT                        R12 K5 [require]
       98 GETTABLEKS                       R13 R0 K6 ["Components"]
      100 GETTABLEKS                       R13 R13 K9 ["ExplorerNodeRow"]
      102 GETTABLEKS                       R13 R13 K24 ["getIsPackageLinkAutoUpdateEnabled"]
      104 CALL                             R12 1 1
      105 GETIMPORT                        R13 K5 [require]
      107 GETTABLEKS                       R14 R0 K25 ["Hooks"]
      109 GETTABLEKS                       R14 R14 K26 ["useVisibleExplorerNodeRange"]
      111 CALL                             R13 1 1
      112 MOVE                             R14 R9
      113 CALL                             R14 0 1
      114 MOVE                             R15 R8
      115 CALL                             R15 0 1
      116 DUPCLOSURE                       R16 K27 [PROTO_0]
      117 CAPTURE                          VAL R11
      118 CAPTURE                          VAL R5
      119 CAPTURE                          VAL R15
      120 CAPTURE                          VAL R3
      121 CAPTURE                          VAL R10
      122 CAPTURE                          VAL R7
      123 CAPTURE                          VAL R14
      124 CAPTURE                          VAL R2
      125 CAPTURE                          VAL R12
      126 CAPTURE                          VAL R4
      127 RETURN                           R16 1
