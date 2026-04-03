PROTO_0:
        0 NEWTABLE                         R0 0 2
        2 DUPTABLE                         R1 K3 [{"id", "text", "items"}]
        3 LOADK                            R2 K4 ["Layout"]
        4 SETTABLEKS                       R2 R1 K0 ["id"]
        6 GETUPVAL                         R2 0
        7 LOADK                            R4 K5 ["OptionMenu"]
        8 LOADK                            R5 K4 ["Layout"]
        9 NAMECALL                         R2 R2 K6 ["getText"]
       11 CALL                             R2 3 1
       12 SETTABLEKS                       R2 R1 K1 ["text"]
       14 NEWTABLE                         R2 0 2
       16 DUPTABLE                         R3 K7 [{"id", "text"}]
       17 LOADK                            R4 K8 ["List"]
       18 SETTABLEKS                       R4 R3 K0 ["id"]
       20 LOADK                            R4 K8 ["List"]
       21 SETTABLEKS                       R4 R3 K1 ["text"]
       23 DUPTABLE                         R4 K7 [{"id", "text"}]
       24 LOADK                            R5 K9 ["Grid"]
       25 SETTABLEKS                       R5 R4 K0 ["id"]
       27 LOADK                            R5 K10 ["Thumbnail"]
       28 SETTABLEKS                       R5 R4 K1 ["text"]
       30 SETLIST                          R2 R3 2 [1]
       32 SETTABLEKS                       R2 R1 K2 ["items"]
       34 DUPTABLE                         R2 K3 [{"id", "text", "items"}]
       35 LOADK                            R3 K11 ["Sort"]
       36 SETTABLEKS                       R3 R2 K0 ["id"]
       38 GETUPVAL                         R3 0
       39 LOADK                            R5 K5 ["OptionMenu"]
       40 LOADK                            R6 K11 ["Sort"]
       41 NAMECALL                         R3 R3 K6 ["getText"]
       43 CALL                             R3 3 1
       44 SETTABLEKS                       R3 R2 K1 ["text"]
       46 NEWTABLE                         R3 0 2
       48 DUPTABLE                         R4 K7 [{"id", "text"}]
       49 LOADK                            R5 K12 ["Recent"]
       50 SETTABLEKS                       R5 R4 K0 ["id"]
       52 LOADK                            R5 K12 ["Recent"]
       53 SETTABLEKS                       R5 R4 K1 ["text"]
       55 DUPTABLE                         R5 K7 [{"id", "text"}]
       56 LOADK                            R6 K13 ["Alphabetical"]
       57 SETTABLEKS                       R6 R5 K0 ["id"]
       59 LOADK                            R6 K13 ["Alphabetical"]
       60 SETTABLEKS                       R6 R5 K1 ["text"]
       62 SETLIST                          R3 R4 2 [1]
       64 SETTABLEKS                       R3 R2 K2 ["items"]
       66 SETLIST                          R0 R1 2 [1]
       68 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["enable"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_2:
        0 JUMPIFNOTEQKS                    R0 K0 ["Layout"] ; [+7]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["setLayout"]
        5 MOVE                             R3 R1
        6 CALL                             R2 1 0
        7 RETURN                           R0 0
        8 JUMPIFNOTEQKS                    R0 K2 ["Sort"] ; [+6]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R2 R3 K3 ["setSort"]
       13 MOVE                             R3 R1
       14 CALL                             R2 1 0
       15 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K0 ["useContext"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R3 R4 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 3
       15 CALL                             R3 0 1
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R4 R5 K2 ["useMemo"]
       19 DUPCLOSURE                       R5 K3 [PROTO_0]
       20 CAPTURE                          UPVAL U4
       21 NEWTABLE                         R6 0 1
       23 GETUPVAL                         R8 4
       24 GETTABLEKS                       R7 R8 K4 ["locale"]
       26 SETLIST                          R6 R7 1 [1]
       28 CALL                             R4 2 1
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R5 R6 K5 ["useCallback"]
       32 NEWCLOSURE                       R6 P1
       33 CAPTURE                          VAL R3
       34 NEWTABLE                         R7 0 0
       36 CALL                             R5 2 1
       37 GETUPVAL                         R7 0
       38 GETTABLEKS                       R6 R7 K5 ["useCallback"]
       40 NEWCLOSURE                       R7 P2
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R2
       43 NEWTABLE                         R8 0 2
       45 GETTABLEKS                       R9 R1 K6 ["setLayout"]
       47 GETTABLEKS                       R10 R2 K7 ["setSort"]
       49 SETLIST                          R8 R9 2 [1]
       51 CALL                             R6 2 1
       52 GETUPVAL                         R7 5
       53 GETUPVAL                         R9 6
       54 GETTABLEKS                       R8 R9 K8 ["Root"]
       56 DUPTABLE                         R9 K10 [{"isOpen"}]
       57 GETTABLEKS                       R10 R3 K11 ["enabled"]
       59 SETTABLEKS                       R10 R9 K9 ["isOpen"]
       61 DUPTABLE                         R10 K14 [{"OptionMenuAnchor", "Content"}]
       62 GETUPVAL                         R11 5
       63 GETUPVAL                         R13 6
       64 GETTABLEKS                       R12 R13 K15 ["Anchor"]
       66 DUPTABLE                         R13 K17 [{"LayoutOrder"}]
       67 GETTABLEKS                       R14 R0 K18 ["layoutOrder"]
       69 SETTABLEKS                       R14 R13 K16 ["LayoutOrder"]
       71 DUPTABLE                         R14 K20 [{"Button"}]
       72 GETUPVAL                         R15 5
       73 GETUPVAL                         R16 7
       74 DUPTABLE                         R17 K23 [{"tag", "onActivated"}]
       75 LOADK                            R18 K24 ["size-600-600 radius-small row align-x-center align-y-center"]
       76 SETTABLEKS                       R18 R17 K21 ["tag"]
       78 SETTABLEKS                       R5 R17 K22 ["onActivated"]
       80 DUPTABLE                         R18 K26 [{"Icon"}]
       81 GETUPVAL                         R19 5
       82 GETUPVAL                         R20 8
       83 DUPTABLE                         R21 K29 [{"name", "size"}]
       84 GETUPVAL                         R25 9
       85 GETTABLEKS                       R24 R25 K30 ["Enums"]
       87 GETTABLEKS                       R23 R24 K31 ["IconName"]
       89 GETTABLEKS                       R22 R23 K32 ["ListBulleted"]
       91 SETTABLEKS                       R22 R21 K27 ["name"]
       93 GETUPVAL                         R25 9
       94 GETTABLEKS                       R24 R25 K30 ["Enums"]
       96 GETTABLEKS                       R23 R24 K33 ["IconSize"]
       98 GETTABLEKS                       R22 R23 K34 ["Small"]
      100 SETTABLEKS                       R22 R21 K28 ["size"]
      102 CALL                             R19 2 1
      103 SETTABLEKS                       R19 R18 K25 ["Icon"]
      105 CALL                             R15 3 1
      106 SETTABLEKS                       R15 R14 K19 ["Button"]
      108 CALL                             R11 3 1
      109 SETTABLEKS                       R11 R10 K12 ["OptionMenuAnchor"]
      111 GETTABLEKS                       R12 R3 K11 ["enabled"]
      113 JUMPIFNOT                        R12 ; [+73]
      114 GETUPVAL                         R11 5
      115 GETUPVAL                         R13 6
      116 GETTABLEKS                       R12 R13 K13 ["Content"]
      118 DUPTABLE                         R13 K39 [{"hasArrow", "onPressedOutside", "align", "side"}]
      119 LOADB                            R14 0
      120 SETTABLEKS                       R14 R13 K35 ["hasArrow"]
      122 GETTABLEKS                       R14 R3 K40 ["disable"]
      124 SETTABLEKS                       R14 R13 K36 ["onPressedOutside"]
      126 DUPTABLE                         R14 K43 [{"position", "offset"}]
      127 GETUPVAL                         R18 9
      128 GETTABLEKS                       R17 R18 K30 ["Enums"]
      130 GETTABLEKS                       R16 R17 K44 ["PopoverAlign"]
      132 GETTABLEKS                       R15 R16 K45 ["Start"]
      134 SETTABLEKS                       R15 R14 K41 ["position"]
      136 LOADN                            R15 0
      137 SETTABLEKS                       R15 R14 K42 ["offset"]
      139 SETTABLEKS                       R14 R13 K37 ["align"]
      141 DUPTABLE                         R14 K43 [{"position", "offset"}]
      142 GETUPVAL                         R18 9
      143 GETTABLEKS                       R17 R18 K30 ["Enums"]
      145 GETTABLEKS                       R16 R17 K46 ["PopoverSide"]
      147 GETTABLEKS                       R15 R16 K47 ["Bottom"]
      149 SETTABLEKS                       R15 R14 K41 ["position"]
      151 LOADN                            R15 4
      152 SETTABLEKS                       R15 R14 K42 ["offset"]
      154 SETTABLEKS                       R14 R13 K38 ["side"]
      156 DUPTABLE                         R14 K49 [{"OptionMenu"}]
      157 GETUPVAL                         R15 5
      158 GETUPVAL                         R16 10
      159 DUPTABLE                         R17 K55 [{"width", "items", "values", "onItemSelected", "shouldDisplayChecks"}]
      160 LOADN                            R18 145
      161 SETTABLEKS                       R18 R17 K50 ["width"]
      163 SETTABLEKS                       R4 R17 K51 ["items"]
      165 NEWTABLE                         R18 2 0
      167 GETTABLEKS                       R19 R1 K56 ["layout"]
      169 LOADB                            R20 1
      170 SETTABLE                         R20 R18 R19
      171 GETTABLEKS                       R19 R2 K57 ["sort"]
      173 LOADB                            R20 1
      174 SETTABLE                         R20 R18 R19
      175 SETTABLEKS                       R18 R17 K52 ["values"]
      177 SETTABLEKS                       R6 R17 K53 ["onItemSelected"]
      179 LOADB                            R18 1
      180 SETTABLEKS                       R18 R17 K54 ["shouldDisplayChecks"]
      182 CALL                             R15 2 1
      183 SETTABLEKS                       R15 R14 K48 ["OptionMenu"]
      185 CALL                             R11 3 1
      186 JUMP                             ; [+1]
      187 LOADNIL                          R11
      188 SETTABLEKS                       R11 R10 K13 ["Content"]
      190 CALL                             R7 3 -1
      191 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [script]
        9 LOADK                            R3 K4 ["AssetPicker"]
       10 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R0 K5 ["Parent"]
       15 GETIMPORT                        R3 K7 [require]
       17 GETTABLEKS                       R6 R1 K8 ["Components"]
       19 GETTABLEKS                       R5 R6 K9 ["Util"]
       21 GETTABLEKS                       R4 R5 K10 ["DividedMenu"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K7 [require]
       26 GETTABLEKS                       R5 R2 K11 ["Foundation"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K7 [require]
       31 GETTABLEKS                       R7 R1 K12 ["Contexts"]
       33 GETTABLEKS                       R6 R7 K13 ["LayoutContext"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K7 [require]
       38 GETTABLEKS                       R7 R2 K14 ["React"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K7 [require]
       43 GETTABLEKS                       R8 R2 K15 ["ReactUtils"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K7 [require]
       48 GETTABLEKS                       R10 R1 K12 ["Contexts"]
       50 GETTABLEKS                       R9 R10 K16 ["SortContext"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K7 [require]
       55 GETTABLEKS                       R12 R1 K17 ["Resources"]
       57 GETTABLEKS                       R11 R12 K18 ["Localization"]
       59 GETTABLEKS                       R10 R11 K19 ["Translator"]
       61 CALL                             R9 1 1
       62 GETIMPORT                        R10 K7 [require]
       64 GETTABLEKS                       R11 R1 K20 ["Types"]
       66 CALL                             R10 1 1
       67 GETTABLEKS                       R11 R4 K21 ["Icon"]
       69 GETTABLEKS                       R12 R4 K22 ["Popover"]
       71 GETTABLEKS                       R13 R4 K23 ["View"]
       73 GETTABLEKS                       R14 R6 K24 ["createElement"]
       75 GETTABLEKS                       R15 R7 K25 ["useToggleState"]
       77 DUPCLOSURE                       R16 K26 [PROTO_3]
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R15
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R14
       84 CAPTURE                          VAL R12
       85 CAPTURE                          VAL R13
       86 CAPTURE                          VAL R11
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R3
       89 RETURN                           R16 1
