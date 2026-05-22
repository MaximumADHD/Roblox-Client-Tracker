PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["side"]
        4 JUMPIF                           R1 ; [+3]
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K1 ["Bottom"]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K2 ["align"]
       11 JUMPIF                           R2 ; [+3]
       12 GETUPVAL                         R2 3
       13 GETTABLEKS                       R2 R2 K3 ["Start"]
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K4 ["position"]
       18 CALL                             R0 3 -1
       19 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["registerMenuAsync"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K1 ["depth"]
        6 MOVE                             R5 R0
        7 MOVE                             R6 R1
        8 MOVE                             R7 R2
        9 CALL                             R3 4 -1
       10 RETURN                           R3 -1

PROTO_2:
        0 DUPTABLE                         R0 K1 [{"depth"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["depth"]
        4 ADDK                             R1 R2 K2 [1]
        5 SETTABLEKS                       R1 R0 K0 ["depth"]
        7 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K1 ["useValue"]
        8 CALL                             R2 0 1
        9 GETUPVAL                         R3 3
       10 CALL                             R3 0 1
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K2 ["useMemo"]
       14 NEWCLOSURE                       R5 P0
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U5
       18 CAPTURE                          UPVAL U6
       19 NEWTABLE                         R6 0 3
       21 GETTABLEKS                       R7 R0 K3 ["side"]
       23 GETTABLEKS                       R8 R0 K4 ["align"]
       25 GETTABLEKS                       R9 R0 K5 ["position"]
       27 SETLIST                          R6 R7 3 [1]
       29 CALL                             R4 2 1
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R5 R5 K6 ["useCallback"]
       33 NEWCLOSURE                       R6 P1
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R1
       36 NEWTABLE                         R7 0 2
       38 GETTABLEKS                       R8 R2 K7 ["registerMenuAsync"]
       40 GETTABLEKS                       R9 R1 K8 ["depth"]
       42 SETLIST                          R7 R8 2 [1]
       44 CALL                             R5 2 1
       45 GETUPVAL                         R6 7
       46 DUPTABLE                         R7 K13 [{"isOpen", "onClose", "anchorUri", "registerPanelAsync", "position"}]
       47 GETTABLEKS                       R8 R0 K9 ["isOpen"]
       49 SETTABLEKS                       R8 R7 K9 ["isOpen"]
       51 GETTABLEKS                       R8 R0 K10 ["onClose"]
       53 SETTABLEKS                       R8 R7 K10 ["onClose"]
       55 GETTABLEKS                       R8 R0 K11 ["anchorUri"]
       57 SETTABLEKS                       R8 R7 K11 ["anchorUri"]
       59 SETTABLEKS                       R5 R7 K12 ["registerPanelAsync"]
       61 SETTABLEKS                       R4 R7 K5 ["position"]
       63 CALL                             R6 1 1
       64 GETUPVAL                         R7 0
       65 GETTABLEKS                       R7 R7 K2 ["useMemo"]
       67 NEWCLOSURE                       R8 P2
       68 CAPTURE                          VAL R1
       69 NEWTABLE                         R9 0 1
       71 MOVE                             R10 R1
       72 SETLIST                          R9 R10 1 [1]
       74 CALL                             R7 2 1
       75 GETUPVAL                         R8 8
       76 MOVE                             R9 R6
       77 CALL                             R8 1 1
       78 GETUPVAL                         R9 0
       79 GETTABLEKS                       R9 R9 K14 ["createElement"]
       81 GETUPVAL                         R10 1
       82 GETTABLEKS                       R10 R10 K15 ["Provider"]
       84 DUPTABLE                         R11 K17 [{"value"}]
       85 SETTABLEKS                       R7 R11 K16 ["value"]
       87 GETUPVAL                         R12 0
       88 GETTABLEKS                       R12 R12 K14 ["createElement"]
       90 GETUPVAL                         R13 9
       91 DUPTABLE                         R14 K19 [{"isOpen", "panel"}]
       92 GETTABLEKS                       R15 R0 K9 ["isOpen"]
       94 SETTABLEKS                       R15 R14 K9 ["isOpen"]
       96 SETTABLEKS                       R6 R14 K18 ["panel"]
       98 GETUPVAL                         R15 0
       99 GETTABLEKS                       R15 R15 K14 ["createElement"]
      101 GETUPVAL                         R16 10
      102 DUPTABLE                         R17 K25 [{"tag", "onAbsoluteSizeChanged", "BorderColor3", "BorderMode", "BorderSizePixel"}]
      103 LOADK                            R18 K26 ["auto-xy"]
      104 SETTABLEKS                       R18 R17 K20 ["tag"]
      106 SETTABLEKS                       R8 R17 K21 ["onAbsoluteSizeChanged"]
      108 GETTABLEKS                       R18 R3 K27 ["Color"]
      110 GETTABLEKS                       R18 R18 K28 ["Stroke"]
      112 GETTABLEKS                       R18 R18 K29 ["Default"]
      114 GETTABLEKS                       R18 R18 K30 ["Color3"]
      116 SETTABLEKS                       R18 R17 K22 ["BorderColor3"]
      118 GETIMPORT                        R18 K33 [Enum.BorderMode.Inset]
      120 SETTABLEKS                       R18 R17 K23 ["BorderMode"]
      122 LOADN                            R18 2
      123 SETTABLEKS                       R18 R17 K24 ["BorderSizePixel"]
      125 GETTABLEKS                       R18 R0 K34 ["children"]
      127 CALL                             R15 3 -1
      128 CALL                             R12 -1 -1
      129 CALL                             R9 -1 -1
      130 RETURN                           R9 -1

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
       19 GETTABLEKS                       R4 R3 K9 ["View"]
       21 GETTABLEKS                       R5 R3 K10 ["Hooks"]
       23 GETTABLEKS                       R5 R5 K11 ["useTokens"]
       25 GETTABLEKS                       R6 R3 K12 ["Enums"]
       27 GETTABLEKS                       R6 R6 K13 ["PopoverSide"]
       29 GETTABLEKS                       R7 R3 K12 ["Enums"]
       31 GETTABLEKS                       R7 R7 K14 ["PopoverAlign"]
       33 GETIMPORT                        R8 K6 [require]
       35 GETTABLEKS                       R9 R0 K15 ["Components"]
       37 GETTABLEKS                       R9 R9 K16 ["Popover"]
       39 GETTABLEKS                       R9 R9 K17 ["PopoverContent"]
       41 CALL                             R8 1 1
       42 GETIMPORT                        R9 K6 [require]
       44 GETTABLEKS                       R10 R0 K15 ["Components"]
       46 GETTABLEKS                       R10 R10 K16 ["Popover"]
       48 GETTABLEKS                       R10 R10 K18 ["getPosition"]
       50 CALL                             R9 1 1
       51 GETIMPORT                        R10 K6 [require]
       53 GETTABLEKS                       R11 R0 K19 ["Panels"]
       55 GETTABLEKS                       R11 R11 K20 ["PanelsContext"]
       57 CALL                             R10 1 1
       58 GETIMPORT                        R11 K6 [require]
       60 GETTABLEKS                       R12 R0 K19 ["Panels"]
       62 GETTABLEKS                       R12 R12 K21 ["usePanel"]
       64 CALL                             R11 1 1
       65 GETIMPORT                        R12 K6 [require]
       67 GETTABLEKS                       R13 R0 K15 ["Components"]
       69 GETTABLEKS                       R13 R13 K16 ["Popover"]
       71 GETTABLEKS                       R13 R13 K22 ["useAsyncOnAbsoluteSizeChanged"]
       73 CALL                             R12 1 1
       74 GETIMPORT                        R13 K6 [require]
       76 GETTABLEKS                       R14 R0 K23 ["Types"]
       78 CALL                             R13 1 1
       79 GETTABLEKS                       R14 R2 K24 ["createContext"]
       81 DUPTABLE                         R15 K26 [{"depth"}]
       82 LOADN                            R16 1
       83 SETTABLEKS                       R16 R15 K25 ["depth"]
       85 CALL                             R14 1 1
       86 DUPCLOSURE                       R15 K27 [PROTO_3]
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R14
       89 CAPTURE                          VAL R10
       90 CAPTURE                          VAL R5
       91 CAPTURE                          VAL R9
       92 CAPTURE                          VAL R6
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R11
       95 CAPTURE                          VAL R12
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R4
       98 RETURN                           R15 1
