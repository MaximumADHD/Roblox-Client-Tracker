PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Name"]
        3 GETUPVAL                         R1 1
        4 JUMPIFEQ                         R0 R1 ; [+5]
        6 GETUPVAL                         R0 0
        7 GETUPVAL                         R1 1
        8 SETTABLEKS                       R1 R0 K0 ["Name"]
       10 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["Part"]
        3 CALL                             R1 1 1
        4 LOADB                            R2 0
        5 SETTABLEKS                       R2 R1 K4 ["CanCollide"]
        7 SETTABLEKS                       R0 R1 K5 ["Name"]
        9 LOADN                            R2 1
       10 SETTABLEKS                       R2 R1 K6 ["Transparency"]
       12 LOADB                            R2 0
       13 SETTABLEKS                       R2 R1 K7 ["Archivable"]
       15 LOADK                            R4 K5 ["Name"]
       16 NAMECALL                         R2 R1 K8 ["GetPropertyChangedSignal"]
       18 CALL                             R2 2 1
       19 NEWCLOSURE                       R4 P0
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R0
       22 NAMECALL                         R2 R2 K9 ["Connect"]
       24 CALL                             R2 2 0
       25 RETURN                           R1 1

PROTO_2:
        0 GETIMPORT                        R4 K2 [CFrame.new]
        2 MOVE                             R5 R1
        3 CALL                             R4 1 1
        4 SETTABLEKS                       R4 R0 K0 ["CFrame"]
        6 SETTABLEKS                       R2 R0 K3 ["Size"]
        8 SETTABLEKS                       R3 R0 K4 ["Parent"]
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Name"]
        3 GETUPVAL                         R1 1
        4 JUMPIFEQ                         R0 R1 ; [+5]
        6 GETUPVAL                         R0 0
        7 GETUPVAL                         R1 1
        8 SETTABLEKS                       R1 R0 K0 ["Name"]
       10 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R2 K2 [Instance.new]
        2 MOVE                             R4 R0
        3 LOADK                            R5 K3 ["HandleAdornment"]
        4 CONCAT                           R3 R4 R5
        5 CALL                             R2 1 1
        6 LOADB                            R3 0
        7 SETTABLEKS                       R3 R2 K4 ["AlwaysOnTop"]
        9 LOADB                            R3 0
       10 SETTABLEKS                       R3 R2 K5 ["Archivable"]
       12 LOADN                            R3 1
       13 SETTABLEKS                       R3 R2 K6 ["ZIndex"]
       15 LOADK                            R5 K7 ["Name"]
       16 NAMECALL                         R3 R2 K8 ["GetPropertyChangedSignal"]
       18 CALL                             R3 2 1
       19 NEWCLOSURE                       R5 P0
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R1
       22 NAMECALL                         R3 R3 K9 ["Connect"]
       24 CALL                             R3 2 0
       25 RETURN                           R2 1

PROTO_5:
        0 GETIMPORT                        R9 K2 [CFrame.new]
        2 MOVE                             R10 R2
        3 CALL                             R9 1 1
        4 SETTABLEKS                       R9 R0 K0 ["CFrame"]
        6 SETTABLEKS                       R3 R0 K3 ["Adornee"]
        8 SETTABLEKS                       R4 R0 K4 ["Name"]
       10 SETTABLEKS                       R5 R0 K5 ["Transparency"]
       12 SETTABLEKS                       R6 R0 K6 ["Color3"]
       14 SETTABLEKS                       R8 R0 K7 ["Parent"]
       16 JUMPIFNOTEQKS                    R1 K8 ["Box"] ; [+12]
       18 FASTCALL3                        VECTOR R7 R7 R7
       20 MOVE                             R10 R7
       21 MOVE                             R11 R7
       22 MOVE                             R12 R7
       23 GETIMPORT                        R9 K10 [Vector3.new]
       25 CALL                             R9 3 1
       26 SETTABLEKS                       R9 R0 K11 ["Size"]
       28 RETURN                           R0 0
       29 JUMPIFNOTEQKS                    R1 K12 ["Sphere"] ; [+3]
       31 SETTABLEKS                       R7 R0 K13 ["Radius"]
       33 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["controlPoint"]
        3 JUMPIF                           R0 ; [+6]
        4 GETUPVAL                         R0 0
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R2 2
        7 CALL                             R1 1 1
        8 SETTABLEKS                       R1 R0 K0 ["controlPoint"]
       10 GETUPVAL                         R1 3
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K1 ["adornment"]
       14 GETTABLEKS                       R2 R2 K2 ["CFrame"]
       16 GETTABLEKS                       R2 R2 K3 ["Position"]
       18 MUL                              R0 R1 R2
       19 FASTCALL                         VECTOR ; [+2]
       20 GETIMPORT                        R1 K6 [Vector3.new]
       22 CALL                             R1 0 1
       23 GETUPVAL                         R2 4
       24 JUMPIFNOTEQKS                    R2 K7 ["Box"] ; [+7]
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K1 ["adornment"]
       29 GETTABLEKS                       R1 R2 K8 ["Size"]
       31 JUMP                             ; [+17]
       32 GETUPVAL                         R2 4
       33 JUMPIFNOTEQKS                    R2 K9 ["Sphere"] ; [+15]
       35 GETUPVAL                         R2 0
       36 GETTABLEKS                       R2 R2 K1 ["adornment"]
       38 GETTABLEKS                       R2 R2 K10 ["Radius"]
       40 FASTCALL3                        VECTOR R2 R2 R2
       42 MOVE                             R4 R2
       43 MOVE                             R5 R2
       44 MOVE                             R6 R2
       45 GETIMPORT                        R3 K6 [Vector3.new]
       47 CALL                             R3 3 1
       48 MOVE                             R1 R3
       49 GETUPVAL                         R2 0
       50 GETTABLEKS                       R2 R2 K0 ["controlPoint"]
       52 MOVE                             R3 R1
       53 GETUPVAL                         R4 5
       54 GETIMPORT                        R5 K11 [CFrame.new]
       56 MOVE                             R6 R0
       57 CALL                             R5 1 1
       58 SETTABLEKS                       R5 R2 K2 ["CFrame"]
       60 SETTABLEKS                       R3 R2 K8 ["Size"]
       62 SETTABLEKS                       R4 R2 K12 ["Parent"]
       64 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["controlPoint"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["controlPoint"]
        7 NAMECALL                         R0 R0 K1 ["Destroy"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 0
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K0 ["controlPoint"]
       14 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R1 K0 ["Position"]
        2 GETTABLEKS                       R3 R1 K1 ["Selected"]
        4 GETTABLEKS                       R4 R1 K2 ["Hovered"]
        6 GETTABLEKS                       R5 R1 K3 ["Weight"]
        8 GETTABLEKS                       R6 R1 K4 ["Transparency"]
       10 GETTABLEKS                       R7 R1 K5 ["Size"]
       12 GETTABLEKS                       R8 R1 K6 ["Shape"]
       14 LOADB                            R10 1
       15 JUMPIFEQKS                       R8 K7 ["Box"] ; [+5]
       17 JUMPIFEQKS                       R8 K8 ["Sphere"] ; [+2]
       19 LOADB                            R10 0 +1
       20 LOADB                            R10 1
       21 FASTCALL2K                       ASSERT R10 K9 ; [+4]
       23 LOADK                            R11 K9 ["Shape must be Box or Sphere."]
       24 GETIMPORT                        R9 K11 [assert]
       26 CALL                             R9 2 0
       27 GETTABLEKS                       R9 R1 K12 ["PartParent"]
       29 GETTABLEKS                       R10 R1 K13 ["AdornmentParent"]
       31 GETTABLEKS                       R11 R1 K14 ["Name"]
       33 GETTABLEKS                       R12 R1 K15 ["Color"]
       35 GETTABLEKS                       R13 R1 K16 ["Adornee"]
       37 GETTABLEKS                       R14 R1 K17 ["MeshOrigin"]
       39 JUMPIF                           R12 ; [+12]
       40 GETUPVAL                         R12 0
       41 JUMPIFNOT                        R3 ; [+8]
       42 GETUPVAL                         R15 1
       43 GETUPVAL                         R17 2
       44 MOVE                             R18 R5
       45 NAMECALL                         R15 R15 K18 ["lerp"]
       47 CALL                             R15 3 1
       48 MOVE                             R12 R15
       49 JUMP                             ; [+2]
       50 JUMPIFNOT                        R4 ; [+1]
       51 GETUPVAL                         R12 3
       52 GETTABLEKS                       R15 R0 K19 ["adornment"]
       54 JUMPIFNOT                        R15 ; [+17]
       55 GETTABLEKS                       R15 R0 K19 ["adornment"]
       57 MOVE                             R18 R8
       58 LOADK                            R19 K20 ["HandleAdornment"]
       59 CONCAT                           R17 R18 R19
       60 NAMECALL                         R15 R15 K21 ["IsA"]
       62 CALL                             R15 2 1
       63 JUMPIF                           R15 ; [+8]
       64 GETTABLEKS                       R15 R0 K19 ["adornment"]
       66 NAMECALL                         R15 R15 K22 ["Destroy"]
       68 CALL                             R15 1 0
       69 LOADNIL                          R15
       70 SETTABLEKS                       R15 R0 K19 ["adornment"]
       72 GETTABLEKS                       R15 R0 K19 ["adornment"]
       74 JUMPIF                           R15 ; [+29]
       75 GETUPVAL                         R15 4
       76 MOVE                             R16 R8
       77 MOVE                             R17 R11
       78 CALL                             R15 2 1
       79 SETTABLEKS                       R15 R0 K19 ["adornment"]
       81 GETTABLEKS                       R15 R0 K19 ["adornment"]
       83 GETTABLEKS                       R15 R15 K23 ["MouseEnter"]
       85 NEWCLOSURE                       R17 P0
       86 CAPTURE                          VAL R0
       87 CAPTURE                          UPVAL U5
       88 CAPTURE                          VAL R11
       89 CAPTURE                          VAL R14
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R9
       92 NAMECALL                         R15 R15 K24 ["Connect"]
       94 CALL                             R15 2 0
       95 GETTABLEKS                       R15 R0 K19 ["adornment"]
       97 GETTABLEKS                       R15 R15 K25 ["MouseLeave"]
       99 NEWCLOSURE                       R17 P1
      100 CAPTURE                          VAL R0
      101 NAMECALL                         R15 R15 K24 ["Connect"]
      103 CALL                             R15 2 0
      104 GETTABLEKS                       R15 R0 K19 ["adornment"]
      106 MOVE                             R16 R12
      107 GETIMPORT                        R17 K28 [CFrame.new]
      109 MOVE                             R18 R2
      110 CALL                             R17 1 1
      111 SETTABLEKS                       R17 R15 K26 ["CFrame"]
      113 SETTABLEKS                       R13 R15 K16 ["Adornee"]
      115 SETTABLEKS                       R11 R15 K14 ["Name"]
      117 SETTABLEKS                       R6 R15 K4 ["Transparency"]
      119 SETTABLEKS                       R16 R15 K29 ["Color3"]
      121 SETTABLEKS                       R10 R15 K30 ["Parent"]
      123 JUMPIFNOTEQKS                    R8 K7 ["Box"] ; [+12]
      125 FASTCALL3                        VECTOR R7 R7 R7
      127 MOVE                             R18 R7
      128 MOVE                             R19 R7
      129 MOVE                             R20 R7
      130 GETIMPORT                        R17 K32 [Vector3.new]
      132 CALL                             R17 3 1
      133 SETTABLEKS                       R17 R15 K5 ["Size"]
      135 JUMP                             ; [+4]
      136 JUMPIFNOTEQKS                    R8 K8 ["Sphere"] ; [+3]
      138 SETTABLEKS                       R7 R15 K33 ["Radius"]
      140 GETTABLEKS                       R15 R0 K34 ["controlPoint"]
      142 JUMPIFNOT                        R15 ; [+21]
      143 GETTABLEKS                       R15 R0 K34 ["controlPoint"]
      145 MUL                              R16 R14 R2
      146 FASTCALL3                        VECTOR R7 R7 R7
      148 MOVE                             R18 R7
      149 MOVE                             R19 R7
      150 MOVE                             R20 R7
      151 GETIMPORT                        R17 K32 [Vector3.new]
      153 CALL                             R17 3 1
      154 GETIMPORT                        R18 K28 [CFrame.new]
      156 MOVE                             R19 R16
      157 CALL                             R18 1 1
      158 SETTABLEKS                       R18 R15 K26 ["CFrame"]
      160 SETTABLEKS                       R17 R15 K5 ["Size"]
      162 SETTABLEKS                       R9 R15 K30 ["Parent"]
      164 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["adornment"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["adornment"]
        5 NAMECALL                         R1 R1 K1 ["Destroy"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["adornment"]
       11 GETTABLEKS                       R1 R0 K2 ["controlPoint"]
       13 JUMPIFNOT                        R1 ; [+8]
       14 GETTABLEKS                       R1 R0 K2 ["controlPoint"]
       16 NAMECALL                         R1 R1 K1 ["Destroy"]
       18 CALL                             R1 1 0
       19 LOADNIL                          R1
       20 SETTABLEKS                       R1 R0 K2 ["controlPoint"]
       22 RETURN                           R0 0

PROTO_10:
        0 NEWTABLE                         R1 2 0
        2 GETUPVAL                         R2 0
        3 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        5 GETIMPORT                        R0 K1 [setmetatable]
        7 CALL                             R0 2 1
        8 DUPCLOSURE                       R1 K2 [PROTO_1]
        9 DUPCLOSURE                       R2 K3 [PROTO_2]
       10 DUPCLOSURE                       R3 K4 [PROTO_4]
       11 DUPCLOSURE                       R4 K5 [PROTO_5]
       12 DUPCLOSURE                       R5 K6 [PROTO_8]
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          UPVAL U4
       17 CAPTURE                          VAL R3
       18 CAPTURE                          VAL R1
       19 SETTABLEKS                       R5 R0 K7 ["render"]
       21 DUPCLOSURE                       R5 K8 [PROTO_9]
       22 SETTABLEKS                       R5 R0 K9 ["cleanup"]
       24 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Views"]
       11 GETTABLEKS                       R2 R2 K6 ["types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K7 ["Util"]
       18 GETTABLEKS                       R3 R3 K8 ["Constants"]
       20 CALL                             R2 1 1
       21 NEWTABLE                         R3 2 0
       23 SETTABLEKS                       R3 R3 K9 ["__index"]
       25 GETTABLEKS                       R4 R2 K10 ["ControlPoint"]
       27 GETTABLEKS                       R4 R4 K11 ["DefaultColor"]
       29 GETTABLEKS                       R5 R2 K10 ["ControlPoint"]
       31 GETTABLEKS                       R5 R5 K12 ["HoveredColor"]
       33 GETTABLEKS                       R6 R2 K10 ["ControlPoint"]
       35 GETTABLEKS                       R6 R6 K13 ["SelectedColor"]
       37 GETTABLEKS                       R7 R2 K10 ["ControlPoint"]
       39 GETTABLEKS                       R7 R7 K14 ["SelectedColorNoWeight"]
       41 DUPCLOSURE                       R8 K15 [PROTO_10]
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R7
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R5
       47 SETTABLEKS                       R8 R3 K16 ["new"]
       49 RETURN                           R3 1
