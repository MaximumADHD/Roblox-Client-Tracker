PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 LOADN                            R1 1
        4 CALL                             R0 1 1
        5 NEWTABLE                         R1 0 0
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R2 R5 K1 ["errors"]
       10 LOADNIL                          R3
       11 LOADNIL                          R4
       12 FORGPREP                         R2
       13 LOADN                            R7 1
       14 JUMPIFNOTLT                      R7 R5 ; [+16]
       16 MOVE                             R8 R1
       17 GETUPVAL                         R9 2
       18 GETUPVAL                         R11 3
       19 GETTABLEKS                       R10 R11 K2 ["Divider"]
       21 DUPTABLE                         R11 K4 [{"layoutOrder"}]
       22 MOVE                             R12 R0
       23 CALL                             R12 0 1
       24 SETTABLEKS                       R12 R11 K3 ["layoutOrder"]
       26 CALL                             R9 2 -1
       27 FASTCALL                         TABLE_INSERT ; [+2]
       28 GETIMPORT                        R7 K7 [table.insert]
       30 CALL                             R7 -1 0
       31 MOVE                             R8 R1
       32 GETUPVAL                         R9 2
       33 GETUPVAL                         R11 3
       34 GETTABLEKS                       R10 R11 K8 ["View"]
       36 DUPTABLE                         R11 K10 [{"layoutOrder", "tag"}]
       37 MOVE                             R12 R0
       38 CALL                             R12 0 1
       39 SETTABLEKS                       R12 R11 K3 ["layoutOrder"]
       41 LOADK                            R12 K11 ["col size-full-0 auto-y padding-y-small"]
       42 SETTABLEKS                       R12 R11 K9 ["tag"]
       44 NEWTABLE                         R12 0 2
       46 GETTABLEKS                       R14 R6 K12 ["label"]
       48 JUMPIFNOTEQKNIL                  R14 ; [+3]
       50 LOADNIL                          R13
       51 JUMP                             ; [+16]
       52 GETUPVAL                         R13 2
       53 GETUPVAL                         R15 3
       54 GETTABLEKS                       R14 R15 K13 ["Text"]
       56 DUPTABLE                         R15 K15 [{"tag", "Text", "TextWrapped"}]
       57 LOADK                            R16 K16 ["size-full-0 auto-y text-align-x-left text-title-small"]
       58 SETTABLEKS                       R16 R15 K9 ["tag"]
       60 GETTABLEKS                       R16 R6 K12 ["label"]
       62 SETTABLEKS                       R16 R15 K13 ["Text"]
       64 LOADB                            R16 1
       65 SETTABLEKS                       R16 R15 K14 ["TextWrapped"]
       67 CALL                             R13 2 1
       68 GETUPVAL                         R14 2
       69 GETUPVAL                         R16 3
       70 GETTABLEKS                       R15 R16 K13 ["Text"]
       72 DUPTABLE                         R16 K15 [{"tag", "Text", "TextWrapped"}]
       73 LOADK                            R17 K17 ["size-full-0 auto-y text-align-x-left text-body-small"]
       74 SETTABLEKS                       R17 R16 K9 ["tag"]
       76 GETTABLEKS                       R17 R6 K18 ["message"]
       78 SETTABLEKS                       R17 R16 K13 ["Text"]
       80 LOADB                            R17 1
       81 SETTABLEKS                       R17 R16 K14 ["TextWrapped"]
       83 CALL                             R14 2 -1
       84 SETLIST                          R12 R13 -1 [1]
       86 CALL                             R9 3 -1
       87 FASTCALL                         TABLE_INSERT ; [+2]
       88 GETIMPORT                        R7 K7 [table.insert]
       90 CALL                             R7 -1 0
       91 FORGLOOP                         R2 2 ; [-79]
       93 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["errors"]
        2 JUMPIF                           R1 ; [+6]
        3 DUPTABLE                         R1 K2 [{"message"}]
        4 LOADK                            R2 K3 ["unexpected internal error"]
        5 SETTABLEKS                       R2 R1 K1 ["message"]
        7 SETTABLEKS                       R1 R0 K0 ["errors"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K4 ["Hooks"]
       12 GETTABLEKS                       R1 R2 K5 ["useTokens"]
       14 CALL                             R1 0 1
       15 NEWTABLE                         R2 0 1
       17 GETUPVAL                         R3 1
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R4 R5 K6 ["View"]
       21 DUPTABLE                         R5 K8 [{"tag"}]
       22 LOADK                            R6 K9 ["col size-full flex-y-fill padding-medium gap-medium"]
       23 SETTABLEKS                       R6 R5 K7 ["tag"]
       25 NEWTABLE                         R6 0 2
       27 GETUPVAL                         R7 1
       28 GETUPVAL                         R9 0
       29 GETTABLEKS                       R8 R9 K6 ["View"]
       31 DUPTABLE                         R9 K8 [{"tag"}]
       32 LOADK                            R10 K10 ["row size-full-0 auto-y gap-small"]
       33 SETTABLEKS                       R10 R9 K7 ["tag"]
       35 NEWTABLE                         R10 0 2
       37 GETUPVAL                         R11 1
       38 GETUPVAL                         R13 0
       39 GETTABLEKS                       R12 R13 K11 ["Icon"]
       41 DUPTABLE                         R13 K16 [{"name", "size", "variant", "style"}]
       42 GETUPVAL                         R17 0
       43 GETTABLEKS                       R16 R17 K17 ["Enums"]
       45 GETTABLEKS                       R15 R16 K18 ["IconName"]
       47 GETTABLEKS                       R14 R15 K19 ["CircleX"]
       49 SETTABLEKS                       R14 R13 K12 ["name"]
       51 GETUPVAL                         R17 0
       52 GETTABLEKS                       R16 R17 K17 ["Enums"]
       54 GETTABLEKS                       R15 R16 K20 ["IconSize"]
       56 GETTABLEKS                       R14 R15 K21 ["Medium"]
       58 SETTABLEKS                       R14 R13 K13 ["size"]
       60 GETUPVAL                         R17 0
       61 GETTABLEKS                       R16 R17 K17 ["Enums"]
       63 GETTABLEKS                       R15 R16 K22 ["IconVariant"]
       65 GETTABLEKS                       R14 R15 K23 ["Filled"]
       67 SETTABLEKS                       R14 R13 K14 ["variant"]
       69 GETTABLEKS                       R17 R1 K24 ["Color"]
       71 GETTABLEKS                       R16 R17 K25 ["Extended"]
       73 GETTABLEKS                       R15 R16 K26 ["Red"]
       75 GETTABLEKS                       R14 R15 K27 ["Red_700"]
       77 SETTABLEKS                       R14 R13 K15 ["style"]
       79 CALL                             R11 2 1
       80 GETUPVAL                         R12 1
       81 GETUPVAL                         R14 0
       82 GETTABLEKS                       R13 R14 K28 ["Text"]
       84 DUPTABLE                         R14 K29 [{"Text", "tag"}]
       85 LOADK                            R15 K30 ["Errors occured during reimport"]
       86 SETTABLEKS                       R15 R14 K28 ["Text"]
       88 LOADK                            R15 K31 [" flex-y-fill auto-y text-align-x-left text-align-y-center text-title-large"]
       89 SETTABLEKS                       R15 R14 K7 ["tag"]
       91 CALL                             R12 2 -1
       92 SETLIST                          R10 R11 -1 [1]
       94 CALL                             R7 3 1
       95 GETUPVAL                         R8 1
       96 GETUPVAL                         R10 0
       97 GETTABLEKS                       R9 R10 K6 ["View"]
       99 DUPTABLE                         R10 K8 [{"tag"}]
      100 LOADK                            R11 K32 ["col size-full-0 auto-y padding-left-medium"]
      101 SETTABLEKS                       R11 R10 K7 ["tag"]
      103 NEWTABLE                         R11 0 1
      105 GETUPVAL                         R12 1
      106 GETUPVAL                         R14 0
      107 GETTABLEKS                       R13 R14 K33 ["ScrollView"]
      109 DUPTABLE                         R14 K36 [{"layout", "scroll", "tag"}]
      110 DUPTABLE                         R15 K38 [{"FillDirection"}]
      111 GETIMPORT                        R16 K41 [Enum.FillDirection.Vertical]
      113 SETTABLEKS                       R16 R15 K37 ["FillDirection"]
      115 SETTABLEKS                       R15 R14 K34 ["layout"]
      117 DUPTABLE                         R15 K45 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      118 GETIMPORT                        R16 K48 [Enum.AutomaticSize.Y]
      120 SETTABLEKS                       R16 R15 K42 ["AutomaticCanvasSize"]
      122 GETIMPORT                        R16 K51 [UDim2.fromOffset]
      124 LOADN                            R17 0
      125 LOADN                            R18 0
      126 CALL                             R16 2 1
      127 SETTABLEKS                       R16 R15 K43 ["CanvasSize"]
      129 GETIMPORT                        R16 K52 [Enum.ScrollingDirection.Y]
      131 SETTABLEKS                       R16 R15 K44 ["ScrollingDirection"]
      133 SETTABLEKS                       R15 R14 K35 ["scroll"]
      135 LOADK                            R15 K53 ["col size-full"]
      136 SETTABLEKS                       R15 R14 K7 ["tag"]
      138 NEWTABLE                         R15 0 1
      140 GETUPVAL                         R16 1
      141 NEWCLOSURE                       R17 P0
      142 CAPTURE                          UPVAL U2
      143 CAPTURE                          VAL R0
      144 CAPTURE                          UPVAL U1
      145 CAPTURE                          UPVAL U0
      146 CALL                             R16 1 -1
      147 SETLIST                          R15 R16 -1 [1]
      149 CALL                             R12 3 -1
      150 SETLIST                          R11 R12 -1 [1]
      152 CALL                             R8 3 -1
      153 SETLIST                          R6 R7 -1 [1]
      155 CALL                             R3 3 -1
      156 SETLIST                          R2 R3 -1 [1]
      158 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReimportPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["createElement"]
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R7 R0 K10 ["Lib"]
       27 GETTABLEKS                       R6 R7 K11 ["Util"]
       29 GETTABLEKS                       R5 R6 K12 ["Counter"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R8 R0 K13 ["Src"]
       36 GETTABLEKS                       R7 R8 K14 ["Dialogs"]
       38 GETTABLEKS                       R6 R7 K15 ["Types"]
       40 CALL                             R5 1 1
       41 DUPCLOSURE                       R6 K16 [PROTO_1]
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R4
       45 RETURN                           R6 1
