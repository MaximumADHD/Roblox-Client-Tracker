PROTO_0:
        0 LOADB                            R1 0
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [type]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+16]
        8 LOADB                            R1 0
        9 GETTABLEKS                       R2 R0 K0 ["type"]
       11 JUMPIFNOTEQKS                    R2 K3 ["Expr"] ; [+11]
       13 GETTABLEKS                       R3 R0 K4 ["expr"]
       15 FASTCALL1                        TYPE R3 ; [+2]
       16 GETIMPORT                        R2 K1 [type]
       18 CALL                             R2 1 1
       19 JUMPIFEQKS                       R2 K5 ["string"] ; [+2]
       21 LOADB                            R1 0 +1
       22 LOADB                            R1 1
       23 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R2 K2 [Instance.new]
        2 LOADK                            R3 K3 ["Frame"]
        3 CALL                             R2 1 1
        4 LOADK                            R5 K4 ["template-wrapper"]
        5 NAMECALL                         R3 R2 K5 ["AddTag"]
        7 CALL                             R3 2 0
        8 GETIMPORT                        R3 K2 [Instance.new]
       10 LOADK                            R4 K6 ["TextLabel"]
       11 CALL                             R3 1 1
       12 LOADK                            R6 K7 ["template-name"]
       13 NAMECALL                         R4 R3 K5 ["AddTag"]
       15 CALL                             R4 2 0
       16 SETTABLEKS                       R0 R3 K8 ["Text"]
       18 SETTABLEKS                       R2 R3 K9 ["Parent"]
       20 GETIMPORT                        R4 K2 [Instance.new]
       22 LOADK                            R5 K3 ["Frame"]
       23 CALL                             R4 1 1
       24 LOADK                            R5 K10 ["Container"]
       25 SETTABLEKS                       R5 R4 K11 ["Name"]
       27 LOADK                            R7 K12 ["template-container"]
       28 NAMECALL                         R5 R4 K5 ["AddTag"]
       30 CALL                             R5 2 0
       31 SETTABLEKS                       R2 R4 K9 ["Parent"]
       33 GETTABLEKS                       R5 R1 K13 ["children"]
       35 LOADNIL                          R6
       36 LOADNIL                          R7
       37 FORGPREP                         R5
       38 GETUPVAL                         R10 0
       39 MOVE                             R11 R9
       40 CALL                             R10 1 1
       41 SETTABLEKS                       R4 R10 K9 ["Parent"]
       43 FORGLOOP                         R5 2 ; [-6]
       45 RETURN                           R2 1

PROTO_2:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["Frame"]
        3 CALL                             R1 1 1
        4 LOADK                            R4 K4 ["ref-wrapper"]
        5 NAMECALL                         R2 R1 K5 ["AddTag"]
        7 CALL                             R2 2 0
        8 GETIMPORT                        R2 K2 [Instance.new]
       10 LOADK                            R3 K6 ["TextLabel"]
       11 CALL                             R2 1 1
       12 LOADK                            R5 K7 ["ref-name"]
       13 NAMECALL                         R3 R2 K5 ["AddTag"]
       15 CALL                             R3 2 0
       16 GETTABLEKS                       R3 R0 K8 ["templateId"]
       18 LOADK                            R5 K9 ["([^/]+)$"]
       19 NAMECALL                         R3 R3 K10 ["match"]
       21 CALL                             R3 2 1
       22 JUMPIF                           R3 ; [+2]
       23 GETTABLEKS                       R3 R0 K8 ["templateId"]
       25 SETTABLEKS                       R3 R2 K11 ["Text"]
       27 SETTABLEKS                       R1 R2 K12 ["Parent"]
       29 LOADN                            R3 1
       30 SETTABLEKS                       R3 R2 K13 ["LayoutOrder"]
       32 GETIMPORT                        R3 K2 [Instance.new]
       34 LOADK                            R4 K3 ["Frame"]
       35 CALL                             R3 1 1
       36 LOADK                            R4 K14 ["Container"]
       37 SETTABLEKS                       R4 R3 K15 ["Name"]
       39 LOADK                            R6 K16 ["ref-container"]
       40 NAMECALL                         R4 R3 K5 ["AddTag"]
       42 CALL                             R4 2 0
       43 SETTABLEKS                       R1 R3 K12 ["Parent"]
       45 LOADN                            R4 10
       46 SETTABLEKS                       R4 R3 K13 ["LayoutOrder"]
       48 LOADN                            R4 2
       49 GETTABLEKS                       R5 R0 K17 ["params"]
       51 LOADNIL                          R6
       52 LOADNIL                          R7
       53 FORGPREP                         R5
       54 LOADB                            R10 0
       55 FASTCALL1                        TYPE R9 ; [+3]
       56 MOVE                             R12 R9
       57 GETIMPORT                        R11 K19 [type]
       59 CALL                             R11 1 1
       60 JUMPIFNOTEQKS                    R11 K20 ["table"] ; [+16]
       62 LOADB                            R10 0
       63 GETTABLEKS                       R11 R9 K18 ["type"]
       65 JUMPIFNOTEQKS                    R11 K21 ["Expr"] ; [+11]
       67 GETTABLEKS                       R12 R9 K22 ["expr"]
       69 FASTCALL1                        TYPE R12 ; [+2]
       70 GETIMPORT                        R11 K19 [type]
       72 CALL                             R11 1 1
       73 JUMPIFEQKS                       R11 K23 ["string"] ; [+2]
       75 LOADB                            R10 0 +1
       76 LOADB                            R10 1
       77 JUMPIFNOT                        R10 ; [+21]
       78 GETIMPORT                        R10 K2 [Instance.new]
       80 LOADK                            R11 K6 ["TextLabel"]
       81 CALL                             R10 1 1
       82 MOVE                             R12 R8
       83 LOADK                            R13 K24 [": "]
       84 GETTABLEKS                       R14 R9 K22 ["expr"]
       86 CONCAT                           R11 R12 R14
       87 SETTABLEKS                       R11 R10 K11 ["Text"]
       89 LOADK                            R13 K25 ["ref-binding"]
       90 NAMECALL                         R11 R10 K5 ["AddTag"]
       92 CALL                             R11 2 0
       93 SETTABLEKS                       R1 R10 K12 ["Parent"]
       95 SETTABLEKS                       R4 R10 K13 ["LayoutOrder"]
       97 ADDK                             R4 R4 K26 [1]
       98 JUMP                             ; [+40]
       99 JUMPIFNOTEQKS                    R8 K27 ["Tags"] ; [+16]
      101 LOADK                            R12 K28 [" "]
      102 NAMECALL                         R10 R9 K29 ["split"]
      104 CALL                             R10 2 1
      105 MOVE                             R11 R10
      106 LOADNIL                          R12
      107 LOADNIL                          R13
      108 FORGPREP                         R11
      109 MOVE                             R18 R15
      110 NAMECALL                         R16 R1 K5 ["AddTag"]
      112 CALL                             R16 2 0
      113 FORGLOOP                         R11 2 ; [-5]
      115 JUMP                             ; [+23]
      116 LOADK                            R12 K30 ["^[A-Z]"]
      117 NAMECALL                         R10 R8 K31 ["find"]
      119 CALL                             R10 2 1
      120 JUMPIFNOT                        R10 ; [+14]
      121 GETUPVAL                         R10 0
      122 MOVE                             R11 R8
      123 MOVE                             R12 R9
      124 CALL                             R10 2 1
      125 JUMPIFNOTEQKS                    R8 K32 ["Then"] ; [+3]
      127 LOADN                            R11 1
      128 JUMP                             ; [+1]
      129 LOADN                            R11 2
      130 SETTABLEKS                       R11 R10 K13 ["LayoutOrder"]
      132 SETTABLEKS                       R3 R10 K12 ["Parent"]
      134 JUMP                             ; [+4]
      135 JUMPIFNOTEQKS                    R8 K33 ["order"] ; [+3]
      137 SETTABLEKS                       R9 R1 K13 ["LayoutOrder"]
      139 FORGLOOP                         R5 2 ; [-86]
      141 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["className"]
        2 JUMPIFNOTEQKS                    R2 K1 ["TextButton"] ; [+6]
        4 GETIMPORT                        R1 K4 [Instance.new]
        6 LOADK                            R2 K5 ["Frame"]
        7 CALL                             R1 1 1
        8 JUMP                             ; [+1]
        9 LOADNIL                          R1
       10 GETIMPORT                        R2 K4 [Instance.new]
       12 GETTABLEKS                       R3 R0 K0 ["className"]
       14 CALL                             R2 1 1
       15 NAMECALL                         R3 R2 K6 ["ClearAllChildren"]
       17 CALL                             R3 1 0
       18 GETTABLEKS                       R3 R2 K7 ["ClassName"]
       20 JUMPIFNOTEQKS                    R3 K8 ["StyleSheet"] ; [+6]
       22 GETUPVAL                         R3 0
       23 MOVE                             R4 R2
       24 MOVE                             R5 R0
       25 CALL                             R3 2 0
       26 RETURN                           R2 1
       27 JUMPIFNOT                        R1 ; [+17]
       28 LOADK                            R3 K9 ["ButtonContainer"]
       29 SETTABLEKS                       R3 R1 K10 ["Name"]
       31 LOADK                            R5 K11 ["auto-xy"]
       32 NAMECALL                         R3 R1 K12 ["AddTag"]
       34 CALL                             R3 2 0
       35 LOADK                            R5 K13 ["col-0"]
       36 NAMECALL                         R3 R1 K12 ["AddTag"]
       38 CALL                             R3 2 0
       39 LOADK                            R5 K14 ["box"]
       40 NAMECALL                         R3 R1 K12 ["AddTag"]
       42 CALL                             R3 2 0
       43 SETTABLEKS                       R1 R2 K15 ["Parent"]
       45 LOADN                            R3 2
       46 GETTABLEKS                       R4 R0 K16 ["params"]
       48 LOADNIL                          R5
       49 LOADNIL                          R6
       50 FORGPREP                         R4
       51 LOADB                            R9 0
       52 FASTCALL1                        TYPE R8 ; [+3]
       53 MOVE                             R11 R8
       54 GETIMPORT                        R10 K18 [type]
       56 CALL                             R10 1 1
       57 JUMPIFNOTEQKS                    R10 K19 ["table"] ; [+16]
       59 LOADB                            R9 0
       60 GETTABLEKS                       R10 R8 K17 ["type"]
       62 JUMPIFNOTEQKS                    R10 K20 ["Expr"] ; [+11]
       64 GETTABLEKS                       R11 R8 K21 ["expr"]
       66 FASTCALL1                        TYPE R11 ; [+2]
       67 GETIMPORT                        R10 K18 [type]
       69 CALL                             R10 1 1
       70 JUMPIFEQKS                       R10 K22 ["string"] ; [+2]
       72 LOADB                            R9 0 +1
       73 LOADB                            R9 1
       74 JUMPIFNOT                        R9 ; [+35]
       75 JUMPIFNOTEQKS                    R7 K23 ["Text"] ; [+14]
       77 GETTABLEKS                       R9 R8 K21 ["expr"]
       79 SETTABLEKS                       R9 R2 K23 ["Text"]
       81 GETIMPORT                        R9 K26 [Color3.fromRGB]
       83 LOADN                            R10 57
       84 LOADN                            R11 74
       85 LOADN                            R12 180
       86 CALL                             R9 3 1
       87 SETTABLEKS                       R9 R2 K27 ["TextColor3"]
       89 JUMP                             ; [+38]
       90 JUMPIFNOTEQKS                    R7 K28 ["OnActivated"] ; [+37]
       92 GETIMPORT                        R9 K4 [Instance.new]
       94 LOADK                            R10 K29 ["TextLabel"]
       95 CALL                             R9 1 1
       96 GETTABLEKS                       R10 R8 K21 ["expr"]
       98 SETTABLEKS                       R10 R9 K23 ["Text"]
      100 LOADK                            R12 K30 ["ref-binding"]
      101 NAMECALL                         R10 R9 K12 ["AddTag"]
      103 CALL                             R10 2 0
      104 SETTABLEKS                       R1 R9 K15 ["Parent"]
      106 SETTABLEKS                       R3 R9 K31 ["LayoutOrder"]
      108 ADDK                             R3 R3 K32 [1]
      109 JUMP                             ; [+18]
      110 JUMPIFEQKS                       R7 K33 ["Tags"] ; [+3]
      112 SETTABLE                         R8 R2 R7
      113 JUMP                             ; [+14]
      114 LOADK                            R11 K34 [" "]
      115 NAMECALL                         R9 R8 K35 ["split"]
      117 CALL                             R9 2 1
      118 MOVE                             R10 R9
      119 LOADNIL                          R11
      120 LOADNIL                          R12
      121 FORGPREP                         R10
      122 MOVE                             R17 R14
      123 NAMECALL                         R15 R2 K12 ["AddTag"]
      125 CALL                             R15 2 0
      126 FORGLOOP                         R10 2 ; [-5]
      128 FORGLOOP                         R4 2 ; [-78]
      130 GETTABLEKS                       R4 R0 K36 ["children"]
      132 LOADNIL                          R5
      133 LOADNIL                          R6
      134 FORGPREP                         R4
      135 GETUPVAL                         R9 1
      136 MOVE                             R10 R8
      137 CALL                             R9 1 1
      138 SETTABLEKS                       R2 R9 K15 ["Parent"]
      140 FORGLOOP                         R4 2 ; [-6]
      142 OR                               R4 R1 R2
      143 RETURN                           R4 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["type"]
        2 JUMPIFNOTEQKS                    R1 K1 ["Instance"] ; [+5]
        4 GETUPVAL                         R1 0
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 RETURN                           R1 1
        8 GETTABLEKS                       R1 R0 K0 ["type"]
       10 JUMPIFNOTEQKS                    R1 K2 ["Ref"] ; [+5]
       12 GETUPVAL                         R1 1
       13 MOVE                             R2 R0
       14 CALL                             R1 1 1
       15 RETURN                           R1 1
       16 GETUPVAL                         R1 2
       17 GETTABLEKS                       R2 R0 K3 ["name"]
       19 MOVE                             R3 R0
       20 CALL                             R1 2 1
       21 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R2 R1 K0 ["alive"]
        2 JUMPIF                           R2 ; [+12]
        3 GETTABLEKS                       R2 R1 K1 ["frame"]
        5 JUMPIFNOT                        R2 ; [+8]
        6 GETTABLEKS                       R2 R1 K1 ["frame"]
        8 NAMECALL                         R2 R2 K2 ["Destroy"]
       10 CALL                             R2 1 0
       11 LOADNIL                          R2
       12 SETTABLEKS                       R2 R1 K1 ["frame"]
       14 RETURN                           R0 0
       15 GETTABLEKS                       R2 R1 K1 ["frame"]
       17 JUMPIFNOT                        R2 ; [+1]
       18 RETURN                           R0 0
       19 GETTABLEKS                       R2 R1 K3 ["ast"]
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K4 ["resolve"]
       24 MOVE                             R4 R2
       25 CALL                             R3 1 1
       26 JUMPIF                           R3 ; [+1]
       27 RETURN                           R0 0
       28 GETUPVAL                         R4 1
       29 GETTABLEKS                       R5 R3 K5 ["name"]
       31 MOVE                             R6 R3
       32 CALL                             R4 2 1
       33 GETIMPORT                        R5 K8 [Instance.new]
       35 LOADK                            R6 K9 ["StyleSheet"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K8 [Instance.new]
       39 LOADK                            R7 K10 ["StyleLink"]
       40 CALL                             R6 1 1
       41 SETTABLEKS                       R5 R6 K9 ["StyleSheet"]
       43 GETUPVAL                         R7 2
       44 MOVE                             R8 R5
       45 GETUPVAL                         R9 3
       46 CALL                             R7 2 0
       47 SETTABLEKS                       R4 R5 K11 ["Parent"]
       49 SETTABLEKS                       R4 R6 K11 ["Parent"]
       51 GETTABLEKS                       R7 R1 K12 ["host"]
       53 SETTABLEKS                       R7 R4 K11 ["Parent"]
       55 SETTABLEKS                       R4 R1 K1 ["frame"]
       57 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 0
        4 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Debug"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["util"]
       16 GETTABLEKS                       R3 R3 K7 ["pretty"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K4 [require]
       21 GETTABLEKS                       R4 R0 K8 ["state"]
       23 GETTABLEKS                       R4 R4 K9 ["Signals"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K4 [require]
       28 GETTABLEKS                       R5 R0 K10 ["types"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K4 [require]
       33 GETTABLEKS                       R6 R0 K11 ["runtime"]
       35 GETTABLEKS                       R6 R6 K12 ["TemplateResolver"]
       37 CALL                             R5 1 1
       38 DUPCLOSURE                       R6 K13 [PROTO_0]
       39 GETIMPORT                        R7 K4 [require]
       41 GETTABLEKS                       R8 R0 K11 ["runtime"]
       43 GETTABLEKS                       R8 R8 K14 ["populateStyles"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K4 [require]
       48 GETTABLEKS                       R9 R0 K15 ["authoring"]
       50 GETTABLEKS                       R9 R9 K16 ["DefaultStyles"]
       52 CALL                             R8 1 1
       53 LOADNIL                          R9
       54 NEWCLOSURE                       R10 P1
       55 CAPTURE                          REF R9
       56 DUPCLOSURE                       R11 K17 [PROTO_2]
       57 CAPTURE                          VAL R10
       58 NEWCLOSURE                       R12 P3
       59 CAPTURE                          VAL R7
       60 CAPTURE                          REF R9
       61 DUPCLOSURE                       R9 K18 [PROTO_4]
       62 CAPTURE                          VAL R12
       63 CAPTURE                          VAL R11
       64 CAPTURE                          VAL R10
       65 DUPCLOSURE                       R13 K19 [PROTO_5]
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R10
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R8
       70 DUPCLOSURE                       R14 K20 [PROTO_6]
       71 CAPTURE                          VAL R13
       72 CLOSEUPVALS                      R9
       73 RETURN                           R14 1
