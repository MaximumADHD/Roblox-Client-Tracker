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
       10 GETUPVAL                         R3 0
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
        7 GETUPVAL                         R2 2
        8 CALL                             R2 0 1
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K2 ["useMemo"]
       12 DUPCLOSURE                       R4 K3 [PROTO_0]
       13 CAPTURE                          UPVAL U3
       14 NEWTABLE                         R5 0 1
       16 GETUPVAL                         R7 3
       17 GETTABLEKS                       R6 R7 K4 ["locale"]
       19 SETLIST                          R5 R6 1 [1]
       21 CALL                             R3 2 1
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R4 R5 K5 ["useCallback"]
       25 NEWCLOSURE                       R5 P1
       26 CAPTURE                          VAL R2
       27 NEWTABLE                         R6 0 0
       29 CALL                             R4 2 1
       30 GETUPVAL                         R6 0
       31 GETTABLEKS                       R5 R6 K5 ["useCallback"]
       33 NEWCLOSURE                       R6 P2
       34 CAPTURE                          VAL R1
       35 NEWTABLE                         R7 0 2
       37 GETTABLEKS                       R8 R1 K6 ["setLayout"]
       39 GETTABLEKS                       R9 R1 K7 ["setSort"]
       41 SETLIST                          R7 R8 2 [1]
       43 CALL                             R5 2 1
       44 GETUPVAL                         R6 4
       45 GETUPVAL                         R8 5
       46 GETTABLEKS                       R7 R8 K8 ["Root"]
       48 DUPTABLE                         R8 K10 [{"isOpen"}]
       49 GETTABLEKS                       R9 R2 K11 ["enabled"]
       51 SETTABLEKS                       R9 R8 K9 ["isOpen"]
       53 DUPTABLE                         R9 K14 [{"OptionMenuAnchor", "Content"}]
       54 GETUPVAL                         R10 4
       55 GETUPVAL                         R12 5
       56 GETTABLEKS                       R11 R12 K15 ["Anchor"]
       58 DUPTABLE                         R12 K17 [{"LayoutOrder"}]
       59 GETTABLEKS                       R13 R0 K18 ["layoutOrder"]
       61 SETTABLEKS                       R13 R12 K16 ["LayoutOrder"]
       63 DUPTABLE                         R13 K20 [{"Button"}]
       64 GETUPVAL                         R14 4
       65 GETUPVAL                         R15 6
       66 DUPTABLE                         R16 K24 [{"icon", "size", "onActivated"}]
       67 DUPTABLE                         R17 K26 [{"name"}]
       68 GETUPVAL                         R21 7
       69 GETTABLEKS                       R20 R21 K27 ["Enums"]
       71 GETTABLEKS                       R19 R20 K28 ["IconName"]
       73 GETTABLEKS                       R18 R19 K29 ["ListBulleted"]
       75 SETTABLEKS                       R18 R17 K25 ["name"]
       77 SETTABLEKS                       R17 R16 K21 ["icon"]
       79 GETUPVAL                         R20 7
       80 GETTABLEKS                       R19 R20 K27 ["Enums"]
       82 GETTABLEKS                       R18 R19 K30 ["InputSize"]
       84 GETTABLEKS                       R17 R18 K31 ["Small"]
       86 SETTABLEKS                       R17 R16 K22 ["size"]
       88 SETTABLEKS                       R4 R16 K23 ["onActivated"]
       90 CALL                             R14 2 1
       91 SETTABLEKS                       R14 R13 K19 ["Button"]
       93 CALL                             R10 3 1
       94 SETTABLEKS                       R10 R9 K12 ["OptionMenuAnchor"]
       96 GETTABLEKS                       R11 R2 K11 ["enabled"]
       98 JUMPIFNOT                        R11 ; [+73]
       99 GETUPVAL                         R10 4
      100 GETUPVAL                         R12 5
      101 GETTABLEKS                       R11 R12 K13 ["Content"]
      103 DUPTABLE                         R12 K36 [{"hasArrow", "onPressedOutside", "align", "side"}]
      104 LOADB                            R13 0
      105 SETTABLEKS                       R13 R12 K32 ["hasArrow"]
      107 GETTABLEKS                       R13 R2 K37 ["disable"]
      109 SETTABLEKS                       R13 R12 K33 ["onPressedOutside"]
      111 DUPTABLE                         R13 K40 [{"position", "offset"}]
      112 GETUPVAL                         R17 7
      113 GETTABLEKS                       R16 R17 K27 ["Enums"]
      115 GETTABLEKS                       R15 R16 K41 ["PopoverAlign"]
      117 GETTABLEKS                       R14 R15 K42 ["Start"]
      119 SETTABLEKS                       R14 R13 K38 ["position"]
      121 LOADN                            R14 0
      122 SETTABLEKS                       R14 R13 K39 ["offset"]
      124 SETTABLEKS                       R13 R12 K34 ["align"]
      126 DUPTABLE                         R13 K40 [{"position", "offset"}]
      127 GETUPVAL                         R17 7
      128 GETTABLEKS                       R16 R17 K27 ["Enums"]
      130 GETTABLEKS                       R15 R16 K43 ["PopoverSide"]
      132 GETTABLEKS                       R14 R15 K44 ["Bottom"]
      134 SETTABLEKS                       R14 R13 K38 ["position"]
      136 LOADN                            R14 4
      137 SETTABLEKS                       R14 R13 K39 ["offset"]
      139 SETTABLEKS                       R13 R12 K35 ["side"]
      141 DUPTABLE                         R13 K46 [{"OptionMenu"}]
      142 GETUPVAL                         R14 4
      143 GETUPVAL                         R15 8
      144 DUPTABLE                         R16 K52 [{"width", "items", "values", "onItemSelected", "shouldDisplayChecks"}]
      145 LOADN                            R17 145
      146 SETTABLEKS                       R17 R16 K47 ["width"]
      148 SETTABLEKS                       R3 R16 K48 ["items"]
      150 NEWTABLE                         R17 2 0
      152 GETTABLEKS                       R18 R1 K53 ["layout"]
      154 LOADB                            R19 1
      155 SETTABLE                         R19 R17 R18
      156 GETTABLEKS                       R18 R1 K54 ["sort"]
      158 LOADB                            R19 1
      159 SETTABLE                         R19 R17 R18
      160 SETTABLEKS                       R17 R16 K49 ["values"]
      162 SETTABLEKS                       R5 R16 K50 ["onItemSelected"]
      164 LOADB                            R17 1
      165 SETTABLEKS                       R17 R16 K51 ["shouldDisplayChecks"]
      167 CALL                             R14 2 1
      168 SETTABLEKS                       R14 R13 K45 ["OptionMenu"]
      170 CALL                             R10 3 1
      171 JUMP                             ; [+1]
      172 LOADNIL                          R10
      173 SETTABLEKS                       R10 R9 K13 ["Content"]
      175 CALL                             R6 3 -1
      176 RETURN                           R6 -1

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
       31 GETTABLEKS                       R6 R2 K12 ["React"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K7 [require]
       36 GETTABLEKS                       R7 R2 K13 ["ReactUtils"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K7 [require]
       41 GETTABLEKS                       R10 R1 K14 ["Resources"]
       43 GETTABLEKS                       R9 R10 K15 ["Localization"]
       45 GETTABLEKS                       R8 R9 K16 ["Translator"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K7 [require]
       50 GETTABLEKS                       R9 R1 K17 ["Types"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K7 [require]
       55 GETTABLEKS                       R11 R1 K18 ["Contexts"]
       57 GETTABLEKS                       R10 R11 K19 ["ViewContext"]
       59 CALL                             R9 1 1
       60 GETTABLEKS                       R10 R4 K20 ["IconButton"]
       62 GETTABLEKS                       R11 R4 K21 ["Popover"]
       64 GETTABLEKS                       R12 R5 K22 ["createElement"]
       66 GETTABLEKS                       R13 R6 K23 ["useToggleState"]
       68 DUPCLOSURE                       R14 K24 [PROTO_3]
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R9
       71 CAPTURE                          VAL R13
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R12
       74 CAPTURE                          VAL R11
       75 CAPTURE                          VAL R10
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R3
       78 RETURN                           R14 1
