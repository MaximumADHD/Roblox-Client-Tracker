PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 1
        1 GETTABLEKS                       R0 R0 K0 ["AncestryChanged"]
        3 GETUPVAL                         R2 2
        4 NAMECALL                         R0 R0 K1 ["Connect"]
        6 CALL                             R0 2 1
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K2 ["ChildRemoved"]
       11 GETUPVAL                         R2 2
       12 NAMECALL                         R0 R0 K1 ["Connect"]
       14 CALL                             R0 2 1
       15 SETUPVAL                         R0 3
       16 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Name"]
        3 JUMPIFEQKS                       R0 K1 ["ControlEdgeViews"] ; [+5]
        5 GETUPVAL                         R0 0
        6 LOADK                            R1 K1 ["ControlEdgeViews"]
        7 SETTABLEKS                       R1 R0 K0 ["Name"]
        9 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R1 K0 ["ControlPointPositions"]
        2 GETTABLEKS                       R3 R1 K1 ["ControlPointEdges"]
        4 GETTABLEKS                       R4 R1 K2 ["Adornees"]
        6 GETTABLEKS                       R5 R1 K3 ["Transparency"]
        8 GETTABLEKS                       R6 R1 K4 ["SelectedMesh"]
       10 GETTABLEKS                       R7 R1 K5 ["FolderChangedCallback"]
       12 SETUPVAL                         R7 0
       13 GETUPVAL                         R7 1
       14 JUMPIF                           R7 ; [+39]
       15 GETIMPORT                        R7 K8 [Instance.new]
       17 LOADK                            R8 K9 ["Folder"]
       18 CALL                             R7 1 1
       19 SETUPVAL                         R7 1
       20 GETUPVAL                         R7 1
       21 GETUPVAL                         R8 2
       22 SETTABLEKS                       R8 R7 K10 ["Parent"]
       24 GETUPVAL                         R7 1
       25 LOADK                            R8 K11 ["ControlEdgeViews"]
       26 SETTABLEKS                       R8 R7 K12 ["Name"]
       28 GETUPVAL                         R7 1
       29 LOADK                            R9 K12 ["Name"]
       30 NAMECALL                         R7 R7 K13 ["GetPropertyChangedSignal"]
       32 CALL                             R7 2 1
       33 NEWCLOSURE                       R9 P0
       34 CAPTURE                          UPVAL U1
       35 NAMECALL                         R7 R7 K14 ["Connect"]
       37 CALL                             R7 2 0
       38 GETUPVAL                         R7 1
       39 GETTABLEKS                       R7 R7 K15 ["AncestryChanged"]
       41 GETUPVAL                         R9 4
       42 NAMECALL                         R7 R7 K14 ["Connect"]
       44 CALL                             R7 2 1
       45 SETUPVAL                         R7 3
       46 GETUPVAL                         R7 1
       47 GETTABLEKS                       R7 R7 K16 ["ChildRemoved"]
       49 GETUPVAL                         R9 4
       50 NAMECALL                         R7 R7 K14 ["Connect"]
       52 CALL                             R7 2 1
       53 SETUPVAL                         R7 5
       54 GETIMPORT                        R7 K18 [pairs]
       56 MOVE                             R8 R3
       57 CALL                             R7 1 3
       58 FORGPREP_NEXT                    R7
       59 JUMPIFNOT                        R6 ; [+2]
       60 JUMPIFNOTEQ                      R10 R6 ; [+83]
       62 GETUPVAL                         R12 6
       63 MOVE                             R14 R10
       64 NAMECALL                         R12 R12 K19 ["getMeshOrigin"]
       66 CALL                             R12 2 1
       67 GETIMPORT                        R13 K18 [pairs]
       69 MOVE                             R14 R11
       70 CALL                             R13 1 3
       71 FORGPREP_NEXT                    R13
       72 MOVE                             R20 R10
       73 NAMECALL                         R18 R4 K20 ["getAdornee"]
       75 CALL                             R18 2 1
       76 LOADK                            R22 K21 ["Adornee part should exist for: "]
       77 MOVE                             R23 R10
       78 LOADK                            R24 K22 [" in game.Workspace."]
       79 GETUPVAL                         R25 7
       80 GETTABLEKS                       R25 R25 K23 ["ControlPointsFolderName"]
       82 CONCAT                           R21 R22 R25
       83 FASTCALL2                        ASSERT R18 R21 ; [+4]
       85 MOVE                             R20 R18
       86 GETIMPORT                        R19 K25 [assert]
       88 CALL                             R19 2 0
       89 GETUPVAL                         R20 8
       90 GETTABLE                         R19 R20 R10
       91 JUMPIF                           R19 ; [+4]
       92 GETUPVAL                         R19 8
       93 NEWTABLE                         R20 0 0
       95 SETTABLE                         R20 R19 R10
       96 GETUPVAL                         R21 8
       97 GETTABLE                         R20 R21 R10
       98 GETTABLE                         R19 R20 R16
       99 JUMPIF                           R19 ; [+7]
      100 GETUPVAL                         R20 8
      101 GETTABLE                         R19 R20 R10
      102 GETUPVAL                         R20 9
      103 GETTABLEKS                       R20 R20 K7 ["new"]
      105 CALL                             R20 0 1
      106 SETTABLE                         R20 R19 R16
      107 GETTABLE                         R20 R3 R10
      108 GETTABLE                         R19 R20 R16
      109 GETTABLEKS                       R19 R19 K26 ["Start"]
      111 GETTABLE                         R21 R3 R10
      112 GETTABLE                         R20 R21 R16
      113 GETTABLEKS                       R20 R20 K27 ["End"]
      115 GETUPVAL                         R23 8
      116 GETTABLE                         R22 R23 R10
      117 GETTABLE                         R21 R22 R16
      118 DUPTABLE                         R23 K32 [{"Name", "Transparency", "StartPoint", "EndPoint", "Parent", "Adornee", "Color"}]
      119 SETTABLEKS                       R16 R23 K12 ["Name"]
      121 SETTABLEKS                       R5 R23 K3 ["Transparency"]
      123 GETTABLE                         R25 R2 R10
      124 GETTABLE                         R24 R25 R19
      125 SETTABLEKS                       R24 R23 K28 ["StartPoint"]
      127 GETTABLE                         R25 R2 R10
      128 GETTABLE                         R24 R25 R20
      129 SETTABLEKS                       R24 R23 K29 ["EndPoint"]
      131 GETUPVAL                         R24 1
      132 SETTABLEKS                       R24 R23 K10 ["Parent"]
      134 SETTABLEKS                       R18 R23 K30 ["Adornee"]
      136 GETUPVAL                         R24 10
      137 SETTABLEKS                       R24 R23 K31 ["Color"]
      139 NAMECALL                         R21 R21 K33 ["render"]
      141 CALL                             R21 2 0
      142 FORGLOOP                         R13 1 ; [-71]
      144 FORGLOOP                         R7 2 ; [-86]
      146 GETUPVAL                         R7 11
      147 GETUPVAL                         R8 8
      148 MOVE                             R9 R3
      149 CALL                             R7 2 1
      150 LENGTH                           R8 R7
      151 LOADN                            R9 0
      152 JUMPIFNOTLT                      R9 R8 ; [+24]
      154 NAMECALL                         R8 R0 K34 ["disconnect"]
      156 CALL                             R8 1 0
      157 GETUPVAL                         R8 12
      158 GETUPVAL                         R9 8
      159 MOVE                             R10 R7
      160 CALL                             R8 2 0
      161 GETUPVAL                         R8 1
      162 GETTABLEKS                       R8 R8 K15 ["AncestryChanged"]
      164 GETUPVAL                         R10 4
      165 NAMECALL                         R8 R8 K14 ["Connect"]
      167 CALL                             R8 2 1
      168 SETUPVAL                         R8 3
      169 GETUPVAL                         R8 1
      170 GETTABLEKS                       R8 R8 K16 ["ChildRemoved"]
      172 GETUPVAL                         R10 4
      173 NAMECALL                         R8 R8 K14 ["Connect"]
      175 CALL                             R8 2 1
      176 SETUPVAL                         R8 5
      177 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+6]
        2 GETUPVAL                         R1 0
        3 NAMECALL                         R1 R1 K0 ["Disconnect"]
        5 CALL                             R1 1 0
        6 LOADNIL                          R1
        7 SETUPVAL                         R1 0
        8 GETUPVAL                         R1 1
        9 JUMPIFNOT                        R1 ; [+6]
       10 GETUPVAL                         R1 1
       11 NAMECALL                         R1 R1 K0 ["Disconnect"]
       13 CALL                             R1 1 0
       14 LOADNIL                          R1
       15 SETUPVAL                         R1 1
       16 RETURN                           R0 0

PROTO_5:
        0 NAMECALL                         R1 R0 K0 ["disconnect"]
        2 CALL                             R1 1 0
        3 GETIMPORT                        R1 K2 [pairs]
        5 GETUPVAL                         R2 0
        6 CALL                             R1 1 3
        7 FORGPREP_NEXT                    R1
        8 GETIMPORT                        R6 K2 [pairs]
       10 MOVE                             R7 R5
       11 CALL                             R6 1 3
       12 FORGPREP_NEXT                    R6
       13 NAMECALL                         R11 R10 K3 ["cleanup"]
       15 CALL                             R11 1 0
       16 FORGLOOP                         R6 2 ; [-4]
       18 FORGLOOP                         R1 2 ; [-11]
       20 GETUPVAL                         R1 1
       21 JUMPIFNOT                        R1 ; [+6]
       22 GETUPVAL                         R1 1
       23 NAMECALL                         R1 R1 K4 ["Destroy"]
       25 CALL                             R1 1 0
       26 LOADNIL                          R1
       27 SETUPVAL                         R1 1
       28 NEWTABLE                         R1 0 0
       30 SETUPVAL                         R1 0
       31 RETURN                           R0 0

PROTO_6:
        0 NEWTABLE                         R2 4 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        5 GETIMPORT                        R1 K1 [setmetatable]
        7 CALL                             R1 2 1
        8 NEWTABLE                         R2 0 0
       10 LOADNIL                          R3
       11 LOADNIL                          R4
       12 LOADNIL                          R5
       13 LOADNIL                          R6
       14 NEWCLOSURE                       R7 P0
       15 CAPTURE                          REF R4
       16 NEWCLOSURE                       R8 P1
       17 CAPTURE                          REF R5
       18 CAPTURE                          REF R3
       19 CAPTURE                          VAL R7
       20 CAPTURE                          REF R6
       21 NEWCLOSURE                       R9 P2
       22 CAPTURE                          REF R4
       23 CAPTURE                          REF R3
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          REF R5
       26 CAPTURE                          VAL R7
       27 CAPTURE                          REF R6
       28 CAPTURE                          VAL R0
       29 CAPTURE                          UPVAL U2
       30 CAPTURE                          REF R2
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          UPVAL U4
       33 CAPTURE                          UPVAL U5
       34 CAPTURE                          UPVAL U6
       35 SETTABLEKS                       R9 R1 K2 ["render"]
       37 NEWCLOSURE                       R9 P3
       38 CAPTURE                          REF R5
       39 CAPTURE                          REF R6
       40 SETTABLEKS                       R9 R1 K3 ["disconnect"]
       42 NEWCLOSURE                       R9 P4
       43 CAPTURE                          REF R2
       44 CAPTURE                          REF R3
       45 SETTABLEKS                       R9 R1 K4 ["cleanup"]
       47 CLOSEUPVALS                      R2
       48 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["CoreGui"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R2 R1 K7 ["Views"]
       15 GETTABLEKS                       R3 R1 K8 ["Util"]
       17 GETIMPORT                        R4 K10 [require]
       19 GETTABLEKS                       R5 R2 K11 ["ControlEdgeView"]
       21 CALL                             R4 1 1
       22 GETIMPORT                        R5 K10 [require]
       24 GETTABLEKS                       R6 R2 K12 ["types"]
       26 CALL                             R5 1 1
       27 GETIMPORT                        R6 K10 [require]
       29 GETTABLEKS                       R7 R3 K13 ["Constants"]
       31 CALL                             R6 1 1
       32 GETIMPORT                        R7 K10 [require]
       34 GETTABLEKS                       R8 R3 K14 ["getUnusedViewsToRemove"]
       36 CALL                             R7 1 1
       37 GETIMPORT                        R8 K10 [require]
       39 GETTABLEKS                       R9 R3 K15 ["cleanupUnusedViews"]
       41 CALL                             R8 1 1
       42 NEWTABLE                         R9 2 0
       44 SETTABLEKS                       R9 R9 K16 ["__index"]
       46 GETIMPORT                        R10 K19 [Color3.new]
       48 LOADN                            R11 0
       49 LOADN                            R12 0
       50 LOADN                            R13 0
       51 CALL                             R10 3 1
       52 DUPCLOSURE                       R11 K20 [PROTO_6]
       53 CAPTURE                          VAL R9
       54 CAPTURE                          VAL R0
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R10
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R8
       60 SETTABLEKS                       R11 R9 K18 ["new"]
       62 RETURN                           R9 1
