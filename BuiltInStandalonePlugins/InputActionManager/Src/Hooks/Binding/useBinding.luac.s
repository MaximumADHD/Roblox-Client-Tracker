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

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 -1
        4 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 -1
        4 RETURN                           R0 -1

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

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+14]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["ROW_ADD_PRIMARY_MODIFIER"]
        6 JUMPIFNOTEQ                      R0 R1 ; [+10]
        8 GETUPVAL                         R1 2
        9 LOADB                            R2 1
       10 CALL                             R1 1 0
       11 GETUPVAL                         R1 3
       12 JUMPIFNOT                        R1 ; [+3]
       13 GETUPVAL                         R1 3
       14 LOADB                            R2 1
       15 CALL                             R1 1 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R1 0
       18 CALL                             R1 0 1
       19 JUMPIF                           R1 ; [+14]
       20 GETUPVAL                         R1 1
       21 GETTABLEKS                       R1 R1 K1 ["ROW_ADD_SECONDARY_MODIFIER"]
       23 JUMPIFNOTEQ                      R0 R1 ; [+10]
       25 GETUPVAL                         R1 4
       26 LOADB                            R2 1
       27 CALL                             R1 1 0
       28 GETUPVAL                         R1 3
       29 JUMPIFNOT                        R1 ; [+3]
       30 GETUPVAL                         R1 3
       31 LOADB                            R2 1
       32 CALL                             R1 1 0
       33 RETURN                           R0 0
       34 GETUPVAL                         R1 1
       35 GETTABLEKS                       R1 R1 K2 ["DELETE"]
       37 JUMPIFNOTEQ                      R0 R1 ; [+20]
       39 GETUPVAL                         R1 5
       40 JUMPIF                           R1 ; [+17]
       41 LOADB                            R1 0
       42 GETUPVAL                         R2 6
       43 LOADNIL                          R3
       44 LOADNIL                          R4
       45 FORGPREP                         R2
       46 GETUPVAL                         R7 7
       47 GETTABLEKS                       R7 R7 K3 ["updateBinding"]
       49 GETTABLEKS                       R8 R6 K4 ["uuid"]
       51 LOADNIL                          R9
       52 MOVE                             R10 R1
       53 CALL                             R7 3 0
       54 LOADB                            R1 1
       55 FORGLOOP                         R2 2 ; [-10]
       57 RETURN                           R0 0
       58 GETUPVAL                         R1 8
       59 JUMPIFNOT                        R1 ; [+3]
       60 GETUPVAL                         R1 8
       61 MOVE                             R2 R0
       62 CALL                             R1 1 0
       63 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R7 0
        1 GETTABLEKS                       R7 R7 K0 ["useContext"]
        3 GETUPVAL                         R8 1
        4 GETTABLEKS                       R8 R8 K1 ["Context"]
        6 CALL                             R7 1 1
        7 LOADNIL                          R8
        8 LOADNIL                          R9
        9 GETUPVAL                         R10 2
       10 CALL                             R10 0 1
       11 JUMPIFNOT                        R10 ; [+27]
       12 GETUPVAL                         R10 0
       13 GETTABLEKS                       R10 R10 K2 ["useMemo"]
       15 NEWCLOSURE                       R11 P0
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          VAL R0
       18 NEWTABLE                         R12 0 1
       20 MOVE                             R13 R0
       21 SETLIST                          R12 R13 1 [1]
       23 CALL                             R10 2 1
       24 MOVE                             R8 R10
       25 GETUPVAL                         R10 0
       26 GETTABLEKS                       R10 R10 K2 ["useMemo"]
       28 NEWCLOSURE                       R11 P1
       29 CAPTURE                          UPVAL U4
       30 CAPTURE                          VAL R0
       31 NEWTABLE                         R12 0 1
       33 MOVE                             R13 R0
       34 SETLIST                          R12 R13 1 [1]
       36 CALL                             R10 2 1
       37 MOVE                             R9 R10
       38 JUMP                             ; [+15]
       39 GETUPVAL                         R10 0
       40 GETTABLEKS                       R10 R10 K2 ["useMemo"]
       42 NEWCLOSURE                       R11 P2
       43 CAPTURE                          UPVAL U5
       44 CAPTURE                          VAL R0
       45 CAPTURE                          UPVAL U6
       46 NEWTABLE                         R12 0 1
       48 MOVE                             R13 R0
       49 SETLIST                          R12 R13 1 [1]
       51 CALL                             R10 2 2
       52 MOVE                             R8 R10
       53 MOVE                             R9 R11
       54 GETUPVAL                         R10 7
       55 GETTABLEKS                       R10 R10 K3 ["useStagnatingState"]
       57 LOADB                            R11 0
       58 NEWTABLE                         R12 0 1
       60 MOVE                             R13 R8
       61 SETLIST                          R12 R13 1 [1]
       63 CALL                             R10 2 2
       64 GETUPVAL                         R12 7
       65 GETTABLEKS                       R12 R12 K3 ["useStagnatingState"]
       67 LOADB                            R13 0
       68 NEWTABLE                         R14 0 1
       70 MOVE                             R15 R9
       71 SETLIST                          R14 R15 1 [1]
       73 CALL                             R12 2 2
       74 OR                               R14 R10 R8
       75 OR                               R15 R12 R9
       76 GETUPVAL                         R16 0
       77 GETTABLEKS                       R16 R16 K2 ["useMemo"]
       79 NEWCLOSURE                       R17 P3
       80 CAPTURE                          UPVAL U8
       81 CAPTURE                          VAL R7
       82 CAPTURE                          VAL R10
       83 NEWTABLE                         R18 0 2
       85 MOVE                             R19 R10
       86 MOVE                             R20 R7
       87 SETLIST                          R18 R19 2 [1]
       89 CALL                             R16 2 1
       90 GETUPVAL                         R17 0
       91 GETTABLEKS                       R17 R17 K2 ["useMemo"]
       93 NEWCLOSURE                       R18 P4
       94 CAPTURE                          UPVAL U8
       95 CAPTURE                          VAL R7
       96 CAPTURE                          VAL R12
       97 NEWTABLE                         R19 0 2
       99 MOVE                             R20 R12
      100 MOVE                             R21 R7
      101 SETLIST                          R19 R20 2 [1]
      103 CALL                             R17 2 1
      104 JUMPIFNOTEQKS                    R6 K4 ["Keycode"] ; [+10]
      106 MOVE                             R19 R4
      107 LOADK                            R20 K4 ["Keycode"]
      108 FASTCALL1                        TOSTRING R5 ; [+3]
      109 MOVE                             R22 R5
      110 GETIMPORT                        R21 K6 [tostring]
      112 CALL                             R21 1 1
      113 CONCAT                           R18 R19 R21
      114 JUMP                             ; [+8]
      115 MOVE                             R19 R4
      116 LOADK                            R20 K7 ["Composite"]
      117 FASTCALL1                        TOSTRING R5 ; [+3]
      118 MOVE                             R22 R5
      119 GETIMPORT                        R21 K6 [tostring]
      121 CALL                             R21 1 1
      122 CONCAT                           R18 R19 R21
      123 JUMPIFNOTEQKS                    R6 K4 ["Keycode"] ; [+3]
      125 OR                               R19 R14 R15
      126 JUMP                             ; [+1]
      127 LOADB                            R19 1
      128 GETUPVAL                         R20 9
      129 MOVE                             R21 R18
      130 MOVE                             R22 R19
      131 CALL                             R20 2 2
      132 GETUPVAL                         R22 0
      133 GETTABLEKS                       R22 R22 K0 ["useContext"]
      135 GETUPVAL                         R23 10
      136 GETTABLEKS                       R23 R23 K1 ["Context"]
      138 CALL                             R22 1 1
      139 GETUPVAL                         R23 7
      140 GETTABLEKS                       R23 R23 K8 ["useEventCallback"]
      142 NEWCLOSURE                       R24 P5
      143 CAPTURE                          UPVAL U11
      144 CAPTURE                          VAL R11
      145 CAPTURE                          VAL R0
      146 CAPTURE                          VAL R22
      147 CAPTURE                          UPVAL U6
      148 CALL                             R23 1 1
      149 GETUPVAL                         R24 7
      150 GETTABLEKS                       R24 R24 K8 ["useEventCallback"]
      152 NEWCLOSURE                       R25 P6
      153 CAPTURE                          UPVAL U11
      154 CAPTURE                          VAL R13
      155 CAPTURE                          VAL R0
      156 CAPTURE                          VAL R22
      157 CALL                             R24 1 1
      158 GETUPVAL                         R25 7
      159 GETTABLEKS                       R25 R25 K8 ["useEventCallback"]
      161 NEWCLOSURE                       R26 P7
      162 CAPTURE                          UPVAL U2
      163 CAPTURE                          UPVAL U11
      164 CAPTURE                          VAL R11
      165 CAPTURE                          VAL R21
      166 CAPTURE                          VAL R13
      167 CAPTURE                          VAL R1
      168 CAPTURE                          VAL R0
      169 CAPTURE                          VAL R22
      170 CAPTURE                          VAL R2
      171 CALL                             R25 1 1
      172 GETUPVAL                         R26 7
      173 GETTABLEKS                       R26 R26 K8 ["useEventCallback"]
      175 NEWCLOSURE                       R27 P8
      176 CAPTURE                          UPVAL U11
      177 CAPTURE                          VAL R11
      178 CAPTURE                          VAL R21
      179 CAPTURE                          VAL R13
      180 CAPTURE                          VAL R3
      181 CALL                             R26 1 1
      182 DUPTABLE                         R27 K19 [{"showPrimaryModifier", "showSecondaryModifier", "primaryModifierMenu", "secondaryModifierMenu", "onPrimaryModifierMenuItemSelected", "onSecondaryModifierMenuItemSelected", "onCreateMenuItemSelected", "onEditMenuItemSelected", "expanded", "setExpanded"}]
      183 SETTABLEKS                       R14 R27 K9 ["showPrimaryModifier"]
      185 SETTABLEKS                       R15 R27 K10 ["showSecondaryModifier"]
      187 SETTABLEKS                       R16 R27 K11 ["primaryModifierMenu"]
      189 SETTABLEKS                       R17 R27 K12 ["secondaryModifierMenu"]
      191 SETTABLEKS                       R23 R27 K13 ["onPrimaryModifierMenuItemSelected"]
      193 SETTABLEKS                       R24 R27 K14 ["onSecondaryModifierMenuItemSelected"]
      195 SETTABLEKS                       R26 R27 K15 ["onCreateMenuItemSelected"]
      197 SETTABLEKS                       R25 R27 K16 ["onEditMenuItemSelected"]
      199 SETTABLEKS                       R20 R27 K17 ["expanded"]
      201 SETTABLEKS                       R21 R27 K18 ["setExpanded"]
      203 RETURN                           R27 1

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
       90 GETTABLEKS                       R12 R12 K22 ["Binding"]
       92 GETTABLEKS                       R12 R12 K23 ["hasPrimaryModifier"]
       94 CALL                             R11 1 1
       95 GETIMPORT                        R12 K5 [require]
       97 GETTABLEKS                       R13 R0 K13 ["Src"]
       99 GETTABLEKS                       R13 R13 K16 ["Util"]
      101 GETTABLEKS                       R13 R13 K22 ["Binding"]
      103 GETTABLEKS                       R13 R13 K24 ["hasSecondaryModifier"]
      105 CALL                             R12 1 1
      106 GETIMPORT                        R13 K5 [require]
      108 GETTABLEKS                       R14 R0 K13 ["Src"]
      110 GETTABLEKS                       R14 R14 K16 ["Util"]
      112 GETTABLEKS                       R14 R14 K25 ["Constants"]
      114 GETTABLEKS                       R14 R14 K26 ["MenuIdentifiers"]
      116 CALL                             R13 1 1
      117 GETTABLEKS                       R14 R0 K13 ["Src"]
      119 GETTABLEKS                       R14 R14 K27 ["Flags"]
      121 GETIMPORT                        R15 K5 [require]
      123 GETTABLEKS                       R16 R14 K28 ["getFFlagIAMUIModifier"]
      125 CALL                             R15 1 1
      126 GETIMPORT                        R16 K5 [require]
      128 GETTABLEKS                       R17 R14 K29 ["getFFlagIAMImprovedModifierMenu"]
      130 CALL                             R16 1 1
      131 DUPCLOSURE                       R17 K30 [PROTO_9]
      132 CAPTURE                          VAL R1
      133 CAPTURE                          VAL R5
      134 CAPTURE                          VAL R16
      135 CAPTURE                          VAL R11
      136 CAPTURE                          VAL R12
      137 CAPTURE                          VAL R8
      138 CAPTURE                          VAL R15
      139 CAPTURE                          VAL R2
      140 CAPTURE                          VAL R10
      141 CAPTURE                          VAL R9
      142 CAPTURE                          VAL R6
      143 CAPTURE                          VAL R13
      144 RETURN                           R17 1
