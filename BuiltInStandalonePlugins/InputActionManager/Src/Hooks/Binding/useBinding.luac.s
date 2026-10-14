PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 -1
        4 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 -1
        4 RETURN                           R0 -1

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
       12 JUMPIFNOTEQ                      R0 R1 ; [+25]
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
       29 DUPTABLE                         R10 K14 [{["name"] = "", ["uuid"] = "", ["type"] = ""}]
       30 SETTABLEKS                       R10 R9 K5 ["uiModifier"]
       32 MOVE                             R10 R1
       33 CALL                             R7 3 0
       34 LOADB                            R1 1
       35 FORGLOOP                         R2 2 ; [-17]
       37 RETURN                           R0 0
       38 RETURN                           R0 0

PROTO_5:
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

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["DELETE"]
        3 JUMPIFNOTEQ                      R0 R1 ; [+20]
        5 GETUPVAL                         R1 1
        6 JUMPIF                           R1 ; [+17]
        7 LOADB                            R1 0
        8 GETUPVAL                         R2 2
        9 LOADNIL                          R3
       10 LOADNIL                          R4
       11 FORGPREP                         R2
       12 GETUPVAL                         R7 3
       13 GETTABLEKS                       R7 R7 K1 ["updateBinding"]
       15 GETTABLEKS                       R8 R6 K2 ["uuid"]
       17 LOADNIL                          R9
       18 MOVE                             R10 R1
       19 CALL                             R7 3 0
       20 LOADB                            R1 1
       21 FORGLOOP                         R2 2 ; [-10]
       23 RETURN                           R0 0
       24 GETUPVAL                         R1 4
       25 JUMPIFNOT                        R1 ; [+3]
       26 GETUPVAL                         R1 4
       27 MOVE                             R2 R0
       28 CALL                             R1 1 0
       29 RETURN                           R0 0

PROTO_7:
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
       28 GETUPVAL                         R1 4
       29 JUMPIFNOT                        R1 ; [+3]
       30 GETUPVAL                         R1 4
       31 MOVE                             R2 R0
       32 CALL                             R1 1 0
       33 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R7 0
        1 GETTABLEKS                       R7 R7 K0 ["useContext"]
        3 GETUPVAL                         R8 1
        4 GETTABLEKS                       R8 R8 K1 ["Context"]
        6 CALL                             R7 1 1
        7 GETUPVAL                         R8 0
        8 GETTABLEKS                       R8 R8 K2 ["useMemo"]
       10 NEWCLOSURE                       R9 P0
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          VAL R0
       13 NEWTABLE                         R10 0 1
       15 MOVE                             R11 R0
       16 SETLIST                          R10 R11 1 [1]
       18 CALL                             R8 2 1
       19 GETUPVAL                         R9 0
       20 GETTABLEKS                       R9 R9 K2 ["useMemo"]
       22 NEWCLOSURE                       R10 P1
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          VAL R0
       25 NEWTABLE                         R11 0 1
       27 MOVE                             R12 R0
       28 SETLIST                          R11 R12 1 [1]
       30 CALL                             R9 2 1
       31 GETUPVAL                         R10 4
       32 GETTABLEKS                       R10 R10 K3 ["useStagnatingState"]
       34 LOADB                            R11 0
       35 NEWTABLE                         R12 0 1
       37 MOVE                             R13 R8
       38 SETLIST                          R12 R13 1 [1]
       40 CALL                             R10 2 2
       41 GETUPVAL                         R12 4
       42 GETTABLEKS                       R12 R12 K3 ["useStagnatingState"]
       44 LOADB                            R13 0
       45 NEWTABLE                         R14 0 1
       47 MOVE                             R15 R9
       48 SETLIST                          R14 R15 1 [1]
       50 CALL                             R12 2 2
       51 OR                               R14 R10 R8
       52 OR                               R15 R12 R9
       53 GETUPVAL                         R16 0
       54 GETTABLEKS                       R16 R16 K2 ["useMemo"]
       56 NEWCLOSURE                       R17 P2
       57 CAPTURE                          UPVAL U5
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R10
       60 NEWTABLE                         R18 0 2
       62 MOVE                             R19 R10
       63 MOVE                             R20 R7
       64 SETLIST                          R18 R19 2 [1]
       66 CALL                             R16 2 1
       67 GETUPVAL                         R17 0
       68 GETTABLEKS                       R17 R17 K2 ["useMemo"]
       70 NEWCLOSURE                       R18 P3
       71 CAPTURE                          UPVAL U5
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R12
       74 NEWTABLE                         R19 0 2
       76 MOVE                             R20 R12
       77 MOVE                             R21 R7
       78 SETLIST                          R19 R20 2 [1]
       80 CALL                             R17 2 1
       81 JUMPIFNOTEQKS                    R6 K4 ["Keycode"] ; [+10]
       83 MOVE                             R19 R4
       84 LOADK                            R20 K4 ["Keycode"]
       85 FASTCALL1                        TOSTRING R5 ; [+3]
       86 MOVE                             R22 R5
       87 GETIMPORT                        R21 K6 [tostring]
       89 CALL                             R21 1 1
       90 CONCAT                           R18 R19 R21
       91 JUMP                             ; [+8]
       92 MOVE                             R19 R4
       93 LOADK                            R20 K7 ["Composite"]
       94 FASTCALL1                        TOSTRING R5 ; [+3]
       95 MOVE                             R22 R5
       96 GETIMPORT                        R21 K6 [tostring]
       98 CALL                             R21 1 1
       99 CONCAT                           R18 R19 R21
      100 JUMPIFNOTEQKS                    R6 K4 ["Keycode"] ; [+3]
      102 OR                               R19 R14 R15
      103 JUMP                             ; [+1]
      104 LOADB                            R19 1
      105 GETUPVAL                         R20 6
      106 MOVE                             R21 R18
      107 MOVE                             R22 R19
      108 CALL                             R20 2 2
      109 GETUPVAL                         R22 0
      110 GETTABLEKS                       R22 R22 K0 ["useContext"]
      112 GETUPVAL                         R23 7
      113 GETTABLEKS                       R23 R23 K1 ["Context"]
      115 CALL                             R22 1 1
      116 GETUPVAL                         R23 4
      117 GETTABLEKS                       R23 R23 K8 ["useEventCallback"]
      119 NEWCLOSURE                       R24 P4
      120 CAPTURE                          UPVAL U8
      121 CAPTURE                          VAL R11
      122 CAPTURE                          VAL R0
      123 CAPTURE                          VAL R22
      124 CALL                             R23 1 1
      125 GETUPVAL                         R24 4
      126 GETTABLEKS                       R24 R24 K8 ["useEventCallback"]
      128 NEWCLOSURE                       R25 P5
      129 CAPTURE                          UPVAL U8
      130 CAPTURE                          VAL R13
      131 CAPTURE                          VAL R0
      132 CAPTURE                          VAL R22
      133 CALL                             R24 1 1
      134 GETUPVAL                         R25 4
      135 GETTABLEKS                       R25 R25 K8 ["useEventCallback"]
      137 NEWCLOSURE                       R26 P6
      138 CAPTURE                          UPVAL U8
      139 CAPTURE                          VAL R1
      140 CAPTURE                          VAL R0
      141 CAPTURE                          VAL R22
      142 CAPTURE                          VAL R2
      143 CALL                             R25 1 1
      144 GETUPVAL                         R26 4
      145 GETTABLEKS                       R26 R26 K8 ["useEventCallback"]
      147 NEWCLOSURE                       R27 P7
      148 CAPTURE                          UPVAL U8
      149 CAPTURE                          VAL R11
      150 CAPTURE                          VAL R21
      151 CAPTURE                          VAL R13
      152 CAPTURE                          VAL R3
      153 CALL                             R26 1 1
      154 DUPTABLE                         R27 K19 [{"showPrimaryModifier", "showSecondaryModifier", "primaryModifierMenu", "secondaryModifierMenu", "onPrimaryModifierMenuItemSelected", "onSecondaryModifierMenuItemSelected", "onCreateMenuItemSelected", "onEditMenuItemSelected", "expanded", "setExpanded"}]
      155 SETTABLEKS                       R14 R27 K9 ["showPrimaryModifier"]
      157 SETTABLEKS                       R15 R27 K10 ["showSecondaryModifier"]
      159 SETTABLEKS                       R16 R27 K11 ["primaryModifierMenu"]
      161 SETTABLEKS                       R17 R27 K12 ["secondaryModifierMenu"]
      163 SETTABLEKS                       R23 R27 K13 ["onPrimaryModifierMenuItemSelected"]
      165 SETTABLEKS                       R24 R27 K14 ["onSecondaryModifierMenuItemSelected"]
      167 SETTABLEKS                       R26 R27 K15 ["onCreateMenuItemSelected"]
      169 SETTABLEKS                       R25 R27 K16 ["onEditMenuItemSelected"]
      171 SETTABLEKS                       R20 R27 K17 ["expanded"]
      173 SETTABLEKS                       R21 R27 K18 ["setExpanded"]
      175 RETURN                           R27 1

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
       59 GETTABLEKS                       R9 R9 K16 ["Hooks"]
       61 GETTABLEKS                       R9 R9 K17 ["useExpanded"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K5 [require]
       66 GETTABLEKS                       R10 R0 K13 ["Src"]
       68 GETTABLEKS                       R10 R10 K18 ["Util"]
       70 GETTABLEKS                       R10 R10 K19 ["Menus"]
       72 GETTABLEKS                       R10 R10 K20 ["getModifierMenu"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K5 [require]
       77 GETTABLEKS                       R11 R0 K13 ["Src"]
       79 GETTABLEKS                       R11 R11 K18 ["Util"]
       81 GETTABLEKS                       R11 R11 K21 ["Binding"]
       83 GETTABLEKS                       R11 R11 K22 ["hasPrimaryModifier"]
       85 CALL                             R10 1 1
       86 GETIMPORT                        R11 K5 [require]
       88 GETTABLEKS                       R12 R0 K13 ["Src"]
       90 GETTABLEKS                       R12 R12 K18 ["Util"]
       92 GETTABLEKS                       R12 R12 K21 ["Binding"]
       94 GETTABLEKS                       R12 R12 K23 ["hasSecondaryModifier"]
       96 CALL                             R11 1 1
       97 GETIMPORT                        R12 K5 [require]
       99 GETTABLEKS                       R13 R0 K13 ["Src"]
      101 GETTABLEKS                       R13 R13 K18 ["Util"]
      103 GETTABLEKS                       R13 R13 K24 ["Constants"]
      105 GETTABLEKS                       R13 R13 K25 ["MenuIdentifiers"]
      107 CALL                             R12 1 1
      108 DUPCLOSURE                       R13 K26 [PROTO_8]
      109 CAPTURE                          VAL R1
      110 CAPTURE                          VAL R5
      111 CAPTURE                          VAL R10
      112 CAPTURE                          VAL R11
      113 CAPTURE                          VAL R2
      114 CAPTURE                          VAL R9
      115 CAPTURE                          VAL R8
      116 CAPTURE                          VAL R6
      117 CAPTURE                          VAL R12
      118 RETURN                           R13 1
