PROTO_0:
        0 LOADN                            R1 0
        1 GETUPVAL                         R2 0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETTABLEKS                       R7 R6 K0 ["current"]
        7 JUMPIFEQKNIL                     R7 ; [+6]
        9 GETTABLEKS                       R8 R7 K1 ["AbsoluteSize"]
       11 GETTABLEKS                       R8 R8 K2 ["Y"]
       13 ADD                              R1 R1 R8
       14 FORGLOOP                         R2 2 ; [-10]
       16 GETUPVAL                         R3 0
       17 LENGTH                           R2 R3
       18 LOADN                            R3 0
       19 JUMPIFNOTLT                      R3 R2 ; [+4]
       21 SUBK                             R4 R2 K4 [1]
       22 MULK                             R3 R4 K3 [5]
       23 ADD                              R1 R1 R3
       24 GETUPVAL                         R3 1
       25 MOVE                             R4 R1
       26 CALL                             R3 1 0
       27 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 LOADB                            R2 0 +1
        6 LOADB                            R2 1
        7 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        9 LOADK                            R3 K1 ["scrollingFrame somehow doesn't exist"]
       10 GETIMPORT                        R1 K3 [assert]
       12 CALL                             R1 2 0
       13 GETUPVAL                         R1 1
       14 MOVE                             R2 R0
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 DUPTABLE                         R4 K9 [{"key", "displayText", "icon", "index", "keepIconColor", "minSize", "onClick", "text", "itemRef"}]
        3 SETTABLEKS                       R1 R4 K0 ["key"]
        5 GETTABLEKS                       R5 R0 K1 ["displayText"]
        7 SETTABLEKS                       R5 R4 K1 ["displayText"]
        9 GETTABLEKS                       R5 R0 K2 ["icon"]
       11 SETTABLEKS                       R5 R4 K2 ["icon"]
       13 SETTABLEKS                       R1 R4 K3 ["index"]
       15 GETTABLEKS                       R5 R0 K4 ["keepIconColor"]
       17 SETTABLEKS                       R5 R4 K4 ["keepIconColor"]
       19 GETUPVAL                         R5 2
       20 SETTABLEKS                       R5 R4 K5 ["minSize"]
       22 GETUPVAL                         R5 3
       23 GETTABLEKS                       R5 R5 K10 ["onItemClicked"]
       25 SETTABLEKS                       R5 R4 K6 ["onClick"]
       27 GETTABLEKS                       R5 R0 K7 ["text"]
       29 SETTABLEKS                       R5 R4 K7 ["text"]
       31 GETUPVAL                         R6 4
       32 GETTABLE                         R5 R6 R1
       33 SETTABLEKS                       R5 R4 K8 ["itemRef"]
       35 CALL                             R2 2 1
       36 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useState"]
        5 LOADN                            R3 0
        6 CALL                             R2 1 2
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K1 ["useRef"]
       10 LOADNIL                          R5
       11 CALL                             R4 1 1
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R7 R0 K2 ["itemData"]
       15 LENGTH                           R6 R7
       16 LOADNIL                          R7
       17 CALL                             R5 2 1
       18 GETTABLEKS                       R7 R0 K3 ["shouldIgnoreMaxHeight"]
       20 JUMPIFNOT                        R7 ; [+2]
       21 MOVE                             R6 R2
       22 JUMP                             ; [+7]
       23 FASTCALL2K                       MATH_MIN R2 K4 ; [+5]
       25 MOVE                             R7 R2
       26 LOADK                            R8 K4 [130]
       27 GETIMPORT                        R6 K7 [math.min]
       29 CALL                             R6 2 1
       30 JUMPIFLT                         R6 R2 ; [+2]
       32 LOADB                            R7 0 +1
       33 LOADB                            R7 1
       34 GETIMPORT                        R8 K10 [UDim2.new]
       36 LOADN                            R9 1
       37 JUMPIFNOT                        R7 ; [+2]
       38 LOADN                            R10 248
       39 JUMP                             ; [+1]
       40 LOADN                            R10 0
       41 LOADN                            R11 0
       42 LOADN                            R12 22
       43 CALL                             R8 4 1
       44 GETUPVAL                         R9 1
       45 GETTABLEKS                       R9 R9 K11 ["useCallback"]
       47 NEWCLOSURE                       R10 P0
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R3
       50 NEWTABLE                         R11 0 1
       52 MOVE                             R12 R5
       53 SETLIST                          R11 R12 1 [1]
       55 CALL                             R9 2 1
       56 GETUPVAL                         R10 1
       57 GETTABLEKS                       R10 R10 K12 ["useEffect"]
       59 NEWCLOSURE                       R11 P1
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R9
       62 NEWTABLE                         R12 0 1
       64 MOVE                             R13 R5
       65 SETLIST                          R12 R13 1 [1]
       67 CALL                             R10 2 0
       68 GETUPVAL                         R10 3
       69 LOADK                            R11 K13 ["Frame"]
       70 NEWTABLE                         R12 4 0
       72 LOADN                            R14 0
       73 JUMPIFLT                         R14 R2 ; [+2]
       75 LOADB                            R13 0 +1
       76 LOADB                            R13 1
       77 SETTABLEKS                       R13 R12 K14 ["Visible"]
       79 GETTABLEKS                       R13 R0 K15 ["dropdownRef"]
       81 SETTABLEKS                       R13 R12 K16 ["ref"]
       83 GETUPVAL                         R13 1
       84 GETTABLEKS                       R13 R13 K17 ["Tag"]
       86 LOADK                            R14 K18 ["X-Column X-FitY FindReplaceAll-BG-Surface100 FindReplaceAll-Dropdown data-testid=DropdownFrame"]
       87 SETTABLE                         R14 R12 R13
       88 DUPTABLE                         R13 K20 [{"ScrollingFrame"}]
       89 GETUPVAL                         R14 3
       90 LOADK                            R15 K19 ["ScrollingFrame"]
       91 NEWTABLE                         R16 8 0
       93 MOVE                             R17 R1
       94 CALL                             R17 0 1
       95 SETTABLEKS                       R17 R16 K21 ["LayoutOrder"]
       97 JUMPIFNOT                        R7 ; [+2]
       98 LOADN                            R17 8
       99 JUMP                             ; [+1]
      100 LOADN                            R17 0
      101 SETTABLEKS                       R17 R16 K22 ["ScrollBarThickness"]
      103 GETIMPORT                        R17 K10 [UDim2.new]
      105 LOADN                            R18 1
      106 LOADN                            R19 0
      107 LOADN                            R20 0
      108 MOVE                             R21 R6
      109 CALL                             R17 4 1
      110 SETTABLEKS                       R17 R16 K23 ["Size"]
      112 LOADN                            R17 1
      113 SETTABLEKS                       R17 R16 K24 ["ZIndex"]
      115 SETTABLEKS                       R4 R16 K16 ["ref"]
      117 LOADN                            R17 1
      118 SETTABLEKS                       R17 R16 K25 ["BackgroundTransparency"]
      120 GETUPVAL                         R17 1
      121 GETTABLEKS                       R17 R17 K26 ["Change"]
      123 GETTABLEKS                       R17 R17 K27 ["AbsoluteSize"]
      125 SETTABLE                         R9 R16 R17
      126 GETUPVAL                         R17 1
      127 GETTABLEKS                       R17 R17 K17 ["Tag"]
      129 LOADK                            R18 K28 ["FindReplaceAll-XColumnS FindReplaceAll-SidePadS"]
      130 SETTABLE                         R18 R16 R17
      131 GETUPVAL                         R17 4
      132 GETTABLEKS                       R18 R0 K2 ["itemData"]
      134 NEWCLOSURE                       R19 P2
      135 CAPTURE                          UPVAL U3
      136 CAPTURE                          UPVAL U5
      137 CAPTURE                          VAL R8
      138 CAPTURE                          VAL R0
      139 CAPTURE                          VAL R5
      140 CALL                             R17 2 -1
      141 CALL                             R14 -1 1
      142 SETTABLEKS                       R14 R13 K19 ["ScrollingFrame"]
      144 CALL                             R10 3 -1
      145 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FindReplaceAll"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["createElement"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Packages"]
       20 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R3 R3 K10 ["createNextOrder"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R0 K11 ["Src"]
       29 GETTABLEKS                       R5 R5 K12 ["Components"]
       31 GETTABLEKS                       R5 R5 K13 ["Dropdown"]
       33 GETTABLEKS                       R5 R5 K14 ["DropdownItem"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K5 [require]
       38 GETTABLEKS                       R6 R0 K11 ["Src"]
       40 GETTABLEKS                       R6 R6 K15 ["Util"]
       42 GETTABLEKS                       R6 R6 K16 ["mapValues"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K5 [require]
       47 GETTABLEKS                       R7 R0 K11 ["Src"]
       49 GETTABLEKS                       R7 R7 K17 ["Hooks"]
       51 GETTABLEKS                       R7 R7 K18 ["useRefs"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K5 [require]
       56 GETTABLEKS                       R8 R0 K11 ["Src"]
       58 GETTABLEKS                       R8 R8 K19 ["Types"]
       60 CALL                             R7 1 1
       61 DUPCLOSURE                       R8 K20 [PROTO_3]
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R4
       68 RETURN                           R8 1
