PROTO_0:
        0 LOADB                            R0 0
        1 LOADB                            R1 0
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 3
        4 FORGPREP                         R2
        5 GETUPVAL                         R8 1
        6 GETTABLE                         R7 R8 R6
        7 JUMPIFNOT                        R7 ; [+16]
        8 GETTABLEKS                       R8 R7 K0 ["primaryModifier"]
       10 GETIMPORT                        R9 K4 [Enum.KeyCode.Unknown]
       12 JUMPIFEQ                         R8 R9 ; [+2]
       14 LOADB                            R0 1
       15 GETTABLEKS                       R8 R7 K5 ["secondaryModifier"]
       17 GETIMPORT                        R9 K4 [Enum.KeyCode.Unknown]
       19 JUMPIFEQ                         R8 R9 ; [+2]
       21 LOADB                            R1 1
       22 JUMPIFNOT                        R0 ; [+1]
       23 JUMPIF                           R1 ; [+2]
       24 FORGLOOP                         R2 2 ; [-20]
       26 RETURN                           R0 2

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ROW_ADD_PRIMARY_MODIFIER"]
        3 JUMPIFNOTEQ                      R0 R1 ; [+10]
        5 GETUPVAL                         R1 1
        6 LOADB                            R2 1
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 2
        9 JUMPIFNOT                        R1 ; [+3]
       10 GETUPVAL                         R1 2
       11 LOADB                            R2 1
       12 CALL                             R1 1 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K1 ["ROW_ADD_SECONDARY_MODIFIER"]
       17 JUMPIFNOTEQ                      R0 R1 ; [+10]
       19 GETUPVAL                         R1 3
       20 LOADB                            R2 1
       21 CALL                             R1 1 0
       22 GETUPVAL                         R1 2
       23 JUMPIFNOT                        R1 ; [+3]
       24 GETUPVAL                         R1 2
       25 LOADB                            R2 1
       26 CALL                             R1 1 0
       27 RETURN                           R0 0
       28 GETUPVAL                         R1 0
       29 GETTABLEKS                       R1 R1 K2 ["DELETE"]
       31 JUMPIFNOTEQ                      R0 R1 ; [+17]
       33 GETUPVAL                         R1 4
       34 JUMPIF                           R1 ; [+14]
       35 GETUPVAL                         R1 5
       36 LOADNIL                          R2
       37 LOADNIL                          R3
       38 FORGPREP                         R1
       39 GETUPVAL                         R6 6
       40 GETTABLEKS                       R6 R6 K3 ["updateBinding"]
       42 GETTABLEKS                       R7 R5 K4 ["uuid"]
       44 LOADNIL                          R8
       45 CALL                             R6 2 0
       46 FORGLOOP                         R1 2 ; [-8]
       48 RETURN                           R0 0
       49 GETUPVAL                         R1 7
       50 JUMPIFNOT                        R1 ; [+3]
       51 GETUPVAL                         R1 7
       52 MOVE                             R2 R0
       53 CALL                             R1 1 0
       54 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["useMemo"]
        3 NEWCLOSURE                       R7 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 NEWTABLE                         R8 0 1
        8 MOVE                             R9 R0
        9 SETLIST                          R8 R9 1 [1]
       11 CALL                             R6 2 2
       12 GETUPVAL                         R8 2
       13 GETTABLEKS                       R8 R8 K1 ["useStagnatingState"]
       15 LOADB                            R9 0
       16 NEWTABLE                         R10 0 1
       18 MOVE                             R11 R6
       19 SETLIST                          R10 R11 1 [1]
       21 CALL                             R8 2 2
       22 GETUPVAL                         R10 2
       23 GETTABLEKS                       R10 R10 K1 ["useStagnatingState"]
       25 LOADB                            R11 0
       26 NEWTABLE                         R12 0 1
       28 MOVE                             R13 R7
       29 SETLIST                          R12 R13 1 [1]
       31 CALL                             R10 2 2
       32 OR                               R12 R8 R6
       33 OR                               R13 R10 R7
       34 JUMPIFNOTEQKS                    R5 K2 ["Keycode"] ; [+10]
       36 MOVE                             R15 R3
       37 LOADK                            R16 K2 ["Keycode"]
       38 FASTCALL1                        TOSTRING R4 ; [+3]
       39 MOVE                             R18 R4
       40 GETIMPORT                        R17 K4 [tostring]
       42 CALL                             R17 1 1
       43 CONCAT                           R14 R15 R17
       44 JUMP                             ; [+8]
       45 MOVE                             R15 R3
       46 LOADK                            R16 K5 ["Composite"]
       47 FASTCALL1                        TOSTRING R4 ; [+3]
       48 MOVE                             R18 R4
       49 GETIMPORT                        R17 K4 [tostring]
       51 CALL                             R17 1 1
       52 CONCAT                           R14 R15 R17
       53 JUMPIFNOTEQKS                    R5 K2 ["Keycode"] ; [+3]
       55 OR                               R15 R12 R13
       56 JUMP                             ; [+1]
       57 LOADB                            R15 1
       58 GETUPVAL                         R16 3
       59 MOVE                             R17 R14
       60 MOVE                             R18 R15
       61 CALL                             R16 2 2
       62 GETUPVAL                         R18 0
       63 GETTABLEKS                       R18 R18 K6 ["useContext"]
       65 GETUPVAL                         R19 4
       66 GETTABLEKS                       R19 R19 K7 ["Context"]
       68 CALL                             R18 1 1
       69 GETUPVAL                         R19 0
       70 GETTABLEKS                       R19 R19 K8 ["useCallback"]
       72 NEWCLOSURE                       R20 P1
       73 CAPTURE                          UPVAL U5
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R17
       76 CAPTURE                          VAL R11
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R0
       79 CAPTURE                          VAL R18
       80 CAPTURE                          VAL R2
       81 NEWTABLE                         R21 0 7
       83 MOVE                             R22 R0
       84 MOVE                             R23 R1
       85 MOVE                             R24 R2
       86 MOVE                             R25 R9
       87 MOVE                             R26 R11
       88 MOVE                             R27 R17
       89 MOVE                             R28 R18
       90 SETLIST                          R21 R22 7 [1]
       92 CALL                             R19 2 1
       93 DUPTABLE                         R20 K14 [{"showPrimaryModifier", "showSecondaryModifier", "onEditMenuItemSelected", "expanded", "setExpanded"}]
       94 SETTABLEKS                       R12 R20 K9 ["showPrimaryModifier"]
       96 SETTABLEKS                       R13 R20 K10 ["showSecondaryModifier"]
       98 SETTABLEKS                       R19 R20 K11 ["onEditMenuItemSelected"]
      100 SETTABLEKS                       R16 R20 K12 ["expanded"]
      102 SETTABLEKS                       R17 R20 K13 ["setExpanded"]
      104 RETURN                           R20 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Contexts"]
       27 GETTABLEKS                       R4 R4 K11 ["InputConfiguration"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Types"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K9 ["Src"]
       41 GETTABLEKS                       R6 R6 K13 ["Util"]
       43 GETTABLEKS                       R6 R6 K14 ["getSchemas"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K9 ["Src"]
       50 GETTABLEKS                       R7 R7 K15 ["Hooks"]
       52 GETTABLEKS                       R7 R7 K16 ["useExpanded"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K9 ["Src"]
       59 GETTABLEKS                       R8 R8 K13 ["Util"]
       61 GETTABLEKS                       R8 R8 K17 ["Constants"]
       63 GETTABLEKS                       R8 R8 K18 ["MenuIdentifiers"]
       65 CALL                             R7 1 1
       66 DUPCLOSURE                       R8 K19 [PROTO_2]
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R7
       73 RETURN                           R8 1
