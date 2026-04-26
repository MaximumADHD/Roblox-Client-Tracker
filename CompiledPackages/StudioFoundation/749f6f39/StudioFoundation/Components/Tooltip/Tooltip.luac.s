PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["side"]
        4 JUMPIF                           R1 ; [+3]
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R1 R2 K1 ["Bottom"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K2 ["align"]
       11 JUMPIF                           R2 ; [+3]
       12 GETUPVAL                         R3 3
       13 GETTABLEKS                       R2 R3 K3 ["Start"]
       15 CALL                             R0 2 -1
       16 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useTooltipSettings"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["useValue"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R4 R0 K2 ["isOpen"]
       11 DUPTABLE                         R5 K4 [{"delay"}]
       12 GETTABLEKS                       R6 R1 K3 ["delay"]
       14 SETTABLEKS                       R6 R5 K3 ["delay"]
       16 CALL                             R3 2 2
       17 GETUPVAL                         R5 3
       18 DUPTABLE                         R6 K7 [{"floatingId", "isOpen", "flush"}]
       19 GETTABLEKS                       R7 R0 K8 ["anchorUri"]
       21 SETTABLEKS                       R7 R6 K5 ["floatingId"]
       23 GETTABLEKS                       R7 R0 K2 ["isOpen"]
       25 SETTABLEKS                       R7 R6 K2 ["isOpen"]
       27 GETTABLEKS                       R7 R4 K6 ["flush"]
       29 SETTABLEKS                       R7 R6 K6 ["flush"]
       31 CALL                             R5 1 0
       32 GETUPVAL                         R5 4
       33 DUPTABLE                         R6 K11 [{"anchorRef", "anchorUri", "isOpen", "onClose"}]
       34 GETTABLEKS                       R7 R0 K9 ["anchorRef"]
       36 SETTABLEKS                       R7 R6 K9 ["anchorRef"]
       38 GETTABLEKS                       R7 R0 K8 ["anchorUri"]
       40 SETTABLEKS                       R7 R6 K8 ["anchorUri"]
       42 SETTABLEKS                       R3 R6 K2 ["isOpen"]
       44 GETTABLEKS                       R7 R0 K10 ["onClose"]
       46 SETTABLEKS                       R7 R6 K10 ["onClose"]
       48 CALL                             R5 1 0
       49 GETTABLEKS                       R5 R0 K12 ["text"]
       51 JUMPIFNOT                        R5 ; [+6]
       52 GETTABLEKS                       R6 R0 K12 ["text"]
       54 JUMPIFNOTEQKS                    R6 K13 [""] ; [+2]
       56 LOADB                            R5 0 +1
       57 LOADB                            R5 1
       58 GETTABLEKS                       R6 R0 K14 ["title"]
       60 JUMPIFNOT                        R6 ; [+6]
       61 GETTABLEKS                       R7 R0 K14 ["title"]
       63 JUMPIFNOTEQKS                    R7 K13 [""] ; [+2]
       65 LOADB                            R6 0 +1
       66 LOADB                            R6 1
       67 JUMPIFNOT                        R3 ; [+7]
       68 GETTABLEKS                       R8 R1 K15 ["tooltipsDisabled"]
       70 JUMPIF                           R8 ; [+4]
       71 MOVE                             R7 R5
       72 JUMPIF                           R7 ; [+3]
       73 MOVE                             R7 R6
       74 JUMPIF                           R7 ; [+1]
       75 LOADB                            R7 0
       76 GETUPVAL                         R9 5
       77 GETTABLEKS                       R8 R9 K16 ["useMemo"]
       79 NEWCLOSURE                       R9 P0
       80 CAPTURE                          UPVAL U6
       81 CAPTURE                          VAL R0
       82 CAPTURE                          UPVAL U7
       83 CAPTURE                          UPVAL U8
       84 NEWTABLE                         R10 0 2
       86 GETTABLEKS                       R11 R0 K17 ["side"]
       88 GETTABLEKS                       R12 R0 K18 ["align"]
       90 SETLIST                          R10 R11 2 [1]
       92 CALL                             R8 2 1
       93 GETUPVAL                         R9 9
       94 DUPTABLE                         R10 K21 [{"isOpen", "onClose", "anchorUri", "position", "registerPanelAsync"}]
       95 SETTABLEKS                       R7 R10 K2 ["isOpen"]
       97 GETTABLEKS                       R11 R0 K10 ["onClose"]
       99 SETTABLEKS                       R11 R10 K10 ["onClose"]
      101 GETTABLEKS                       R11 R0 K8 ["anchorUri"]
      103 SETTABLEKS                       R11 R10 K8 ["anchorUri"]
      105 SETTABLEKS                       R8 R10 K19 ["position"]
      107 GETTABLEKS                       R11 R2 K22 ["registerTooltipAsync"]
      109 SETTABLEKS                       R11 R10 K20 ["registerPanelAsync"]
      111 CALL                             R9 1 1
      112 GETUPVAL                         R10 10
      113 MOVE                             R11 R9
      114 CALL                             R10 1 1
      115 GETUPVAL                         R12 5
      116 GETTABLEKS                       R11 R12 K23 ["createElement"]
      118 GETUPVAL                         R12 11
      119 DUPTABLE                         R13 K25 [{"isOpen", "panel"}]
      120 SETTABLEKS                       R7 R13 K2 ["isOpen"]
      122 SETTABLEKS                       R9 R13 K24 ["panel"]
      124 GETUPVAL                         R15 5
      125 GETTABLEKS                       R14 R15 K23 ["createElement"]
      127 GETUPVAL                         R15 12
      128 DUPTABLE                         R16 K28 [{"title", "text", "shortcuts", "onAbsoluteSizeChanged"}]
      129 GETTABLEKS                       R17 R0 K14 ["title"]
      131 SETTABLEKS                       R17 R16 K14 ["title"]
      133 GETTABLEKS                       R17 R0 K12 ["text"]
      135 SETTABLEKS                       R17 R16 K12 ["text"]
      137 GETTABLEKS                       R17 R0 K26 ["shortcuts"]
      139 SETTABLEKS                       R17 R16 K26 ["shortcuts"]
      141 SETTABLEKS                       R10 R16 K27 ["onAbsoluteSizeChanged"]
      143 CALL                             R14 2 -1
      144 CALL                             R11 -1 -1
      145 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StudioFoundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Foundation"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R5 R3 K9 ["Enums"]
       21 GETTABLEKS                       R4 R5 K10 ["PopoverAlign"]
       23 GETTABLEKS                       R6 R3 K9 ["Enums"]
       25 GETTABLEKS                       R5 R6 K11 ["PopoverSide"]
       27 GETIMPORT                        R6 K6 [require]
       29 GETTABLEKS                       R7 R0 K12 ["Types"]
       31 CALL                             R6 1 1
       32 GETIMPORT                        R7 K6 [require]
       34 GETTABLEKS                       R9 R0 K13 ["Contexts"]
       36 GETTABLEKS                       R8 R9 K14 ["TooltipSettingsContext"]
       38 CALL                             R7 1 1
       39 GETIMPORT                        R8 K6 [require]
       41 GETTABLEKS                       R11 R0 K15 ["Components"]
       43 GETTABLEKS                       R10 R11 K16 ["Popover"]
       45 GETTABLEKS                       R9 R10 K17 ["PopoverContent"]
       47 CALL                             R8 1 1
       48 GETIMPORT                        R9 K6 [require]
       50 GETTABLEKS                       R11 R0 K18 ["Hooks"]
       52 GETTABLEKS                       R10 R11 K19 ["useMouseOver"]
       54 CALL                             R9 1 1
       55 GETIMPORT                        R10 K6 [require]
       57 GETTABLEKS                       R13 R0 K15 ["Components"]
       59 GETTABLEKS                       R12 R13 K16 ["Popover"]
       61 GETTABLEKS                       R11 R12 K20 ["getPosition"]
       63 CALL                             R10 1 1
       64 GETIMPORT                        R11 K6 [require]
       66 GETTABLEKS                       R14 R0 K15 ["Components"]
       68 GETTABLEKS                       R13 R14 K16 ["Popover"]
       70 GETTABLEKS                       R12 R13 K21 ["PopoverDelayGroup"]
       72 CALL                             R11 1 1
       73 GETTABLEKS                       R12 R11 K22 ["useDelayGroup"]
       75 GETIMPORT                        R13 K6 [require]
       77 GETIMPORT                        R16 K1 [script]
       79 GETTABLEKS                       R15 R16 K4 ["Parent"]
       81 GETTABLEKS                       R14 R15 K23 ["useShowDelayed"]
       83 CALL                             R13 1 1
       84 GETIMPORT                        R14 K6 [require]
       86 GETIMPORT                        R17 K1 [script]
       88 GETTABLEKS                       R16 R17 K4 ["Parent"]
       90 GETTABLEKS                       R15 R16 K24 ["TooltipContent"]
       92 CALL                             R14 1 1
       93 GETIMPORT                        R15 K6 [require]
       95 GETTABLEKS                       R17 R0 K25 ["Panels"]
       97 GETTABLEKS                       R16 R17 K26 ["PanelsContext"]
       99 CALL                             R15 1 1
      100 GETIMPORT                        R16 K6 [require]
      102 GETTABLEKS                       R18 R0 K25 ["Panels"]
      104 GETTABLEKS                       R17 R18 K27 ["usePanel"]
      106 CALL                             R16 1 1
      107 GETIMPORT                        R17 K6 [require]
      109 GETTABLEKS                       R20 R0 K15 ["Components"]
      111 GETTABLEKS                       R19 R20 K16 ["Popover"]
      113 GETTABLEKS                       R18 R19 K28 ["useAsyncOnAbsoluteSizeChanged"]
      115 CALL                             R17 1 1
      116 DUPCLOSURE                       R18 K29 [PROTO_1]
      117 CAPTURE                          VAL R7
      118 CAPTURE                          VAL R15
      119 CAPTURE                          VAL R13
      120 CAPTURE                          VAL R12
      121 CAPTURE                          VAL R9
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R10
      124 CAPTURE                          VAL R5
      125 CAPTURE                          VAL R4
      126 CAPTURE                          VAL R16
      127 CAPTURE                          VAL R17
      128 CAPTURE                          VAL R8
      129 CAPTURE                          VAL R14
      130 RETURN                           R18 1
