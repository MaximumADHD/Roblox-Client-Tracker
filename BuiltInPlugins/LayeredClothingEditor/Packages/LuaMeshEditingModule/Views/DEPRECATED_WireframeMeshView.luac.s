PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 1
        1 GETTABLEKS                       R1 R2 K0 ["folder"]
        3 GETTABLEKS                       R0 R1 K1 ["AncestryChanged"]
        5 GETUPVAL                         R2 2
        6 NAMECALL                         R0 R0 K2 ["Connect"]
        8 CALL                             R0 2 1
        9 SETUPVAL                         R0 0
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R1 R2 K0 ["folder"]
       13 GETTABLEKS                       R0 R1 K3 ["ChildRemoved"]
       15 GETUPVAL                         R2 2
       16 NAMECALL                         R0 R0 K2 ["Connect"]
       18 CALL                             R0 2 1
       19 SETUPVAL                         R0 3
       20 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["Context"]
        2 GETTABLEKS                       R3 R1 K1 ["Transparency"]
        4 GETTABLEKS                       R4 R1 K2 ["WireColor"]
        6 GETTABLEKS                       R5 R1 K3 ["ToolAdornees"]
        8 GETTABLEKS                       R6 R1 K4 ["Visible"]
       10 JUMPIFNOTEQKNIL                  R5 ; [+2]
       12 LOADB                            R8 0 +1
       13 LOADB                            R8 1
       14 FASTCALL2K                       ASSERT R8 K5 ; [+4]
       16 LOADK                            R9 K5 ["ToolAdornees cannot be nil!"]
       17 GETIMPORT                        R7 K7 [assert]
       19 CALL                             R7 2 0
       20 JUMPIFNOTEQKNIL                  R2 ; [+2]
       22 LOADB                            R8 0 +1
       23 LOADB                            R8 1
       24 FASTCALL2K                       ASSERT R8 K8 ; [+4]
       26 LOADK                            R9 K8 ["Context cannot be nil!"]
       27 GETIMPORT                        R7 K7 [assert]
       29 CALL                             R7 2 0
       30 NAMECALL                         R7 R2 K9 ["getTriangleIndexData"]
       32 CALL                             R7 1 1
       33 NAMECALL                         R8 R2 K10 ["getVertexData"]
       35 CALL                             R8 1 1
       36 JUMPIFNOT                        R7 ; [+104]
       37 JUMPIFNOT                        R8 ; [+103]
       38 GETIMPORT                        R9 K12 [pairs]
       40 MOVE                             R10 R7
       41 CALL                             R9 1 3
       42 FORGPREP_NEXT                    R9
       43 GETTABLEKS                       R15 R0 K13 ["adorns"]
       45 GETTABLE                         R14 R15 R12
       46 JUMPIF                           R14 ; [+5]
       47 GETTABLEKS                       R14 R0 K13 ["adorns"]
       49 NEWTABLE                         R15 0 0
       51 SETTABLE                         R15 R14 R12
       52 MOVE                             R16 R12
       53 NAMECALL                         R14 R5 K14 ["getAdornee"]
       55 CALL                             R14 2 1
       56 GETIMPORT                        R15 K12 [pairs]
       58 MOVE                             R16 R13
       59 CALL                             R15 1 3
       60 FORGPREP_NEXT                    R15
       61 GETIMPORT                        R20 K16 [ipairs]
       63 GETUPVAL                         R21 0
       64 CALL                             R20 1 3
       65 FORGPREP_INEXT                   R20
       66 GETTABLE                         R26 R19 R23
       67 GETTABLE                         R27 R19 R24
       68 JUMPIFNOTLT                      R26 R27 ; [+3]
       70 GETTABLE                         R25 R19 R23
       71 JUMP                             ; [+1]
       72 GETTABLE                         R25 R19 R24
       73 GETTABLE                         R27 R19 R23
       74 GETTABLE                         R28 R19 R24
       75 JUMPIFNOTLT                      R27 R28 ; [+3]
       77 GETTABLE                         R26 R19 R24
       78 JUMP                             ; [+1]
       79 GETTABLE                         R26 R19 R23
       80 GETTABLEKS                       R29 R0 K13 ["adorns"]
       82 GETTABLE                         R28 R29 R12
       83 GETTABLE                         R27 R28 R25
       84 JUMPIF                           R27 ; [+6]
       85 GETTABLEKS                       R28 R0 K13 ["adorns"]
       87 GETTABLE                         R27 R28 R12
       88 NEWTABLE                         R28 0 0
       90 SETTABLE                         R28 R27 R25
       91 GETTABLEKS                       R30 R0 K13 ["adorns"]
       93 GETTABLE                         R29 R30 R12
       94 GETTABLE                         R28 R29 R25
       95 GETTABLE                         R27 R28 R26
       96 JUMPIF                           R27 ; [+9]
       97 GETTABLEKS                       R29 R0 K13 ["adorns"]
       99 GETTABLE                         R28 R29 R12
      100 GETTABLE                         R27 R28 R25
      101 GETUPVAL                         R29 1
      102 GETTABLEKS                       R28 R29 K17 ["new"]
      104 CALL                             R28 0 1
      105 SETTABLE                         R28 R27 R26
      106 GETTABLEKS                       R30 R0 K13 ["adorns"]
      108 GETTABLE                         R29 R30 R12
      109 GETTABLE                         R28 R29 R25
      110 GETTABLE                         R27 R28 R26
      111 DUPTABLE                         R29 K23 [{"Adornee", "StartPoint", "EndPoint", "Transparency", "Color", "Visible", "Parent"}]
      112 SETTABLEKS                       R14 R29 K18 ["Adornee"]
      114 GETTABLE                         R31 R8 R12
      115 GETTABLE                         R30 R31 R25
      116 SETTABLEKS                       R30 R29 K19 ["StartPoint"]
      118 GETTABLE                         R31 R8 R12
      119 GETTABLE                         R30 R31 R26
      120 SETTABLEKS                       R30 R29 K20 ["EndPoint"]
      122 SETTABLEKS                       R3 R29 K1 ["Transparency"]
      124 SETTABLEKS                       R4 R29 K21 ["Color"]
      126 SETTABLEKS                       R6 R29 K4 ["Visible"]
      128 GETTABLEKS                       R30 R0 K24 ["folder"]
      130 SETTABLEKS                       R30 R29 K22 ["Parent"]
      132 NAMECALL                         R27 R27 K25 ["render"]
      134 CALL                             R27 2 0
      135 FORGLOOP                         R20 2 [inext] ; [-70]
      137 FORGLOOP                         R15 2 ; [-77]
      139 FORGLOOP                         R9 2 ; [-97]
      141 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["folder"]
        2 JUMPIF                           R2 ; [+39]
        3 GETIMPORT                        R2 K3 [Instance.new]
        5 LOADK                            R3 K4 ["Folder"]
        6 CALL                             R2 1 1
        7 SETTABLEKS                       R2 R0 K0 ["folder"]
        9 GETTABLEKS                       R2 R0 K0 ["folder"]
       11 LOADB                            R3 0
       12 SETTABLEKS                       R3 R2 K5 ["Archivable"]
       14 GETTABLEKS                       R2 R0 K0 ["folder"]
       16 GETUPVAL                         R3 0
       17 SETTABLEKS                       R3 R2 K6 ["Parent"]
       19 GETTABLEKS                       R2 R1 K7 ["FolderChangedCallback"]
       21 SETUPVAL                         R2 1
       22 GETUPVAL                         R4 3
       23 GETTABLEKS                       R3 R4 K0 ["folder"]
       25 GETTABLEKS                       R2 R3 K8 ["AncestryChanged"]
       27 GETUPVAL                         R4 4
       28 NAMECALL                         R2 R2 K9 ["Connect"]
       30 CALL                             R2 2 1
       31 SETUPVAL                         R2 2
       32 GETUPVAL                         R4 3
       33 GETTABLEKS                       R3 R4 K0 ["folder"]
       35 GETTABLEKS                       R2 R3 K10 ["ChildRemoved"]
       37 GETUPVAL                         R4 4
       38 NAMECALL                         R2 R2 K9 ["Connect"]
       40 CALL                             R2 2 1
       41 SETUPVAL                         R2 5
       42 GETTABLEKS                       R2 R0 K11 ["adorns"]
       44 JUMPIF                           R2 ; [+4]
       45 NEWTABLE                         R2 0 0
       47 SETTABLEKS                       R2 R0 K11 ["adorns"]
       49 GETUPVAL                         R2 6
       50 MOVE                             R3 R0
       51 MOVE                             R4 R1
       52 CALL                             R2 2 0
       53 RETURN                           R0 0

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
        3 GETTABLEKS                       R1 R0 K1 ["adorns"]
        5 JUMPIFNOT                        R1 ; [+28]
        6 GETIMPORT                        R1 K3 [pairs]
        8 GETTABLEKS                       R2 R0 K1 ["adorns"]
       10 CALL                             R1 1 3
       11 FORGPREP_NEXT                    R1
       12 GETIMPORT                        R6 K3 [pairs]
       14 MOVE                             R7 R5
       15 CALL                             R6 1 3
       16 FORGPREP_NEXT                    R6
       17 GETIMPORT                        R11 K3 [pairs]
       19 MOVE                             R12 R10
       20 CALL                             R11 1 3
       21 FORGPREP_NEXT                    R11
       22 NAMECALL                         R16 R15 K4 ["cleanup"]
       24 CALL                             R16 1 0
       25 FORGLOOP                         R11 2 ; [-4]
       27 FORGLOOP                         R6 2 ; [-11]
       29 FORGLOOP                         R1 2 ; [-18]
       31 LOADNIL                          R1
       32 SETTABLEKS                       R1 R0 K1 ["adorns"]
       34 GETTABLEKS                       R1 R0 K5 ["folder"]
       36 JUMPIFNOT                        R1 ; [+8]
       37 GETTABLEKS                       R1 R0 K5 ["folder"]
       39 NAMECALL                         R1 R1 K6 ["Destroy"]
       41 CALL                             R1 1 0
       42 LOADNIL                          R1
       43 SETTABLEKS                       R1 R0 K5 ["folder"]
       45 RETURN                           R0 0

PROTO_6:
        0 NEWTABLE                         R1 2 0
        2 GETUPVAL                         R2 0
        3 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        5 GETIMPORT                        R0 K1 [setmetatable]
        7 CALL                             R0 2 1
        8 LOADNIL                          R1
        9 LOADNIL                          R2
       10 LOADNIL                          R3
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          REF R1
       13 NEWCLOSURE                       R5 P1
       14 CAPTURE                          REF R2
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R4
       17 CAPTURE                          REF R3
       18 DUPCLOSURE                       R6 K2 [PROTO_2]
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          UPVAL U2
       21 NEWCLOSURE                       R7 P3
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          REF R1
       24 CAPTURE                          REF R2
       25 CAPTURE                          VAL R0
       26 CAPTURE                          VAL R4
       27 CAPTURE                          REF R3
       28 CAPTURE                          VAL R6
       29 SETTABLEKS                       R7 R0 K3 ["render"]
       31 NEWCLOSURE                       R7 P4
       32 CAPTURE                          REF R2
       33 CAPTURE                          REF R3
       34 GETUPVAL                         R8 0
       35 SETTABLEKS                       R7 R8 K4 ["disconnect"]
       37 DUPCLOSURE                       R7 K5 [PROTO_5]
       38 SETTABLEKS                       R7 R0 K6 ["cleanup"]
       40 CLOSEUPVALS                      R1
       41 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["ControlEdgeView"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K7 [game]
       12 LOADK                            R3 K8 ["CoreGui"]
       13 NAMECALL                         R1 R1 K9 ["GetService"]
       15 CALL                             R1 2 1
       16 NEWTABLE                         R2 4 0
       18 SETTABLEKS                       R2 R2 K10 ["__index"]
       20 NEWTABLE                         R3 0 3
       22 LOADN                            R4 2
       23 LOADN                            R5 3
       24 LOADN                            R6 1
       25 SETLIST                          R3 R4 3 [1]
       27 DUPCLOSURE                       R4 K11 [PROTO_6]
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R0
       31 CAPTURE                          VAL R1
       32 SETTABLEKS                       R4 R2 K12 ["new"]
       34 RETURN                           R2 1
