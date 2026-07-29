PROTO_0:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["StyleSheet"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R1 K1 ["Design"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["createElement"]
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K4 ["Components"]
       14 GETTABLEKS                       R3 R3 K5 ["FoundationProviderAdapter"]
       16 NEWTABLE                         R4 0 0
       18 GETTABLEKS                       R5 R0 K6 ["children"]
       20 CALL                             R2 3 1
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R3 R3 K7 ["useState"]
       24 DUPCLOSURE                       R4 K8 [PROTO_0]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [next]
       28 MOVE                             R5 R1
       29 CALL                             R4 1 1
       30 JUMPIFNOTEQKNIL                  R4 ; [+18]
       32 GETUPVAL                         R4 3
       33 GETTABLEKS                       R4 R4 K11 ["provide"]
       35 NEWTABLE                         R5 0 1
       37 GETUPVAL                         R6 3
       38 GETTABLEKS                       R6 R6 K1 ["Design"]
       40 GETTABLEKS                       R6 R6 K12 ["new"]
       42 MOVE                             R7 R3
       43 CALL                             R6 1 -1
       44 SETLIST                          R5 R6 -1 [1]
       46 MOVE                             R6 R2
       47 CALL                             R4 2 1
       48 MOVE                             R2 R4
       49 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R2 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 FASTCALL2K                       ASSERT R1 K1 ; [+4]
        9 LOADK                            R2 K1 ["ScreenGui was not mounted by useEffect"]
       10 GETIMPORT                        R0 K3 [assert]
       12 CALL                             R0 2 0
       13 GETUPVAL                         R0 1
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K0 ["current"]
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
       74 GETUPVAL                         R7 0
       75 GETTABLEKS                       R7 R7 K0 ["current"]
       77 JUMPIFEQ                         R6 R7 ; [+4]
       79 NAMECALL                         R7 R6 K14 ["Destroy"]
       81 CALL                             R7 1 0
       82 FORGLOOP                         R2 2 ; [-9]
       84 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+2]
        3 LOADNIL                          R1
        4 JUMP                             ; [+2]
        5 GETUPVAL                         R1 1
        6 CALL                             R1 0 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K0 ["useState"]
       10 LOADNIL                          R3
       11 CALL                             R2 1 2
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R4 R4 K1 ["useRef"]
       15 LOADNIL                          R5
       16 CALL                             R4 1 1
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R5 R5 K2 ["useEffect"]
       20 NEWCLOSURE                       R6 P0
       21 CAPTURE                          VAL R4
       22 CAPTURE                          VAL R3
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          UPVAL U4
       25 NEWTABLE                         R7 0 0
       27 CALL                             R5 2 0
       28 GETUPVAL                         R5 5
       29 GETTABLEKS                       R5 R5 K3 ["createPortal"]
       31 GETUPVAL                         R6 2
       32 GETTABLEKS                       R6 R6 K4 ["createElement"]
       34 LOADK                            R7 K5 ["ScreenGui"]
       35 DUPTABLE                         R8 K11 [{["Archivable"] = False, ["DisplayOrder"], ["ZIndexBehavior"], ["ref"]}]
       36 GETTABLEKS                       R9 R0 K8 ["DisplayOrder"]
       38 SETTABLEKS                       R9 R8 K8 ["DisplayOrder"]
       40 GETIMPORT                        R9 K14 [Enum.ZIndexBehavior.Sibling]
       42 SETTABLEKS                       R9 R8 K9 ["ZIndexBehavior"]
       44 SETTABLEKS                       R4 R8 K10 ["ref"]
       46 DUPTABLE                         R9 K16 [{"Focus"}]
       47 JUMPIFNOT                        R2 ; [+91]
       48 GETUPVAL                         R10 6
       49 GETTABLEKS                       R10 R10 K17 ["provide"]
       51 NEWTABLE                         R11 0 1
       53 GETUPVAL                         R12 6
       54 GETTABLEKS                       R12 R12 K15 ["Focus"]
       56 GETTABLEKS                       R12 R12 K18 ["new"]
       58 MOVE                             R13 R2
       59 CALL                             R12 1 -1
       60 SETLIST                          R11 R12 -1 [1]
       62 GETUPVAL                         R12 2
       63 GETTABLEKS                       R12 R12 K4 ["createElement"]
       65 GETUPVAL                         R14 0
       66 CALL                             R14 0 1
       67 JUMPIFNOT                        R14 ; [+2]
       68 GETUPVAL                         R13 7
       69 JUMP                             ; [+3]
       70 GETUPVAL                         R13 2
       71 GETTABLEKS                       R13 R13 K19 ["Fragment"]
       73 NEWTABLE                         R14 0 0
       75 DUPTABLE                         R15 K22 [{"Toolbar", "StyleLink"}]
       76 GETUPVAL                         R16 2
       77 GETTABLEKS                       R16 R16 K4 ["createElement"]
       79 LOADK                            R17 K23 ["Frame"]
       80 NEWTABLE                         R18 2 0
       82 GETUPVAL                         R19 2
       83 GETTABLEKS                       R19 R19 K24 ["Change"]
       85 GETTABLEKS                       R19 R19 K25 ["AbsoluteSize"]
       87 GETTABLEKS                       R20 R0 K26 ["OnToolbarSizeChanged"]
       89 SETTABLE                         R20 R18 R19
       90 GETUPVAL                         R19 2
       91 GETTABLEKS                       R19 R19 K27 ["Tag"]
       93 LOADK                            R21 K28 ["VPF-Toolbar VPF-Toolbar--%* VPF-Toolbar--%*"]
       94 GETUPVAL                         R23 8
       95 MOVE                             R24 R0
       96 CALL                             R23 1 1
       97 GETTABLEKS                       R25 R0 K30 ["InitialPosition"]
       99 ORK                              R24 R25 K29 ["Center"]
      100 NAMECALL                         R21 R21 K31 ["format"]
      102 CALL                             R21 3 1
      103 MOVE                             R20 R21
      104 SETTABLE                         R20 R18 R19
      105 DUPTABLE                         R19 K33 [{"ToolbarBase"}]
      106 GETUPVAL                         R20 2
      107 GETTABLEKS                       R20 R20 K4 ["createElement"]
      109 GETUPVAL                         R21 9
      110 MOVE                             R22 R0
      111 CALL                             R20 2 1
      112 SETTABLEKS                       R20 R19 K32 ["ToolbarBase"]
      114 CALL                             R16 3 1
      115 SETTABLEKS                       R16 R15 K20 ["Toolbar"]
      117 GETUPVAL                         R17 0
      118 CALL                             R17 0 1
      119 JUMPIFNOT                        R17 ; [+6]
      120 GETUPVAL                         R16 2
      121 GETTABLEKS                       R16 R16 K4 ["createElement"]
      123 GETUPVAL                         R17 10
      124 CALL                             R16 1 1
      125 JUMP                             ; [+8]
      126 GETUPVAL                         R16 2
      127 GETTABLEKS                       R16 R16 K4 ["createElement"]
      129 LOADK                            R17 K21 ["StyleLink"]
      130 DUPTABLE                         R18 K35 [{"StyleSheet"}]
      131 SETTABLEKS                       R1 R18 K34 ["StyleSheet"]
      133 CALL                             R16 2 1
      134 SETTABLEKS                       R16 R15 K21 ["StyleLink"]
      136 CALL                             R12 3 -1
      137 CALL                             R10 -1 1
      138 JUMP                             ; [+1]
      139 LOADNIL                          R10
      140 SETTABLEKS                       R10 R9 K15 ["Focus"]
      142 CALL                             R6 3 1
      143 GETUPVAL                         R7 4
      144 CALL                             R5 2 -1
      145 RETURN                           R5 -1

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
       15 GETTABLEKS                       R3 R1 K10 ["Parent"]
       17 GETTABLEKS                       R3 R3 K11 ["Framework"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Parent"]
       24 GETTABLEKS                       R4 R4 K12 ["React"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K10 ["Parent"]
       31 GETTABLEKS                       R5 R5 K13 ["ReactRoblox"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R1 K10 ["Parent"]
       38 GETTABLEKS                       R6 R6 K14 ["StudioFoundation"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R7 R1 K15 ["Components"]
       45 GETTABLEKS                       R7 R7 K16 ["StyleLink"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K9 [require]
       50 GETTABLEKS                       R8 R1 K15 ["Components"]
       52 GETTABLEKS                       R8 R8 K17 ["ToolbarBase"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K9 [require]
       57 GETTABLEKS                       R9 R1 K18 ["Types"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K9 [require]
       62 GETTABLEKS                       R10 R1 K19 ["Util"]
       64 GETTABLEKS                       R10 R10 K20 ["getToolbarDirection"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K9 [require]
       69 GETTABLEKS                       R11 R1 K21 ["Hooks"]
       71 GETTABLEKS                       R11 R11 K22 ["useStyleSheet"]
       73 CALL                             R10 1 1
       74 GETIMPORT                        R11 K9 [require]
       76 GETTABLEKS                       R12 R1 K23 ["Flags"]
       78 GETTABLEKS                       R12 R12 K24 ["getFFlagViewportToolingFrameworkMoreComponents"]
       80 CALL                             R11 1 1
       81 GETIMPORT                        R12 K1 [game]
       83 LOADK                            R14 K25 ["ViewportToolingFrameworkingDebugCleanupCode"]
       84 LOADB                            R15 0
       85 NAMECALL                         R12 R12 K26 ["DefineFastFlag"]
       87 CALL                             R12 3 1
       88 GETTABLEKS                       R13 R2 K27 ["ContextServices"]
       90 DUPCLOSURE                       R14 K28 [PROTO_1]
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R13
       95 DUPCLOSURE                       R15 K29 [PROTO_3]
       96 CAPTURE                          VAL R11
       97 CAPTURE                          VAL R10
       98 CAPTURE                          VAL R3
       99 CAPTURE                          VAL R12
      100 CAPTURE                          VAL R0
      101 CAPTURE                          VAL R4
      102 CAPTURE                          VAL R13
      103 CAPTURE                          VAL R14
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R6
      107 RETURN                           R15 1
