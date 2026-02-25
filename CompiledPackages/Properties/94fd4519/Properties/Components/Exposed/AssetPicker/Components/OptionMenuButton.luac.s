PROTO_0:
        0 NEWTABLE                         R0 0 2
        2 DUPTABLE                         R1 K3 [{"text", "id", "items"}]
        3 LOADK                            R2 K4 ["Display"]
        4 SETTABLEKS                       R2 R1 K0 ["text"]
        6 LOADK                            R2 K4 ["Display"]
        7 SETTABLEKS                       R2 R1 K1 ["id"]
        9 NEWTABLE                         R2 0 2
       11 DUPTABLE                         R3 K5 [{"id", "text"}]
       12 LOADK                            R4 K6 ["List"]
       13 SETTABLEKS                       R4 R3 K1 ["id"]
       15 LOADK                            R4 K6 ["List"]
       16 SETTABLEKS                       R4 R3 K0 ["text"]
       18 DUPTABLE                         R4 K5 [{"id", "text"}]
       19 LOADK                            R5 K7 ["Grid"]
       20 SETTABLEKS                       R5 R4 K1 ["id"]
       22 LOADK                            R5 K8 ["Thumbnail"]
       23 SETTABLEKS                       R5 R4 K0 ["text"]
       25 SETLIST                          R2 R3 2 [1]
       27 SETTABLEKS                       R2 R1 K2 ["items"]
       29 DUPTABLE                         R2 K3 [{"text", "id", "items"}]
       30 LOADK                            R3 K9 ["Sort by"]
       31 SETTABLEKS                       R3 R2 K0 ["text"]
       33 LOADK                            R3 K9 ["Sort by"]
       34 SETTABLEKS                       R3 R2 K1 ["id"]
       36 NEWTABLE                         R3 0 2
       38 DUPTABLE                         R4 K5 [{"id", "text"}]
       39 LOADK                            R5 K10 ["Recent"]
       40 SETTABLEKS                       R5 R4 K1 ["id"]
       42 LOADK                            R5 K10 ["Recent"]
       43 SETTABLEKS                       R5 R4 K0 ["text"]
       45 DUPTABLE                         R5 K5 [{"id", "text"}]
       46 LOADK                            R6 K11 ["Alphabetical"]
       47 SETTABLEKS                       R6 R5 K1 ["id"]
       49 LOADK                            R6 K11 ["Alphabetical"]
       50 SETTABLEKS                       R6 R5 K0 ["text"]
       52 SETLIST                          R3 R4 2 [1]
       54 SETTABLEKS                       R3 R2 K2 ["items"]
       56 SETLIST                          R0 R1 2 [1]
       58 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["enable"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["useMemo"]
        5 DUPCLOSURE                       R3 K1 [PROTO_0]
        6 NEWTABLE                         R4 0 0
        8 CALL                             R2 2 1
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R3 R4 K2 ["useCallback"]
       12 NEWCLOSURE                       R4 P1
       13 CAPTURE                          VAL R1
       14 NEWTABLE                         R5 0 0
       16 CALL                             R3 2 1
       17 GETUPVAL                         R4 2
       18 GETUPVAL                         R6 3
       19 GETTABLEKS                       R5 R6 K3 ["Root"]
       21 DUPTABLE                         R6 K5 [{"isOpen"}]
       22 GETTABLEKS                       R7 R1 K6 ["enabled"]
       24 SETTABLEKS                       R7 R6 K4 ["isOpen"]
       26 DUPTABLE                         R7 K9 [{"OptionMenuAnchor", "Content"}]
       27 GETUPVAL                         R8 2
       28 GETUPVAL                         R10 3
       29 GETTABLEKS                       R9 R10 K10 ["Anchor"]
       31 DUPTABLE                         R10 K12 [{"LayoutOrder"}]
       32 GETTABLEKS                       R11 R0 K13 ["layoutOrder"]
       34 SETTABLEKS                       R11 R10 K11 ["LayoutOrder"]
       36 DUPTABLE                         R11 K15 [{"Button"}]
       37 GETUPVAL                         R12 2
       38 GETUPVAL                         R13 4
       39 DUPTABLE                         R14 K19 [{"icon", "size", "onActivated"}]
       40 DUPTABLE                         R15 K21 [{"name"}]
       41 GETUPVAL                         R19 5
       42 GETTABLEKS                       R18 R19 K22 ["Enums"]
       44 GETTABLEKS                       R17 R18 K23 ["IconName"]
       46 GETTABLEKS                       R16 R17 K24 ["ListBulleted"]
       48 SETTABLEKS                       R16 R15 K20 ["name"]
       50 SETTABLEKS                       R15 R14 K16 ["icon"]
       52 GETUPVAL                         R18 5
       53 GETTABLEKS                       R17 R18 K22 ["Enums"]
       55 GETTABLEKS                       R16 R17 K25 ["InputSize"]
       57 GETTABLEKS                       R15 R16 K26 ["Small"]
       59 SETTABLEKS                       R15 R14 K17 ["size"]
       61 SETTABLEKS                       R3 R14 K18 ["onActivated"]
       63 CALL                             R12 2 1
       64 SETTABLEKS                       R12 R11 K14 ["Button"]
       66 CALL                             R8 3 1
       67 SETTABLEKS                       R8 R7 K7 ["OptionMenuAnchor"]
       69 GETTABLEKS                       R9 R1 K6 ["enabled"]
       71 JUMPIFNOT                        R9 ; [+74]
       72 GETUPVAL                         R8 2
       73 GETUPVAL                         R10 3
       74 GETTABLEKS                       R9 R10 K8 ["Content"]
       76 DUPTABLE                         R10 K31 [{"hasArrow", "onPressedOutside", "align", "side"}]
       77 LOADB                            R11 0
       78 SETTABLEKS                       R11 R10 K27 ["hasArrow"]
       80 GETTABLEKS                       R11 R1 K32 ["disable"]
       82 SETTABLEKS                       R11 R10 K28 ["onPressedOutside"]
       84 DUPTABLE                         R11 K35 [{"position", "offset"}]
       85 GETUPVAL                         R15 5
       86 GETTABLEKS                       R14 R15 K22 ["Enums"]
       88 GETTABLEKS                       R13 R14 K36 ["PopoverAlign"]
       90 GETTABLEKS                       R12 R13 K37 ["Start"]
       92 SETTABLEKS                       R12 R11 K33 ["position"]
       94 LOADN                            R12 0
       95 SETTABLEKS                       R12 R11 K34 ["offset"]
       97 SETTABLEKS                       R11 R10 K29 ["align"]
       99 DUPTABLE                         R11 K35 [{"position", "offset"}]
      100 GETUPVAL                         R15 5
      101 GETTABLEKS                       R14 R15 K22 ["Enums"]
      103 GETTABLEKS                       R13 R14 K38 ["PopoverSide"]
      105 GETTABLEKS                       R12 R13 K39 ["Bottom"]
      107 SETTABLEKS                       R12 R11 K33 ["position"]
      109 LOADN                            R12 4
      110 SETTABLEKS                       R12 R11 K34 ["offset"]
      112 SETTABLEKS                       R11 R10 K30 ["side"]
      114 DUPTABLE                         R11 K41 [{"OptionMenu"}]
      115 GETUPVAL                         R12 2
      116 GETUPVAL                         R13 6
      117 DUPTABLE                         R14 K47 [{"width", "items", "values", "onItemSelected", "shouldDisplayChecks"}]
      118 LOADN                            R15 145
      119 SETTABLEKS                       R15 R14 K42 ["width"]
      121 SETTABLEKS                       R2 R14 K43 ["items"]
      123 NEWTABLE                         R15 2 0
      125 GETTABLEKS                       R16 R0 K48 ["layout"]
      127 LOADB                            R17 1
      128 SETTABLE                         R17 R15 R16
      129 LOADB                            R16 1
      130 SETTABLEKS                       R16 R15 K49 ["Recent"]
      132 SETTABLEKS                       R15 R14 K44 ["values"]
      134 GETTABLEKS                       R15 R0 K45 ["onItemSelected"]
      136 SETTABLEKS                       R15 R14 K45 ["onItemSelected"]
      138 LOADB                            R15 1
      139 SETTABLEKS                       R15 R14 K46 ["shouldDisplayChecks"]
      141 CALL                             R12 2 1
      142 SETTABLEKS                       R12 R11 K40 ["OptionMenu"]
      144 CALL                             R8 3 1
      145 JUMP                             ; [+1]
      146 LOADNIL                          R8
      147 SETTABLEKS                       R8 R7 K8 ["Content"]
      149 CALL                             R4 3 -1
      150 RETURN                           R4 -1

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
       41 GETTABLEKS                       R8 R1 K14 ["Types"]
       43 CALL                             R7 1 1
       44 GETTABLEKS                       R8 R4 K15 ["IconButton"]
       46 GETTABLEKS                       R9 R4 K16 ["Popover"]
       48 GETTABLEKS                       R10 R5 K17 ["createElement"]
       50 GETTABLEKS                       R11 R6 K18 ["useToggleState"]
       52 DUPCLOSURE                       R12 K19 [PROTO_2]
       53 CAPTURE                          VAL R11
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R10
       56 CAPTURE                          VAL R9
       57 CAPTURE                          VAL R8
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R3
       60 RETURN                           R12 1
