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
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 -1
        4 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 -1
        4 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["CANCEL"]
        3 JUMPIFNOTEQ                      R0 R1 ; [+5]
        5 GETUPVAL                         R1 1
        6 LOADB                            R2 0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K1 ["DELETE"]
       12 JUMPIFNOTEQ                      R0 R1 ; [+19]
       14 GETUPVAL                         R1 2
       15 LOADNIL                          R2
       16 LOADNIL                          R3
       17 FORGPREP                         R1
       18 GETUPVAL                         R6 3
       19 GETTABLEKS                       R6 R6 K2 ["updateBinding"]
       21 GETTABLEKS                       R7 R5 K3 ["uuid"]
       23 DUPTABLE                         R8 K5 [{"primaryModifier"}]
       24 GETIMPORT                        R9 K9 [Enum.KeyCode.Unknown]
       26 SETTABLEKS                       R9 R8 K4 ["primaryModifier"]
       28 CALL                             R6 2 0
       29 FORGLOOP                         R1 2 ; [-12]
       31 RETURN                           R0 0
       32 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["CANCEL"]
        3 JUMPIFNOTEQ                      R0 R1 ; [+5]
        5 GETUPVAL                         R1 1
        6 LOADB                            R2 0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K1 ["DELETE"]
       12 JUMPIFNOTEQ                      R0 R1 ; [+19]
       14 GETUPVAL                         R1 2
       15 LOADNIL                          R2
       16 LOADNIL                          R3
       17 FORGPREP                         R1
       18 GETUPVAL                         R6 3
       19 GETTABLEKS                       R6 R6 K2 ["updateBinding"]
       21 GETTABLEKS                       R7 R5 K3 ["uuid"]
       23 DUPTABLE                         R8 K5 [{"secondaryModifier"}]
       24 GETIMPORT                        R9 K9 [Enum.KeyCode.Unknown]
       26 SETTABLEKS                       R9 R8 K4 ["secondaryModifier"]
       28 CALL                             R6 2 0
       29 FORGLOOP                         R1 2 ; [-12]
       31 RETURN                           R0 0
       32 RETURN                           R0 0

PROTO_5:
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

PROTO_6:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["useContext"]
        3 GETUPVAL                         R7 1
        4 GETTABLEKS                       R7 R7 K1 ["Context"]
        6 CALL                             R6 1 1
        7 GETUPVAL                         R7 0
        8 GETTABLEKS                       R7 R7 K2 ["useMemo"]
       10 NEWCLOSURE                       R8 P0
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          VAL R0
       13 NEWTABLE                         R9 0 1
       15 MOVE                             R10 R0
       16 SETLIST                          R9 R10 1 [1]
       18 CALL                             R7 2 2
       19 GETUPVAL                         R9 3
       20 GETTABLEKS                       R9 R9 K3 ["useStagnatingState"]
       22 LOADB                            R10 0
       23 NEWTABLE                         R11 0 1
       25 MOVE                             R12 R7
       26 SETLIST                          R11 R12 1 [1]
       28 CALL                             R9 2 2
       29 GETUPVAL                         R11 3
       30 GETTABLEKS                       R11 R11 K3 ["useStagnatingState"]
       32 LOADB                            R12 0
       33 NEWTABLE                         R13 0 1
       35 MOVE                             R14 R8
       36 SETLIST                          R13 R14 1 [1]
       38 CALL                             R11 2 2
       39 OR                               R13 R9 R7
       40 OR                               R14 R11 R8
       41 JUMPIFNOTEQKS                    R5 K4 ["Keycode"] ; [+10]
       43 MOVE                             R16 R3
       44 LOADK                            R17 K4 ["Keycode"]
       45 FASTCALL1                        TOSTRING R4 ; [+3]
       46 MOVE                             R19 R4
       47 GETIMPORT                        R18 K6 [tostring]
       49 CALL                             R18 1 1
       50 CONCAT                           R15 R16 R18
       51 JUMP                             ; [+8]
       52 MOVE                             R16 R3
       53 LOADK                            R17 K7 ["Composite"]
       54 FASTCALL1                        TOSTRING R4 ; [+3]
       55 MOVE                             R19 R4
       56 GETIMPORT                        R18 K6 [tostring]
       58 CALL                             R18 1 1
       59 CONCAT                           R15 R16 R18
       60 JUMPIFNOTEQKS                    R5 K4 ["Keycode"] ; [+3]
       62 OR                               R16 R13 R14
       63 JUMP                             ; [+1]
       64 LOADB                            R16 1
       65 GETUPVAL                         R17 4
       66 MOVE                             R18 R15
       67 MOVE                             R19 R16
       68 CALL                             R17 2 2
       69 GETUPVAL                         R19 0
       70 GETTABLEKS                       R19 R19 K0 ["useContext"]
       72 GETUPVAL                         R20 5
       73 GETTABLEKS                       R20 R20 K1 ["Context"]
       75 CALL                             R19 1 1
       76 GETUPVAL                         R20 0
       77 GETTABLEKS                       R20 R20 K2 ["useMemo"]
       79 NEWCLOSURE                       R21 P1
       80 CAPTURE                          UPVAL U6
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R9
       83 NEWTABLE                         R22 0 2
       85 MOVE                             R23 R9
       86 MOVE                             R24 R6
       87 SETLIST                          R22 R23 2 [1]
       89 CALL                             R20 2 1
       90 GETUPVAL                         R21 0
       91 GETTABLEKS                       R21 R21 K2 ["useMemo"]
       93 NEWCLOSURE                       R22 P2
       94 CAPTURE                          UPVAL U6
       95 CAPTURE                          VAL R6
       96 CAPTURE                          VAL R11
       97 NEWTABLE                         R23 0 2
       99 MOVE                             R24 R11
      100 MOVE                             R25 R6
      101 SETLIST                          R23 R24 2 [1]
      103 CALL                             R21 2 1
      104 GETUPVAL                         R22 3
      105 GETTABLEKS                       R22 R22 K8 ["useEventCallback"]
      107 NEWCLOSURE                       R23 P3
      108 CAPTURE                          UPVAL U7
      109 CAPTURE                          VAL R10
      110 CAPTURE                          VAL R0
      111 CAPTURE                          VAL R19
      112 CALL                             R22 1 1
      113 GETUPVAL                         R23 3
      114 GETTABLEKS                       R23 R23 K8 ["useEventCallback"]
      116 NEWCLOSURE                       R24 P4
      117 CAPTURE                          UPVAL U7
      118 CAPTURE                          VAL R12
      119 CAPTURE                          VAL R0
      120 CAPTURE                          VAL R19
      121 CALL                             R23 1 1
      122 GETUPVAL                         R24 0
      123 GETTABLEKS                       R24 R24 K9 ["useCallback"]
      125 NEWCLOSURE                       R25 P5
      126 CAPTURE                          UPVAL U7
      127 CAPTURE                          VAL R10
      128 CAPTURE                          VAL R18
      129 CAPTURE                          VAL R12
      130 CAPTURE                          VAL R1
      131 CAPTURE                          VAL R0
      132 CAPTURE                          VAL R19
      133 CAPTURE                          VAL R2
      134 NEWTABLE                         R26 0 7
      136 MOVE                             R27 R0
      137 MOVE                             R28 R1
      138 MOVE                             R29 R2
      139 MOVE                             R30 R10
      140 MOVE                             R31 R12
      141 MOVE                             R32 R18
      142 MOVE                             R33 R19
      143 SETLIST                          R26 R27 7 [1]
      145 CALL                             R24 2 1
      146 DUPTABLE                         R25 K19 [{"showPrimaryModifier", "showSecondaryModifier", "primaryModifierMenu", "secondaryModifierMenu", "onPrimaryModifierMenuItemSelected", "onSecondaryModifierMenuItemSelected", "onEditMenuItemSelected", "expanded", "setExpanded"}]
      147 SETTABLEKS                       R13 R25 K10 ["showPrimaryModifier"]
      149 SETTABLEKS                       R14 R25 K11 ["showSecondaryModifier"]
      151 SETTABLEKS                       R20 R25 K12 ["primaryModifierMenu"]
      153 SETTABLEKS                       R21 R25 K13 ["secondaryModifierMenu"]
      155 SETTABLEKS                       R22 R25 K14 ["onPrimaryModifierMenuItemSelected"]
      157 SETTABLEKS                       R23 R25 K15 ["onSecondaryModifierMenuItemSelected"]
      159 SETTABLEKS                       R24 R25 K16 ["onEditMenuItemSelected"]
      161 SETTABLEKS                       R17 R25 K17 ["expanded"]
      163 SETTABLEKS                       R18 R25 K18 ["setExpanded"]
      165 RETURN                           R25 1

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
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["StudioFoundation"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["Contexts"]
       37 GETTABLEKS                       R5 R5 K12 ["Localization"]
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R7 R0 K13 ["Src"]
       43 GETTABLEKS                       R7 R7 K11 ["Contexts"]
       45 GETTABLEKS                       R7 R7 K14 ["InputConfiguration"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K5 [require]
       50 GETTABLEKS                       R8 R0 K13 ["Src"]
       52 GETTABLEKS                       R8 R8 K15 ["Types"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K5 [require]
       57 GETTABLEKS                       R9 R0 K13 ["Src"]
       59 GETTABLEKS                       R9 R9 K16 ["Util"]
       61 GETTABLEKS                       R9 R9 K17 ["getSchemas"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K5 [require]
       66 GETTABLEKS                       R10 R0 K13 ["Src"]
       68 GETTABLEKS                       R10 R10 K18 ["Hooks"]
       70 GETTABLEKS                       R10 R10 K19 ["useExpanded"]
       72 CALL                             R9 1 1
       73 GETIMPORT                        R10 K5 [require]
       75 GETTABLEKS                       R11 R0 K13 ["Src"]
       77 GETTABLEKS                       R11 R11 K16 ["Util"]
       79 GETTABLEKS                       R11 R11 K20 ["Menus"]
       81 GETTABLEKS                       R11 R11 K21 ["getModifierMenu"]
       83 CALL                             R10 1 1
       84 GETIMPORT                        R11 K5 [require]
       86 GETTABLEKS                       R12 R0 K13 ["Src"]
       88 GETTABLEKS                       R12 R12 K16 ["Util"]
       90 GETTABLEKS                       R12 R12 K22 ["Constants"]
       92 GETTABLEKS                       R12 R12 K23 ["MenuIdentifiers"]
       94 CALL                             R11 1 1
       95 DUPCLOSURE                       R12 K24 [PROTO_6]
       96 CAPTURE                          VAL R1
       97 CAPTURE                          VAL R5
       98 CAPTURE                          VAL R8
       99 CAPTURE                          VAL R2
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R6
      102 CAPTURE                          VAL R10
      103 CAPTURE                          VAL R11
      104 RETURN                           R12 1
