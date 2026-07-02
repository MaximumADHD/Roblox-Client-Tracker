PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["DataModel"]
        4 JUMPIFNOTEQKS                    R1 K1 ["Edit"] ; [+22]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K2 ["Annotation"]
        9 GETTABLEKS                       R1 R1 K3 ["Adornee"]
       11 JUMPIFNOT                        R1 ; [+27]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K2 ["Annotation"]
       15 GETTABLEKS                       R1 R1 K3 ["Adornee"]
       17 LOADK                            R3 K4 ["Name"]
       18 NAMECALL                         R1 R1 K5 ["GetPropertyChangedSignal"]
       20 CALL                             R1 2 1
       21 GETUPVAL                         R3 1
       22 NAMECALL                         R1 R1 K6 ["Connect"]
       24 CALL                             R1 2 1
       25 MOVE                             R0 R1
       26 JUMP                             ; [+12]
       27 GETUPVAL                         R1 0
       28 GETTABLEKS                       R1 R1 K2 ["Annotation"]
       30 LOADK                            R3 K7 ["HeaderText"]
       31 NAMECALL                         R1 R1 K8 ["GetAttributeChangedSignal"]
       33 CALL                             R1 2 1
       34 GETUPVAL                         R3 1
       35 NAMECALL                         R1 R1 K6 ["Connect"]
       37 CALL                             R1 2 1
       38 MOVE                             R0 R1
       39 NEWCLOSURE                       R1 P0
       40 CAPTURE                          REF R0
       41 CLOSEUPVALS                      R0
       42 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 1
        4 GETUPVAL                         R2 2
        5 NAMECALL                         R2 R2 K0 ["use"]
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 3
        9 GETTABLEKS                       R3 R3 K1 ["useContext"]
       11 GETUPVAL                         R4 4
       12 GETTABLEKS                       R4 R4 K2 ["Context"]
       14 CALL                             R3 1 1
       15 GETUPVAL                         R4 3
       16 GETTABLEKS                       R4 R4 K3 ["useReducer"]
       18 GETUPVAL                         R5 5
       19 LOADN                            R6 0
       20 CALL                             R4 2 2
       21 GETUPVAL                         R6 3
       22 GETTABLEKS                       R6 R6 K4 ["useEffect"]
       24 NEWCLOSURE                       R7 P0
       25 CAPTURE                          VAL R1
       26 CAPTURE                          VAL R5
       27 NEWTABLE                         R8 0 2
       29 GETTABLEKS                       R9 R1 K5 ["DataModel"]
       31 GETTABLEKS                       R10 R1 K6 ["Annotation"]
       33 SETLIST                          R8 R9 2 [1]
       35 CALL                             R6 2 0
       36 LOADNIL                          R6
       37 GETTABLEKS                       R7 R1 K5 ["DataModel"]
       39 JUMPIFNOTEQKS                    R7 K7 ["Edit"] ; [+13]
       41 GETTABLEKS                       R7 R1 K6 ["Annotation"]
       43 GETTABLEKS                       R7 R7 K8 ["Adornee"]
       45 JUMPIFNOT                        R7 ; [+7]
       46 GETTABLEKS                       R7 R1 K6 ["Annotation"]
       48 GETTABLEKS                       R7 R7 K8 ["Adornee"]
       50 GETTABLEKS                       R6 R7 K9 ["ClassName"]
       52 JUMP                             ; [+7]
       53 GETTABLEKS                       R7 R1 K6 ["Annotation"]
       55 LOADK                            R9 K10 ["AdorneeClass"]
       56 NAMECALL                         R7 R7 K11 ["GetAttribute"]
       58 CALL                             R7 2 1
       59 MOVE                             R6 R7
       60 LOADNIL                          R7
       61 GETTABLEKS                       R8 R1 K5 ["DataModel"]
       63 JUMPIFNOTEQKS                    R8 K7 ["Edit"] ; [+24]
       65 GETTABLEKS                       R8 R1 K6 ["Annotation"]
       67 GETTABLEKS                       R8 R8 K8 ["Adornee"]
       69 JUMPIFNOT                        R8 ; [+7]
       70 GETTABLEKS                       R8 R1 K6 ["Annotation"]
       72 GETTABLEKS                       R8 R8 K8 ["Adornee"]
       74 GETTABLEKS                       R7 R8 K12 ["Name"]
       76 JUMP                             ; [+29]
       77 LOADK                            R8 K13 ["(%*)"]
       78 LOADK                            R12 K14 ["Card"]
       79 LOADK                            R13 K15 ["DeletedInstance"]
       80 NAMECALL                         R10 R2 K16 ["getText"]
       82 CALL                             R10 3 1
       83 NAMECALL                         R8 R8 K17 ["format"]
       85 CALL                             R8 2 1
       86 MOVE                             R7 R8
       87 JUMP                             ; [+18]
       88 GETTABLEKS                       R8 R1 K6 ["Annotation"]
       90 LOADK                            R10 K18 ["HeaderText"]
       91 NAMECALL                         R8 R8 K11 ["GetAttribute"]
       93 CALL                             R8 2 1
       94 JUMPIF                           R8 ; [+10]
       95 LOADK                            R9 K13 ["(%*)"]
       96 LOADK                            R13 K14 ["Card"]
       97 LOADK                            R14 K15 ["DeletedInstance"]
       98 NAMECALL                         R11 R2 K16 ["getText"]
      100 CALL                             R11 3 1
      101 NAMECALL                         R9 R9 K17 ["format"]
      103 CALL                             R9 2 1
      104 MOVE                             R8 R9
      105 MOVE                             R7 R8
      106 GETUPVAL                         R8 3
      107 GETTABLEKS                       R8 R8 K19 ["createElement"]
      109 LOADK                            R9 K20 ["Frame"]
      110 NEWTABLE                         R10 1 0
      112 GETUPVAL                         R11 3
      113 GETTABLEKS                       R11 R11 K21 ["Tag"]
      115 LOADK                            R12 K22 ["Component-AnnotationHeader"]
      116 SETTABLE                         R12 R10 R11
      117 DUPTABLE                         R11 K24 [{"Navigation"}]
      118 GETUPVAL                         R12 3
      119 GETTABLEKS                       R12 R12 K19 ["createElement"]
      121 LOADK                            R13 K20 ["Frame"]
      122 DUPTABLE                         R14 K27 [{["LayoutOrder"] = 0}]
      123 DUPTABLE                         R15 K30 [{"LeftAligned", "RightAligned"}]
      124 GETUPVAL                         R16 3
      125 GETTABLEKS                       R16 R16 K19 ["createElement"]
      127 LOADK                            R17 K20 ["Frame"]
      128 NEWTABLE                         R18 0 0
      130 DUPTABLE                         R19 K32 [{"ClassIcon", "Adornee"}]
      131 JUMPIFNOT                        R6 ; [+15]
      132 GETUPVAL                         R20 3
      133 GETTABLEKS                       R20 R20 K19 ["createElement"]
      135 LOADK                            R21 K33 ["ImageLabel"]
      136 DUPTABLE                         R22 K35 [{["Image"], ["LayoutOrder"] = 0}]
      137 GETTABLEKS                       R23 R3 K36 ["getClassIcon"]
      139 MOVE                             R24 R6
      140 CALL                             R23 1 1
      141 GETTABLEKS                       R23 R23 K34 ["Image"]
      143 SETTABLEKS                       R23 R22 K34 ["Image"]
      145 CALL                             R20 2 1
      146 JUMP                             ; [+1]
      147 LOADNIL                          R20
      148 SETTABLEKS                       R20 R19 K31 ["ClassIcon"]
      150 GETUPVAL                         R20 3
      151 GETTABLEKS                       R20 R20 K19 ["createElement"]
      153 LOADK                            R21 K37 ["TextLabel"]
      154 DUPTABLE                         R22 K40 [{["Text"], ["LayoutOrder"] = 1}]
      155 SETTABLEKS                       R7 R22 K38 ["Text"]
      157 CALL                             R20 2 1
      158 SETTABLEKS                       R20 R19 K8 ["Adornee"]
      160 CALL                             R16 3 1
      161 SETTABLEKS                       R16 R15 K28 ["LeftAligned"]
      163 GETUPVAL                         R16 3
      164 GETTABLEKS                       R16 R16 K19 ["createElement"]
      166 LOADK                            R17 K20 ["Frame"]
      167 DUPTABLE                         R18 K42 [{["LayoutOrder"] = 2}]
      168 GETTABLEKS                       R19 R1 K43 ["children"]
      170 CALL                             R16 3 1
      171 SETTABLEKS                       R16 R15 K29 ["RightAligned"]
      173 CALL                             R12 3 1
      174 SETTABLEKS                       R12 R11 K23 ["Navigation"]
      176 CALL                             R8 3 -1
      177 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Types"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K11 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K12 ["Localization"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R0 K9 ["Src"]
       36 GETTABLEKS                       R7 R7 K13 ["Contexts"]
       38 GETTABLEKS                       R7 R7 K14 ["ClassIconContext"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R8 R0 K9 ["Src"]
       45 GETTABLEKS                       R8 R8 K15 ["Util"]
       47 GETTABLEKS                       R8 R8 K16 ["rerenderReducer"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K5 [require]
       52 GETTABLEKS                       R9 R0 K6 ["Packages"]
       54 GETTABLEKS                       R9 R9 K17 ["Cryo"]
       56 CALL                             R8 1 1
       57 GETTABLEKS                       R8 R8 K18 ["Dictionary"]
       59 GETTABLEKS                       R8 R8 K19 ["join"]
       61 NEWTABLE                         R9 0 0
       63 DUPCLOSURE                       R10 K20 [PROTO_2]
       64 CAPTURE                          VAL R8
       65 CAPTURE                          VAL R9
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R7
       70 GETTABLEKS                       R11 R1 K21 ["memo"]
       72 MOVE                             R12 R10
       73 CALL                             R11 1 -1
       74 RETURN                           R11 -1
