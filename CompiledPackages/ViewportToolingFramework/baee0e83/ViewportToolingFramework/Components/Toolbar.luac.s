PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R2 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 FASTCALL2K                       ASSERT R1 K1 ; [+4]
        9 LOADK                            R2 K1 ["ScreenGui was not mounted by useEffect"]
       10 GETIMPORT                        R0 K3 [assert]
       12 CALL                             R0 2 0
       13 GETUPVAL                         R0 1
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R1 R2 K0 ["current"]
       17 CALL                             R0 1 0
       18 GETUPVAL                         R0 2
       19 JUMPIFNOT                        R0 ; [+64]
       20 NEWTABLE                         R0 0 0
       22 GETUPVAL                         R1 3
       23 NAMECALL                         R1 R1 K4 ["GetChildren"]
       25 CALL                             R1 1 1
       26 MOVE                             R2 R1
       27 LOADNIL                          R3
       28 LOADNIL                          R4
       29 FORGPREP                         R2
       30 LOADK                            R9 K5 ["ScreenGui"]
       31 NAMECALL                         R7 R6 K6 ["IsA"]
       33 CALL                             R7 2 1
       34 JUMPIFNOT                        R7 ; [+29]
       35 LOADB                            R7 0
       36 NAMECALL                         R8 R6 K7 ["GetDescendants"]
       38 CALL                             R8 1 1
       39 MOVE                             R9 R8
       40 LOADNIL                          R10
       41 LOADNIL                          R11
       42 FORGPREP                         R9
       43 LOADK                            R16 K8 ["Frame"]
       44 NAMECALL                         R14 R13 K6 ["IsA"]
       46 CALL                             R14 2 1
       47 JUMPIFNOT                        R14 ; [+6]
       48 GETTABLEKS                       R14 R13 K9 ["Name"]
       50 JUMPIFNOTEQKS                    R14 K10 ["ToolbarBase"] ; [+3]
       52 LOADB                            R7 1
       53 JUMP                             ; [+2]
       54 FORGLOOP                         R9 2 ; [-12]
       56 JUMPIFNOT                        R7 ; [+7]
       57 FASTCALL2                        TABLE_INSERT R0 R6 ; [+5]
       59 MOVE                             R10 R0
       60 MOVE                             R11 R6
       61 GETIMPORT                        R9 K13 [table.insert]
       63 CALL                             R9 2 0
       64 FORGLOOP                         R2 2 ; [-35]
       66 LENGTH                           R2 R0
       67 LOADN                            R3 1
       68 JUMPIFNOTLT                      R3 R2 ; [+15]
       70 MOVE                             R2 R0
       71 LOADNIL                          R3
       72 LOADNIL                          R4
       73 FORGPREP                         R2
       74 GETUPVAL                         R8 0
       75 GETTABLEKS                       R7 R8 K0 ["current"]
       77 JUMPIFEQ                         R6 R7 ; [+4]
       79 NAMECALL                         R7 R6 K14 ["Destroy"]
       81 CALL                             R7 1 0
       82 FORGLOOP                         R2 2 ; [-9]
       84 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+2]
        3 LOADNIL                          R1
        4 JUMP                             ; [+2]
        5 GETUPVAL                         R1 1
        6 CALL                             R1 0 1
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R2 R3 K0 ["useState"]
       10 LOADNIL                          R3
       11 CALL                             R2 1 2
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R4 R5 K1 ["useRef"]
       15 LOADNIL                          R5
       16 CALL                             R4 1 1
       17 GETUPVAL                         R6 2
       18 GETTABLEKS                       R5 R6 K2 ["useEffect"]
       20 NEWCLOSURE                       R6 P0
       21 CAPTURE                          VAL R4
       22 CAPTURE                          VAL R3
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          UPVAL U4
       25 NEWTABLE                         R7 0 0
       27 CALL                             R5 2 0
       28 GETUPVAL                         R6 5
       29 GETTABLEKS                       R5 R6 K3 ["createPortal"]
       31 GETUPVAL                         R7 2
       32 GETTABLEKS                       R6 R7 K4 ["createElement"]
       34 LOADK                            R7 K5 ["ScreenGui"]
       35 DUPTABLE                         R8 K10 [{"Archivable", "DisplayOrder", "ZIndexBehavior", "ref"}]
       36 LOADB                            R9 0
       37 SETTABLEKS                       R9 R8 K6 ["Archivable"]
       39 GETTABLEKS                       R9 R0 K7 ["DisplayOrder"]
       41 SETTABLEKS                       R9 R8 K7 ["DisplayOrder"]
       43 GETIMPORT                        R9 K13 [Enum.ZIndexBehavior.Sibling]
       45 SETTABLEKS                       R9 R8 K8 ["ZIndexBehavior"]
       47 SETTABLEKS                       R4 R8 K9 ["ref"]
       49 DUPTABLE                         R9 K15 [{"Focus"}]
       50 JUMPIFNOT                        R2 ; [+95]
       51 GETUPVAL                         R11 6
       52 GETTABLEKS                       R10 R11 K16 ["provide"]
       54 NEWTABLE                         R11 0 1
       56 GETUPVAL                         R14 6
       57 GETTABLEKS                       R13 R14 K14 ["Focus"]
       59 GETTABLEKS                       R12 R13 K17 ["new"]
       61 MOVE                             R13 R2
       62 CALL                             R12 1 -1
       63 SETLIST                          R11 R12 -1 [1]
       65 GETUPVAL                         R13 2
       66 GETTABLEKS                       R12 R13 K4 ["createElement"]
       68 GETUPVAL                         R14 0
       69 CALL                             R14 0 1
       70 JUMPIFNOT                        R14 ; [+6]
       71 GETUPVAL                         R15 7
       72 GETTABLEKS                       R14 R15 K18 ["Components"]
       74 GETTABLEKS                       R13 R14 K19 ["FoundationProviderAdapter"]
       76 JUMP                             ; [+3]
       77 GETUPVAL                         R14 2
       78 GETTABLEKS                       R13 R14 K20 ["Fragment"]
       80 NEWTABLE                         R14 0 0
       82 DUPTABLE                         R15 K23 [{"Toolbar", "StyleLink"}]
       83 GETUPVAL                         R17 2
       84 GETTABLEKS                       R16 R17 K4 ["createElement"]
       86 LOADK                            R17 K24 ["Frame"]
       87 NEWTABLE                         R18 2 0
       89 GETUPVAL                         R21 2
       90 GETTABLEKS                       R20 R21 K25 ["Change"]
       92 GETTABLEKS                       R19 R20 K26 ["AbsoluteSize"]
       94 GETTABLEKS                       R20 R0 K27 ["OnToolbarSizeChanged"]
       96 SETTABLE                         R20 R18 R19
       97 GETUPVAL                         R20 2
       98 GETTABLEKS                       R19 R20 K28 ["Tag"]
      100 LOADK                            R21 K29 ["VPF-Toolbar VPF-Toolbar--%* VPF-Toolbar--%*"]
      101 GETUPVAL                         R23 8
      102 MOVE                             R24 R0
      103 CALL                             R23 1 1
      104 GETTABLEKS                       R25 R0 K31 ["InitialPosition"]
      106 ORK                              R24 R25 K30 ["Center"]
      107 NAMECALL                         R21 R21 K32 ["format"]
      109 CALL                             R21 3 1
      110 MOVE                             R20 R21
      111 SETTABLE                         R20 R18 R19
      112 DUPTABLE                         R19 K34 [{"ToolbarBase"}]
      113 GETUPVAL                         R21 2
      114 GETTABLEKS                       R20 R21 K4 ["createElement"]
      116 GETUPVAL                         R21 9
      117 MOVE                             R22 R0
      118 CALL                             R20 2 1
      119 SETTABLEKS                       R20 R19 K33 ["ToolbarBase"]
      121 CALL                             R16 3 1
      122 SETTABLEKS                       R16 R15 K21 ["Toolbar"]
      124 GETUPVAL                         R17 0
      125 CALL                             R17 0 1
      126 JUMPIFNOT                        R17 ; [+6]
      127 GETUPVAL                         R17 2
      128 GETTABLEKS                       R16 R17 K4 ["createElement"]
      130 GETUPVAL                         R17 10
      131 CALL                             R16 1 1
      132 JUMP                             ; [+8]
      133 GETUPVAL                         R17 2
      134 GETTABLEKS                       R16 R17 K4 ["createElement"]
      136 LOADK                            R17 K22 ["StyleLink"]
      137 DUPTABLE                         R18 K36 [{"StyleSheet"}]
      138 SETTABLEKS                       R1 R18 K35 ["StyleSheet"]
      140 CALL                             R16 2 1
      141 SETTABLEKS                       R16 R15 K22 ["StyleLink"]
      143 CALL                             R12 3 -1
      144 CALL                             R10 -1 1
      145 JUMP                             ; [+1]
      146 LOADNIL                          R10
      147 SETTABLEKS                       R10 R9 K14 ["Focus"]
      149 CALL                             R6 3 1
      150 GETUPVAL                         R7 4
      151 CALL                             R5 2 -1
      152 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["CoreGui"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["ViewportToolingFramework"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R1 K10 ["Parent"]
       17 GETTABLEKS                       R3 R4 K11 ["Framework"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R5 R1 K10 ["Parent"]
       24 GETTABLEKS                       R4 R5 K12 ["React"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R6 R1 K10 ["Parent"]
       31 GETTABLEKS                       R5 R6 K13 ["ReactRoblox"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R7 R1 K10 ["Parent"]
       38 GETTABLEKS                       R6 R7 K14 ["StudioFoundation"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R8 R1 K15 ["Components"]
       45 GETTABLEKS                       R7 R8 K16 ["StyleLink"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K9 [require]
       50 GETTABLEKS                       R9 R1 K15 ["Components"]
       52 GETTABLEKS                       R8 R9 K17 ["ToolbarBase"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K9 [require]
       57 GETTABLEKS                       R9 R1 K18 ["Types"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K9 [require]
       62 GETTABLEKS                       R11 R1 K19 ["Util"]
       64 GETTABLEKS                       R10 R11 K20 ["getToolbarDirection"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K9 [require]
       69 GETTABLEKS                       R12 R1 K21 ["Hooks"]
       71 GETTABLEKS                       R11 R12 K22 ["useStyleSheet"]
       73 CALL                             R10 1 1
       74 GETIMPORT                        R11 K9 [require]
       76 GETTABLEKS                       R13 R1 K23 ["Flags"]
       78 GETTABLEKS                       R12 R13 K24 ["getFFlagViewportToolingFrameworkMoreComponents"]
       80 CALL                             R11 1 1
       81 GETIMPORT                        R12 K1 [game]
       83 LOADK                            R14 K25 ["ViewportToolingFrameworkingDebugCleanupCode"]
       84 LOADB                            R15 0
       85 NAMECALL                         R12 R12 K26 ["DefineFastFlag"]
       87 CALL                             R12 3 1
       88 GETTABLEKS                       R13 R2 K27 ["ContextServices"]
       90 DUPCLOSURE                       R14 K28 [PROTO_1]
       91 CAPTURE                          VAL R11
       92 CAPTURE                          VAL R10
       93 CAPTURE                          VAL R3
       94 CAPTURE                          VAL R12
       95 CAPTURE                          VAL R0
       96 CAPTURE                          VAL R4
       97 CAPTURE                          VAL R13
       98 CAPTURE                          VAL R5
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R7
      101 CAPTURE                          VAL R6
      102 RETURN                           R14 1
