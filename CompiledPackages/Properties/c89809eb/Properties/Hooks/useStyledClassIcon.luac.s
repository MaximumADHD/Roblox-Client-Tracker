PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["isHiddenGui"]
        2 GETTABLEKS                       R2 R1 K1 ["multiple"]
        4 JUMPIF                           R2 ; [+3]
        5 GETTABLEKS                       R2 R1 K2 ["value"]
        7 JUMPIFNOT                        R2 ; [+1]
        8 RETURN                           R1 1
        9 GETTABLEKS                       R2 R0 K3 ["isDisabledScript"]
       11 GETTABLEKS                       R3 R2 K1 ["multiple"]
       13 JUMPIF                           R3 ; [+3]
       14 GETTABLEKS                       R3 R2 K2 ["value"]
       16 JUMPIFNOT                        R3 ; [+1]
       17 RETURN                           R2 1
       18 DUPTABLE                         R3 K4 [{"multiple", "value"}]
       19 LOADB                            R4 0
       20 SETTABLEKS                       R4 R3 K1 ["multiple"]
       22 LOADB                            R4 0
       23 SETTABLEKS                       R4 R3 K2 ["value"]
       25 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getMultipleIcon"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R0 R0 K1 ["Image"]
        6 RETURN                           R0 1

PROTO_2:
        0 JUMPIFEQKNIL                     R0 ; [+6]
        2 GETTABLEKS                       R1 R0 K0 ["className"]
        4 GETTABLEKS                       R1 R1 K1 ["multiple"]
        6 JUMPIFNOT                        R1 ; [+8]
        7 DUPTABLE                         R1 K4 [{"image", "transparency"}]
        8 GETUPVAL                         R2 0
        9 SETTABLEKS                       R2 R1 K2 ["image"]
       11 LOADN                            R2 0
       12 SETTABLEKS                       R2 R1 K3 ["transparency"]
       14 RETURN                           R1 1
       15 GETTABLEKS                       R1 R0 K5 ["isClientScript"]
       17 GETTABLEKS                       R3 R0 K6 ["isHiddenGui"]
       19 GETTABLEKS                       R4 R3 K1 ["multiple"]
       21 JUMPIF                           R4 ; [+3]
       22 GETTABLEKS                       R4 R3 K7 ["value"]
       24 JUMPIFNOT                        R4 ; [+2]
       25 MOVE                             R2 R3
       26 JUMP                             ; [+17]
       27 GETTABLEKS                       R4 R0 K8 ["isDisabledScript"]
       29 GETTABLEKS                       R5 R4 K1 ["multiple"]
       31 JUMPIF                           R5 ; [+3]
       32 GETTABLEKS                       R5 R4 K7 ["value"]
       34 JUMPIFNOT                        R5 ; [+2]
       35 MOVE                             R2 R4
       36 JUMP                             ; [+7]
       37 DUPTABLE                         R2 K9 [{"multiple", "value"}]
       38 LOADB                            R5 0
       39 SETTABLEKS                       R5 R2 K1 ["multiple"]
       41 LOADB                            R5 0
       42 SETTABLEKS                       R5 R2 K7 ["value"]
       44 GETTABLEKS                       R3 R0 K10 ["isAutoUpdatedPackageLink"]
       46 GETTABLEKS                       R4 R1 K1 ["multiple"]
       48 JUMPIF                           R4 ; [+6]
       49 GETTABLEKS                       R4 R2 K1 ["multiple"]
       51 JUMPIF                           R4 ; [+3]
       52 GETTABLEKS                       R4 R3 K1 ["multiple"]
       54 JUMPIFNOT                        R4 ; [+8]
       55 DUPTABLE                         R4 K4 [{"image", "transparency"}]
       56 GETUPVAL                         R5 0
       57 SETTABLEKS                       R5 R4 K2 ["image"]
       59 LOADN                            R5 0
       60 SETTABLEKS                       R5 R4 K3 ["transparency"]
       62 RETURN                           R4 1
       63 DUPTABLE                         R4 K4 [{"image", "transparency"}]
       64 GETTABLEKS                       R6 R1 K7 ["value"]
       66 JUMPIFNOT                        R6 ; [+8]
       67 GETUPVAL                         R5 1
       68 GETTABLEKS                       R5 R5 K11 ["getClassIcon"]
       70 LOADK                            R6 K12 ["LocalScript"]
       71 CALL                             R5 1 1
       72 GETTABLEKS                       R5 R5 K13 ["Image"]
       74 JUMP                             ; [+22]
       75 GETTABLEKS                       R6 R3 K7 ["value"]
       77 JUMPIFNOT                        R6 ; [+9]
       78 GETUPVAL                         R5 2
       79 GETTABLEKS                       R5 R5 K14 ["packages"]
       81 LOADK                            R6 K15 ["PackageLink_AutoupdateOn"]
       82 GETUPVAL                         R7 3
       83 GETTABLEKS                       R7 R7 K16 ["theme"]
       85 CALL                             R5 2 1
       86 JUMP                             ; [+10]
       87 GETUPVAL                         R5 1
       88 GETTABLEKS                       R5 R5 K11 ["getClassIcon"]
       90 GETTABLEKS                       R6 R0 K0 ["className"]
       92 GETTABLEKS                       R6 R6 K7 ["value"]
       94 CALL                             R5 1 1
       95 GETTABLEKS                       R5 R5 K13 ["Image"]
       97 SETTABLEKS                       R5 R4 K2 ["image"]
       99 GETTABLEKS                       R6 R2 K7 ["value"]
      101 JUMPIFNOT                        R6 ; [+6]
      102 GETUPVAL                         R5 4
      103 GETTABLEKS                       R5 R5 K17 ["ClassIcon"]
      105 GETTABLEKS                       R5 R5 K18 ["DisabledTransparency"]
      107 JUMP                             ; [+14]
      108 GETTABLEKS                       R6 R3 K7 ["value"]
      110 JUMPIFNOT                        R6 ; [+10]
      111 GETUPVAL                         R5 5
      112 GETTABLEKS                       R5 R5 K19 ["Color"]
      114 GETTABLEKS                       R5 R5 K20 ["ActionEmphasis"]
      116 GETTABLEKS                       R5 R5 K21 ["Background"]
      118 GETTABLEKS                       R5 R5 K22 ["Transparency"]
      120 JUMP                             ; [+1]
      121 LOADN                            R5 0
      122 SETTABLEKS                       R5 R4 K3 ["transparency"]
      124 RETURN                           R4 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["useContext"]
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K1 ["Context"]
       13 CALL                             R1 1 1
       14 GETUPVAL                         R2 3
       15 CALL                             R2 0 1
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K2 ["useMemo"]
       19 NEWCLOSURE                       R4 P0
       20 CAPTURE                          VAL R0
       21 NEWTABLE                         R5 0 2
       23 GETTABLEKS                       R6 R1 K3 ["theme"]
       25 MOVE                             R7 R0
       26 SETLIST                          R5 R6 2 [1]
       28 CALL                             R3 2 1
       29 GETUPVAL                         R4 4
       30 CALL                             R4 0 1
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R5 R5 K4 ["useCallback"]
       34 NEWCLOSURE                       R6 P1
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R0
       37 CAPTURE                          UPVAL U5
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R4
       41 NEWTABLE                         R7 0 2
       43 GETUPVAL                         R8 6
       44 GETTABLEKS                       R9 R0 K5 ["getClassIcon"]
       46 SETLIST                          R7 R8 2 [1]
       48 CALL                             R5 2 1
       49 DUPTABLE                         R6 K7 [{"getIconProps"}]
       50 SETTABLEKS                       R5 R6 K6 ["getIconProps"]
       52 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Components"]
       13 GETTABLEKS                       R3 R3 K8 ["Contexts"]
       15 GETTABLEKS                       R3 R3 K9 ["ClassIconContext"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R1 K10 ["Foundation"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K11 ["Util"]
       27 GETTABLEKS                       R5 R5 K12 ["ImageUrl"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R0 K13 ["PropertyEditorTypes"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K14 ["PropertyTypes"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K4 ["Parent"]
       44 GETTABLEKS                       R8 R8 K15 ["React"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K7 ["Components"]
       51 GETTABLEKS                       R9 R9 K8 ["Contexts"]
       53 GETTABLEKS                       R9 R9 K16 ["ThemeContext"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K17 ["Hooks"]
       60 GETTABLEKS                       R10 R10 K18 ["useVisualValues"]
       62 CALL                             R9 1 1
       63 GETTABLEKS                       R10 R3 K17 ["Hooks"]
       65 GETTABLEKS                       R10 R10 K19 ["useTokens"]
       67 DUPCLOSURE                       R11 K20 [PROTO_0]
       68 DUPCLOSURE                       R12 K21 [PROTO_3]
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R9
       73 CAPTURE                          VAL R10
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R11
       76 RETURN                           R12 1
