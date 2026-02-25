PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 NEWTABLE                         R1 0 0
        4 LOADN                            R2 1
        5 GETUPVAL                         R7 0
        6 GETTABLEKS                       R6 R7 K0 ["Layout"]
        8 GETTABLEKS                       R3 R6 K1 ["TabLayout"]
       10 LOADNIL                          R4
       11 LOADNIL                          R5
       12 FORGPREP                         R3
       13 GETTABLEKS                       R8 R7 K2 ["Visible"]
       15 JUMPIFNOT                        R8 ; [+34]
       16 GETUPVAL                         R8 1
       17 GETTABLEKS                       R9 R7 K3 ["Identifier"]
       19 CALL                             R8 1 1
       20 GETIMPORT                        R9 K6 [table.freeze]
       22 DUPTABLE                         R10 K8 [{"Identifier", "VisibleTabIndex"}]
       23 GETTABLEKS                       R11 R7 K3 ["Identifier"]
       25 SETTABLEKS                       R11 R10 K3 ["Identifier"]
       27 SETTABLEKS                       R2 R10 K7 ["VisibleTabIndex"]
       29 CALL                             R9 1 1
       30 SETTABLE                         R9 R1 R8
       31 MOVE                             R10 R0
       32 GETIMPORT                        R11 K6 [table.freeze]
       34 DUPTABLE                         R12 K12 [{"Type", "Id", "Text"}]
       35 LOADK                            R13 K13 ["Option"]
       36 SETTABLEKS                       R13 R12 K9 ["Type"]
       38 SETTABLEKS                       R8 R12 K10 ["Id"]
       40 GETUPVAL                         R14 2
       41 GETTABLE                         R13 R14 R8
       42 SETTABLEKS                       R13 R12 K11 ["Text"]
       44 CALL                             R11 1 -1
       45 FASTCALL                         TABLE_INSERT ; [+2]
       46 GETIMPORT                        R9 K15 [table.insert]
       48 CALL                             R9 -1 0
       49 ADDK                             R2 R2 K16 [1]
       50 FORGLOOP                         R3 2 ; [-38]
       52 MOVE                             R4 R0
       53 GETIMPORT                        R5 K6 [table.freeze]
       55 DUPTABLE                         R6 K17 [{"Type", "Id"}]
       56 LOADK                            R7 K18 ["Separator"]
       57 SETTABLEKS                       R7 R6 K9 ["Type"]
       59 LOADK                            R7 K18 ["Separator"]
       60 SETTABLEKS                       R7 R6 K10 ["Id"]
       62 CALL                             R5 1 -1
       63 FASTCALL                         TABLE_INSERT ; [+2]
       64 GETIMPORT                        R3 K15 [table.insert]
       66 CALL                             R3 -1 0
       67 MOVE                             R4 R0
       68 GETIMPORT                        R5 K6 [table.freeze]
       70 DUPTABLE                         R6 K12 [{"Type", "Id", "Text"}]
       71 LOADK                            R7 K13 ["Option"]
       72 SETTABLEKS                       R7 R6 K9 ["Type"]
       74 LOADK                            R7 K19 ["Reserved_Custom"]
       75 SETTABLEKS                       R7 R6 K10 ["Id"]
       77 GETUPVAL                         R7 3
       78 LOADK                            R9 K20 ["Action"]
       79 LOADK                            R10 K21 ["AddTab"]
       80 NAMECALL                         R7 R7 K22 ["getText"]
       82 CALL                             R7 3 1
       83 SETTABLEKS                       R7 R6 K11 ["Text"]
       85 CALL                             R5 1 -1
       86 FASTCALL                         TABLE_INSERT ; [+2]
       87 GETIMPORT                        R3 K15 [table.insert]
       89 CALL                             R3 -1 0
       90 GETIMPORT                        R3 K6 [table.freeze]
       92 MOVE                             R4 R0
       93 CALL                             R3 1 1
       94 GETIMPORT                        R4 K6 [table.freeze]
       96 MOVE                             R5 R1
       97 CALL                             R4 1 -1
       98 RETURN                           R3 -1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Id"]
        2 JUMPIFNOTEQKS                    R1 K1 ["Reserved_Custom"] ; [+4]
        4 GETUPVAL                         R1 0
        5 CALL                             R1 0 0
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R3 R0 K0 ["Id"]
       10 GETTABLE                         R1 R2 R3
       11 GETUPVAL                         R2 2
       12 MOVE                             R3 R1
       13 GETUPVAL                         R5 3
       14 GETTABLEKS                       R4 R5 K2 ["child"]
       16 GETUPVAL                         R5 4
       17 GETTABLEKS                       R6 R0 K0 ["Id"]
       19 CALL                             R4 2 -1
       20 CALL                             R2 -1 0
       21 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R2 K0 ["Definition"]
        5 GETTABLEKS                       R4 R2 K1 ["SelectTab"]
        7 GETUPVAL                         R5 2
        8 CALL                             R5 0 1
        9 JUMPIFNOT                        R5 ; [+4]
       10 GETUPVAL                         R6 3
       11 MOVE                             R7 R5
       12 CALL                             R6 1 1
       13 JUMP                             ; [+1]
       14 LOADNIL                          R6
       15 GETUPVAL                         R8 4
       16 GETTABLEKS                       R7 R8 K2 ["use"]
       18 CALL                             R7 0 1
       19 GETUPVAL                         R8 5
       20 CALL                             R8 0 1
       21 GETUPVAL                         R9 6
       22 NEWCLOSURE                       R10 P0
       23 CAPTURE                          VAL R3
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          VAL R8
       26 CAPTURE                          VAL R7
       27 NEWTABLE                         R11 0 2
       29 MOVE                             R12 R3
       30 GETTABLEKS                       R13 R7 K3 ["locale"]
       32 SETLIST                          R11 R12 2 [1]
       34 CALL                             R9 2 2
       35 GETUPVAL                         R11 7
       36 NEWCLOSURE                       R12 P1
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R10
       39 CAPTURE                          VAL R4
       40 CAPTURE                          UPVAL U8
       41 CAPTURE                          VAL R0
       42 NEWTABLE                         R13 0 3
       44 MOVE                             R14 R10
       45 MOVE                             R15 R4
       46 MOVE                             R16 R0
       47 SETLIST                          R13 R14 3 [1]
       49 CALL                             R11 2 1
       50 GETUPVAL                         R12 9
       51 MOVE                             R13 R0
       52 MOVE                             R14 R9
       53 MOVE                             R15 R6
       54 MOVE                             R16 R11
       55 CALL                             R12 4 1
       56 RETURN                           R12 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K9 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Contexts"]
       27 GETTABLEKS                       R4 R5 K11 ["RibbonDefinition"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K6 ["Packages"]
       34 GETTABLEKS                       R5 R6 K12 ["StudioFoundation"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R6 R4 K13 ["Util"]
       39 GETTABLEKS                       R5 R6 K14 ["StudioUri"]
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R8 R0 K9 ["Src"]
       45 GETTABLEKS                       R7 R8 K15 ["Types"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K5 [require]
       50 GETTABLEKS                       R10 R0 K9 ["Src"]
       52 GETTABLEKS                       R9 R10 K13 ["Util"]
       54 GETTABLEKS                       R8 R9 K16 ["controlsIdentifierToString"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K5 [require]
       59 GETTABLEKS                       R11 R0 K9 ["Src"]
       61 GETTABLEKS                       R10 R11 K17 ["Hooks"]
       63 GETTABLEKS                       R9 R10 K18 ["useActiveTabIdentifier"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K5 [require]
       68 GETTABLEKS                       R12 R0 K9 ["Src"]
       70 GETTABLEKS                       R11 R12 K17 ["Hooks"]
       72 GETTABLEKS                       R10 R11 K19 ["useLocalizedTabNames"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K5 [require]
       77 GETTABLEKS                       R13 R0 K9 ["Src"]
       79 GETTABLEKS                       R12 R13 K17 ["Hooks"]
       81 GETTABLEKS                       R11 R12 K20 ["useSelectionMenuView"]
       83 CALL                             R10 1 1
       84 GETTABLEKS                       R12 R1 K21 ["ContextServices"]
       86 GETTABLEKS                       R11 R12 K22 ["Localization"]
       88 GETTABLEKS                       R12 R2 K23 ["useCallback"]
       90 GETTABLEKS                       R13 R2 K24 ["useContext"]
       92 GETTABLEKS                       R14 R2 K25 ["useMemo"]
       94 DUPCLOSURE                       R15 K26 [PROTO_2]
       95 CAPTURE                          VAL R13
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R8
       98 CAPTURE                          VAL R7
       99 CAPTURE                          VAL R11
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R14
      102 CAPTURE                          VAL R12
      103 CAPTURE                          VAL R5
      104 CAPTURE                          VAL R10
      105 RETURN                           R15 1
