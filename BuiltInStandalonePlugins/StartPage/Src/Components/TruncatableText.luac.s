PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["TextFits"]
        4 NOT                              R1 R2
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["GuiState"]
        4 GETIMPORT                        R3 K3 [Enum.GuiState.Hover]
        6 JUMPIFEQ                         R2 R3 ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+3]
        5 LOADNIL                          R1
        6 RETURN                           R1 1
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          VAL R0
       10 NEWCLOSURE                       R2 P1
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          VAL R0
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R5 R0 K1 ["TextFits"]
       16 NOT                              R4 R5
       17 CALL                             R3 1 0
       18 GETUPVAL                         R3 2
       19 GETTABLEKS                       R5 R0 K2 ["GuiState"]
       21 GETIMPORT                        R6 K5 [Enum.GuiState.Hover]
       23 JUMPIFEQ                         R5 R6 ; [+2]
       25 LOADB                            R4 0 +1
       26 LOADB                            R4 1
       27 CALL                             R3 1 0
       28 NEWTABLE                         R3 0 2
       30 LOADK                            R6 K1 ["TextFits"]
       31 NAMECALL                         R4 R0 K6 ["GetPropertyChangedSignal"]
       33 CALL                             R4 2 1
       34 MOVE                             R6 R1
       35 NAMECALL                         R4 R4 K7 ["Connect"]
       37 CALL                             R4 2 1
       38 LOADK                            R7 K2 ["GuiState"]
       39 NAMECALL                         R5 R0 K6 ["GetPropertyChangedSignal"]
       41 CALL                             R5 2 1
       42 MOVE                             R7 R2
       43 NAMECALL                         R5 R5 K7 ["Connect"]
       45 CALL                             R5 2 -1
       46 SETLIST                          R3 R4 -1 [1]
       48 NEWCLOSURE                       R4 P2
       49 CAPTURE                          VAL R3
       50 RETURN                           R4 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 LOADN                            R3 320
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K0 ["useRef"]
        8 LOADNIL                          R4
        9 CALL                             R3 1 1
       10 GETUPVAL                         R4 3
       11 LOADB                            R5 0
       12 CALL                             R4 1 2
       13 GETUPVAL                         R6 3
       14 LOADB                            R7 0
       15 CALL                             R6 1 2
       16 GETUPVAL                         R8 4
       17 NEWCLOSURE                       R9 P0
       18 CAPTURE                          VAL R3
       19 CAPTURE                          VAL R5
       20 CAPTURE                          VAL R7
       21 NEWTABLE                         R10 0 0
       23 CALL                             R8 2 0
       24 GETUPVAL                         R8 2
       25 GETTABLEKS                       R8 R8 K1 ["createElement"]
       27 GETUPVAL                         R9 2
       28 GETTABLEKS                       R9 R9 K2 ["Fragment"]
       30 LOADNIL                          R10
       31 DUPTABLE                         R11 K5 [{"Label", "Tooltip"}]
       32 GETUPVAL                         R12 2
       33 GETTABLEKS                       R12 R12 K1 ["createElement"]
       35 GETUPVAL                         R13 5
       36 DUPTABLE                         R14 K10 [{"Text", "tag", "LayoutOrder", "ref"}]
       37 GETTABLEKS                       R15 R0 K11 ["text"]
       39 SETTABLEKS                       R15 R14 K6 ["Text"]
       41 GETTABLEKS                       R15 R0 K7 ["tag"]
       43 SETTABLEKS                       R15 R14 K7 ["tag"]
       45 GETTABLEKS                       R15 R0 K12 ["layoutOrder"]
       47 SETTABLEKS                       R15 R14 K8 ["LayoutOrder"]
       49 SETTABLEKS                       R3 R14 K9 ["ref"]
       51 CALL                             R12 2 1
       52 SETTABLEKS                       R12 R11 K3 ["Label"]
       54 JUMPIFNOT                        R4 ; [+98]
       55 GETUPVAL                         R12 2
       56 GETTABLEKS                       R12 R12 K1 ["createElement"]
       58 GETUPVAL                         R13 6
       59 GETTABLEKS                       R13 R13 K13 ["Root"]
       61 DUPTABLE                         R14 K15 [{"isOpen"}]
       62 SETTABLEKS                       R6 R14 K14 ["isOpen"]
       64 DUPTABLE                         R15 K18 [{"Anchor", "Content"}]
       65 GETUPVAL                         R16 2
       66 GETTABLEKS                       R16 R16 K1 ["createElement"]
       68 GETUPVAL                         R17 6
       69 GETTABLEKS                       R17 R17 K16 ["Anchor"]
       71 DUPTABLE                         R18 K20 [{"anchorRef"}]
       72 SETTABLEKS                       R3 R18 K19 ["anchorRef"]
       74 CALL                             R16 2 1
       75 SETTABLEKS                       R16 R15 K16 ["Anchor"]
       77 GETUPVAL                         R16 2
       78 GETTABLEKS                       R16 R16 K1 ["createElement"]
       80 GETUPVAL                         R17 6
       81 GETTABLEKS                       R17 R17 K17 ["Content"]
       83 DUPTABLE                         R18 K28 [{["hasArrow"] = False, ["align"], ["side"], ["radius"], ["backgroundStyle"], ["selectionGroup"] = False}]
       84 GETUPVAL                         R19 7
       85 GETTABLEKS                       R19 R19 K29 ["Start"]
       87 SETTABLEKS                       R19 R18 K23 ["align"]
       89 DUPTABLE                         R19 K32 [{"position", "offset"}]
       90 GETUPVAL                         R20 8
       91 GETTABLEKS                       R20 R20 K33 ["Top"]
       93 SETTABLEKS                       R20 R19 K30 ["position"]
       95 GETTABLEKS                       R20 R1 K34 ["Size"]
       97 GETTABLEKS                       R20 R20 K35 ["Size_200"]
       99 SETTABLEKS                       R20 R19 K31 ["offset"]
      101 SETTABLEKS                       R19 R18 K24 ["side"]
      103 GETUPVAL                         R19 9
      104 GETTABLEKS                       R19 R19 K36 ["Small"]
      106 SETTABLEKS                       R19 R18 K25 ["radius"]
      108 GETTABLEKS                       R19 R1 K37 ["Inverse"]
      110 GETTABLEKS                       R19 R19 K38 ["Surface"]
      112 GETTABLEKS                       R19 R19 K39 ["Surface_0"]
      114 SETTABLEKS                       R19 R18 K26 ["backgroundStyle"]
      116 DUPTABLE                         R19 K41 [{"Container"}]
      117 GETUPVAL                         R20 2
      118 GETTABLEKS                       R20 R20 K1 ["createElement"]
      120 GETUPVAL                         R21 10
      121 DUPTABLE                         R22 K44 [{["tag"] = "auto-xy padding-x-small padding-y-xsmall", ["sizeConstraint"]}]
      122 DUPTABLE                         R23 K46 [{"MaxSize"}]
      123 GETIMPORT                        R24 K49 [Vector2.new]
      125 MOVE                             R25 R2
      126 LOADK                            R26 K50 [∞]
      127 CALL                             R24 2 1
      128 SETTABLEKS                       R24 R23 K45 ["MaxSize"]
      130 SETTABLEKS                       R23 R22 K43 ["sizeConstraint"]
      132 DUPTABLE                         R23 K51 [{"Text"}]
      133 GETUPVAL                         R24 2
      134 GETTABLEKS                       R24 R24 K1 ["createElement"]
      136 GETUPVAL                         R25 5
      137 DUPTABLE                         R26 K53 [{["Text"], ["tag"] = "auto-xy text-body-small text-wrap text-align-x-left content-inverse-default"}]
      138 GETTABLEKS                       R27 R0 K11 ["text"]
      140 SETTABLEKS                       R27 R26 K6 ["Text"]
      142 CALL                             R24 2 1
      143 SETTABLEKS                       R24 R23 K6 ["Text"]
      145 CALL                             R20 3 1
      146 SETTABLEKS                       R20 R19 K40 ["Container"]
      148 CALL                             R16 3 1
      149 SETTABLEKS                       R16 R15 K17 ["Content"]
      151 CALL                             R12 3 1
      152 JUMP                             ; [+1]
      153 LOADNIL                          R12
      154 SETTABLEKS                       R12 R11 K4 ["Tooltip"]
      156 CALL                             R8 3 -1
      157 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["useState"]
       16 GETTABLEKS                       R3 R1 K9 ["useEffect"]
       18 GETIMPORT                        R4 K5 [require]
       20 GETTABLEKS                       R5 R0 K10 ["Src"]
       22 GETTABLEKS                       R5 R5 K11 ["Util"]
       24 GETTABLEKS                       R5 R5 K12 ["Foundation"]
       26 CALL                             R4 1 1
       27 GETTABLEKS                       R5 R4 K13 ["Hooks"]
       29 GETTABLEKS                       R5 R5 K14 ["useTokens"]
       31 GETTABLEKS                       R6 R4 K13 ["Hooks"]
       33 GETTABLEKS                       R6 R6 K15 ["useScaledValue"]
       35 GETTABLEKS                       R7 R4 K16 ["Text"]
       37 GETTABLEKS                       R8 R4 K17 ["View"]
       39 GETTABLEKS                       R9 R4 K18 ["Popover"]
       41 GETTABLEKS                       R10 R4 K19 ["Enums"]
       43 GETTABLEKS                       R10 R10 K20 ["Radius"]
       45 GETTABLEKS                       R11 R4 K19 ["Enums"]
       47 GETTABLEKS                       R11 R11 K21 ["PopoverSide"]
       49 GETTABLEKS                       R12 R4 K19 ["Enums"]
       51 GETTABLEKS                       R12 R12 K22 ["PopoverAlign"]
       53 DUPCLOSURE                       R13 K23 [PROTO_4]
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R9
       61 CAPTURE                          VAL R12
       62 CAPTURE                          VAL R11
       63 CAPTURE                          VAL R10
       64 CAPTURE                          VAL R8
       65 RETURN                           R13 1
