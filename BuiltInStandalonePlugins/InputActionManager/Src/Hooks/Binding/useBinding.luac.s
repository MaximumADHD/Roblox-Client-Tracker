PROTO_0:
        0 LOADB                            R0 0
        1 LOADB                            R1 0
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 3
        4 FORGPREP                         R2
        5 GETUPVAL                         R8 1
        6 GETTABLE                         R7 R8 R6
        7 JUMPIFNOT                        R7 ; [+23]
        8 GETTABLEKS                       R8 R7 K0 ["primaryModifier"]
       10 GETIMPORT                        R9 K4 [Enum.KeyCode.None]
       12 JUMPIFNOTEQ                      R8 R9 ; [+8]
       14 GETUPVAL                         R8 2
       15 CALL                             R8 0 1
       16 JUMPIFNOT                        R8 ; [+5]
       17 GETTABLEKS                       R8 R7 K5 ["uiModifier"]
       19 JUMPIFEQKNIL                     R8 ; [+2]
       21 LOADB                            R0 1
       22 GETTABLEKS                       R8 R7 K6 ["secondaryModifier"]
       24 GETIMPORT                        R9 K4 [Enum.KeyCode.None]
       26 JUMPIFEQ                         R8 R9 ; [+2]
       28 LOADB                            R1 1
       29 JUMPIFNOT                        R0 ; [+1]
       30 JUMPIF                           R1 ; [+2]
       31 FORGLOOP                         R2 2 ; [-27]
       33 RETURN                           R0 2

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
       12 JUMPIFNOTEQ                      R0 R1 ; [+30]
       14 LOADB                            R1 0
       15 GETUPVAL                         R2 2
       16 LOADNIL                          R3
       17 LOADNIL                          R4
       18 FORGPREP                         R2
       19 GETUPVAL                         R7 3
       20 GETTABLEKS                       R7 R7 K2 ["updateBinding"]
       22 GETTABLEKS                       R8 R6 K3 ["uuid"]
       24 DUPTABLE                         R9 K6 [{"primaryModifier", "uiModifier"}]
       25 GETIMPORT                        R10 K10 [Enum.KeyCode.None]
       27 SETTABLEKS                       R10 R9 K4 ["primaryModifier"]
       29 GETUPVAL                         R11 4
       30 CALL                             R11 0 1
       31 JUMPIFNOT                        R11 ; [+2]
       32 DUPTABLE                         R10 K14 [{["name"] = "", ["uuid"] = "", ["type"] = ""}]
       33 JUMP                             ; [+1]
       34 LOADNIL                          R10
       35 SETTABLEKS                       R10 R9 K5 ["uiModifier"]
       37 MOVE                             R10 R1
       38 CALL                             R7 3 0
       39 LOADB                            R1 1
       40 FORGLOOP                         R2 2 ; [-22]
       42 RETURN                           R0 0
       43 RETURN                           R0 0

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
       12 JUMPIFNOTEQ                      R0 R1 ; [+22]
       14 LOADB                            R1 0
       15 GETUPVAL                         R2 2
       16 LOADNIL                          R3
       17 LOADNIL                          R4
       18 FORGPREP                         R2
       19 GETUPVAL                         R7 3
       20 GETTABLEKS                       R7 R7 K2 ["updateBinding"]
       22 GETTABLEKS                       R8 R6 K3 ["uuid"]
       24 DUPTABLE                         R9 K5 [{"secondaryModifier"}]
       25 GETIMPORT                        R10 K9 [Enum.KeyCode.None]
       27 SETTABLEKS                       R10 R9 K4 ["secondaryModifier"]
       29 MOVE                             R10 R1
       30 CALL                             R7 3 0
       31 LOADB                            R1 1
       32 FORGLOOP                         R2 2 ; [-14]
       34 RETURN                           R0 0
       35 RETURN                           R0 0

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
       31 JUMPIFNOTEQ                      R0 R1 ; [+20]
       33 GETUPVAL                         R1 4
       34 JUMPIF                           R1 ; [+17]
       35 LOADB                            R1 0
       36 GETUPVAL                         R2 5
       37 LOADNIL                          R3
       38 LOADNIL                          R4
       39 FORGPREP                         R2
       40 GETUPVAL                         R7 6
       41 GETTABLEKS                       R7 R7 K3 ["updateBinding"]
       43 GETTABLEKS                       R8 R6 K4 ["uuid"]
       45 LOADNIL                          R9
       46 MOVE                             R10 R1
       47 CALL                             R7 3 0
       48 LOADB                            R1 1
       49 FORGLOOP                         R2 2 ; [-10]
       51 RETURN                           R0 0
       52 GETUPVAL                         R1 7
       53 JUMPIFNOT                        R1 ; [+3]
       54 GETUPVAL                         R1 7
       55 MOVE                             R2 R0
       56 CALL                             R1 1 0
       57 RETURN                           R0 0

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
       13 CAPTURE                          UPVAL U3
       14 NEWTABLE                         R9 0 1
       16 MOVE                             R10 R0
       17 SETLIST                          R9 R10 1 [1]
       19 CALL                             R7 2 2
       20 GETUPVAL                         R9 4
       21 GETTABLEKS                       R9 R9 K3 ["useStagnatingState"]
       23 LOADB                            R10 0
       24 NEWTABLE                         R11 0 1
       26 MOVE                             R12 R7
       27 SETLIST                          R11 R12 1 [1]
       29 CALL                             R9 2 2
       30 GETUPVAL                         R11 4
       31 GETTABLEKS                       R11 R11 K3 ["useStagnatingState"]
       33 LOADB                            R12 0
       34 NEWTABLE                         R13 0 1
       36 MOVE                             R14 R8
       37 SETLIST                          R13 R14 1 [1]
       39 CALL                             R11 2 2
       40 OR                               R13 R9 R7
       41 OR                               R14 R11 R8
       42 JUMPIFNOTEQKS                    R5 K4 ["Keycode"] ; [+10]
       44 MOVE                             R16 R3
       45 LOADK                            R17 K4 ["Keycode"]
       46 FASTCALL1                        TOSTRING R4 ; [+3]
       47 MOVE                             R19 R4
       48 GETIMPORT                        R18 K6 [tostring]
       50 CALL                             R18 1 1
       51 CONCAT                           R15 R16 R18
       52 JUMP                             ; [+8]
       53 MOVE                             R16 R3
       54 LOADK                            R17 K7 ["Composite"]
       55 FASTCALL1                        TOSTRING R4 ; [+3]
       56 MOVE                             R19 R4
       57 GETIMPORT                        R18 K6 [tostring]
       59 CALL                             R18 1 1
       60 CONCAT                           R15 R16 R18
       61 JUMPIFNOTEQKS                    R5 K4 ["Keycode"] ; [+3]
       63 OR                               R16 R13 R14
       64 JUMP                             ; [+1]
       65 LOADB                            R16 1
       66 GETUPVAL                         R17 5
       67 MOVE                             R18 R15
       68 MOVE                             R19 R16
       69 CALL                             R17 2 2
       70 GETUPVAL                         R19 0
       71 GETTABLEKS                       R19 R19 K0 ["useContext"]
       73 GETUPVAL                         R20 6
       74 GETTABLEKS                       R20 R20 K1 ["Context"]
       76 CALL                             R19 1 1
       77 GETUPVAL                         R20 0
       78 GETTABLEKS                       R20 R20 K2 ["useMemo"]
       80 NEWCLOSURE                       R21 P1
       81 CAPTURE                          UPVAL U7
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R9
       84 NEWTABLE                         R22 0 2
       86 MOVE                             R23 R9
       87 MOVE                             R24 R6
       88 SETLIST                          R22 R23 2 [1]
       90 CALL                             R20 2 1
       91 GETUPVAL                         R21 0
       92 GETTABLEKS                       R21 R21 K2 ["useMemo"]
       94 NEWCLOSURE                       R22 P2
       95 CAPTURE                          UPVAL U7
       96 CAPTURE                          VAL R6
       97 CAPTURE                          VAL R11
       98 NEWTABLE                         R23 0 2
      100 MOVE                             R24 R11
      101 MOVE                             R25 R6
      102 SETLIST                          R23 R24 2 [1]
      104 CALL                             R21 2 1
      105 GETUPVAL                         R22 4
      106 GETTABLEKS                       R22 R22 K8 ["useEventCallback"]
      108 NEWCLOSURE                       R23 P3
      109 CAPTURE                          UPVAL U8
      110 CAPTURE                          VAL R10
      111 CAPTURE                          VAL R0
      112 CAPTURE                          VAL R19
      113 CAPTURE                          UPVAL U3
      114 CALL                             R22 1 1
      115 GETUPVAL                         R23 4
      116 GETTABLEKS                       R23 R23 K8 ["useEventCallback"]
      118 NEWCLOSURE                       R24 P4
      119 CAPTURE                          UPVAL U8
      120 CAPTURE                          VAL R12
      121 CAPTURE                          VAL R0
      122 CAPTURE                          VAL R19
      123 CALL                             R23 1 1
      124 GETUPVAL                         R24 0
      125 GETTABLEKS                       R24 R24 K9 ["useCallback"]
      127 NEWCLOSURE                       R25 P5
      128 CAPTURE                          UPVAL U8
      129 CAPTURE                          VAL R10
      130 CAPTURE                          VAL R18
      131 CAPTURE                          VAL R12
      132 CAPTURE                          VAL R1
      133 CAPTURE                          VAL R0
      134 CAPTURE                          VAL R19
      135 CAPTURE                          VAL R2
      136 NEWTABLE                         R26 0 7
      138 MOVE                             R27 R0
      139 MOVE                             R28 R1
      140 MOVE                             R29 R2
      141 MOVE                             R30 R10
      142 MOVE                             R31 R12
      143 MOVE                             R32 R18
      144 MOVE                             R33 R19
      145 SETLIST                          R26 R27 7 [1]
      147 CALL                             R24 2 1
      148 DUPTABLE                         R25 K19 [{"showPrimaryModifier", "showSecondaryModifier", "primaryModifierMenu", "secondaryModifierMenu", "onPrimaryModifierMenuItemSelected", "onSecondaryModifierMenuItemSelected", "onEditMenuItemSelected", "expanded", "setExpanded"}]
      149 SETTABLEKS                       R13 R25 K10 ["showPrimaryModifier"]
      151 SETTABLEKS                       R14 R25 K11 ["showSecondaryModifier"]
      153 SETTABLEKS                       R20 R25 K12 ["primaryModifierMenu"]
      155 SETTABLEKS                       R21 R25 K13 ["secondaryModifierMenu"]
      157 SETTABLEKS                       R22 R25 K14 ["onPrimaryModifierMenuItemSelected"]
      159 SETTABLEKS                       R23 R25 K15 ["onSecondaryModifierMenuItemSelected"]
      161 SETTABLEKS                       R24 R25 K16 ["onEditMenuItemSelected"]
      163 SETTABLEKS                       R17 R25 K17 ["expanded"]
      165 SETTABLEKS                       R18 R25 K18 ["setExpanded"]
      167 RETURN                           R25 1

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
       95 GETTABLEKS                       R12 R0 K13 ["Src"]
       97 GETTABLEKS                       R12 R12 K24 ["Flags"]
       99 GETIMPORT                        R13 K5 [require]
      101 GETTABLEKS                       R14 R12 K25 ["getFFlagIAMUIModifier"]
      103 CALL                             R13 1 1
      104 DUPCLOSURE                       R14 K26 [PROTO_6]
      105 CAPTURE                          VAL R1
      106 CAPTURE                          VAL R5
      107 CAPTURE                          VAL R8
      108 CAPTURE                          VAL R13
      109 CAPTURE                          VAL R2
      110 CAPTURE                          VAL R9
      111 CAPTURE                          VAL R6
      112 CAPTURE                          VAL R10
      113 CAPTURE                          VAL R11
      114 RETURN                           R14 1
