PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R2
        4 JUMPIF                           R6 ; [+3]
        5 GETUPVAL                         R6 2
        6 GETTABLEKS                       R6 R6 K0 ["host"]
        8 GETUPVAL                         R7 2
        9 GETUPVAL                         R9 3
       10 JUMPIFNOT                        R9 ; [+4]
       11 GETUPVAL                         R8 3
       12 GETTABLEKS                       R8 R8 K1 ["context"]
       14 JUMP                             ; [+1]
       15 LOADNIL                          R8
       16 MOVE                             R9 R1
       17 CALL                             R3 6 1
       18 LOADB                            R4 1
       19 SETTABLEKS                       R4 R3 K2 ["dynamic"]
       21 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["resolve"]
        3 MOVE                             R7 R1
        4 CALL                             R6 1 1
        5 NEWTABLE                         R7 0 0
        7 GETTABLEKS                       R8 R1 K1 ["params"]
        9 LOADNIL                          R9
       10 LOADNIL                          R10
       11 FORGPREP                         R8
       12 JUMPIFNOT                        R3 ; [+23]
       13 FASTCALL1                        TYPE R12 ; [+3]
       14 MOVE                             R14 R12
       15 GETIMPORT                        R13 K3 [type]
       17 CALL                             R13 1 1
       18 JUMPIFNOTEQKS                    R13 K4 ["table"] ; [+17]
       20 GETTABLEKS                       R13 R12 K2 ["type"]
       22 JUMPIFNOTEQKS                    R13 K5 ["Expr"] ; [+13]
       24 GETUPVAL                         R13 0
       25 GETTABLEKS                       R13 R13 K6 ["getExpressionValue"]
       27 GETTABLEKS                       R14 R12 K7 ["expr"]
       29 GETTABLEKS                       R15 R3 K8 ["context"]
       31 GETTABLEKS                       R16 R3 K9 ["api"]
       33 CALL                             R13 3 1
       34 SETTABLE                         R13 R7 R11
       35 JUMP                             ; [+1]
       36 SETTABLE                         R12 R7 R11
       37 FORGLOOP                         R8 2 ; [-26]
       39 GETTABLEKS                       R8 R1 K1 ["params"]
       41 GETTABLEKS                       R8 R8 K10 ["LayoutOrder"]
       43 FASTCALL1                        TYPE R8 ; [+3]
       44 MOVE                             R11 R8
       45 GETIMPORT                        R10 K3 [type]
       47 CALL                             R10 1 1
       48 JUMPIFNOTEQKS                    R10 K11 ["number"] ; [+3]
       50 MOVE                             R9 R8
       51 JUMP                             ; [+1]
       52 ORK                              R9 R5 K12 [0]
       53 DUPTABLE                         R10 K33 [{["ref"], ["params"], ["host"], ["templateAst"], ["children"], ["depth"], ["parent"], ["scheduled"] = False, ["mounted"] = False, ["alive"] = True, ["dirty"] = False, ["childOrder"], ["effects"], ["effectsDirty"], ["deferredEffects"], ["elements"], ["disposal"], ["refSetters"], ["providers"]}]
       54 SETTABLEKS                       R1 R10 K13 ["ref"]
       56 SETTABLEKS                       R7 R10 K1 ["params"]
       58 SETTABLEKS                       R2 R10 K14 ["host"]
       60 SETTABLEKS                       R6 R10 K15 ["templateAst"]
       62 NEWTABLE                         R11 0 0
       64 SETTABLEKS                       R11 R10 K16 ["children"]
       66 JUMPIFNOT                        R3 ; [+4]
       67 GETTABLEKS                       R12 R3 K17 ["depth"]
       69 ADDK                             R11 R12 K34 [1]
       70 JUMP                             ; [+1]
       71 LOADN                            R11 0
       72 SETTABLEKS                       R11 R10 K17 ["depth"]
       74 SETTABLEKS                       R3 R10 K18 ["parent"]
       76 SETTABLEKS                       R9 R10 K25 ["childOrder"]
       78 NEWTABLE                         R11 0 0
       80 SETTABLEKS                       R11 R10 K26 ["effects"]
       82 NEWTABLE                         R11 0 0
       84 SETTABLEKS                       R11 R10 K27 ["effectsDirty"]
       86 NEWTABLE                         R11 0 0
       88 SETTABLEKS                       R11 R10 K28 ["deferredEffects"]
       90 NEWTABLE                         R11 0 0
       92 SETTABLEKS                       R11 R10 K29 ["elements"]
       94 NEWTABLE                         R11 0 0
       96 SETTABLEKS                       R11 R10 K30 ["disposal"]
       98 NEWTABLE                         R11 0 0
      100 SETTABLEKS                       R11 R10 K31 ["refSetters"]
      102 NEWTABLE                         R11 0 0
      104 SETTABLEKS                       R11 R10 K32 ["providers"]
      106 GETUPVAL                         R11 1
      107 MOVE                             R12 R10
      108 MOVE                             R13 R0
      109 CALL                             R11 2 1
      110 SETTABLEKS                       R11 R10 K9 ["api"]
      112 GETTABLEKS                       R11 R10 K9 ["api"]
      114 NEWCLOSURE                       R12 P0
      115 CAPTURE                          UPVAL U2
      116 CAPTURE                          VAL R0
      117 CAPTURE                          VAL R10
      118 CAPTURE                          VAL R3
      119 SETTABLEKS                       R12 R11 K35 ["createChild"]
      121 GETUPVAL                         R11 3
      122 GETTABLEKS                       R11 R11 K36 ["createContext"]
      124 GETTABLEKS                       R12 R1 K37 ["templateId"]
      126 GETTABLEKS                       R13 R10 K9 ["api"]
      128 GETTABLEKS                       R14 R6 K38 ["defaultParams"]
      130 MOVE                             R15 R7
      131 MOVE                             R16 R4
      132 CALL                             R11 5 2
      133 SETTABLEKS                       R11 R10 K8 ["context"]
      135 SETTABLEKS                       R12 R10 K39 ["assignField"]
      137 GETTABLEKS                       R14 R6 K38 ["defaultParams"]
      139 GETTABLEKS                       R13 R14 K16 ["children"]
      141 JUMPIFNOT                        R13 ; [+14]
      142 GETTABLEKS                       R13 R1 K16 ["children"]
      144 JUMPIFNOT                        R13 ; [+11]
      145 GETTABLEKS                       R14 R1 K16 ["children"]
      147 LENGTH                           R13 R14
      148 LOADN                            R14 0
      149 JUMPIFNOTLT                      R14 R13 ; [+6]
      151 MOVE                             R13 R12
      152 LOADK                            R14 K16 ["children"]
      153 GETTABLEKS                       R15 R1 K16 ["children"]
      155 CALL                             R13 2 0
      156 GETTABLEKS                       R14 R6 K40 ["controller"]
      158 FASTCALL1                        TYPE R14 ; [+2]
      159 GETIMPORT                        R13 K3 [type]
      161 CALL                             R13 1 1
      162 JUMPIFNOTEQKS                    R13 K41 ["function"] ; [+15]
      164 GETUPVAL                         R13 4
      165 GETTABLEKS                       R14 R6 K40 ["controller"]
      167 MOVE                             R15 R11
      168 GETTABLEKS                       R16 R10 K9 ["api"]
      170 CALL                             R13 3 1
      171 GETUPVAL                         R14 3
      172 GETTABLEKS                       R14 R14 K42 ["mergeDefinitions"]
      174 MOVE                             R15 R13
      175 MOVE                             R16 R11
      176 MOVE                             R17 R12
      177 CALL                             R14 3 0
      178 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["util"]
       11 GETTABLEKS                       R2 R2 K6 ["pretty"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K7 ["types"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K4 [require]
       21 GETIMPORT                        R4 K1 [script]
       23 GETTABLEKS                       R4 R4 K2 ["Parent"]
       25 GETTABLEKS                       R4 R4 K8 ["TemplateResolver"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K4 [require]
       30 GETTABLEKS                       R5 R0 K9 ["state"]
       32 GETTABLEKS                       R5 R5 K10 ["Context"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K4 [require]
       37 GETTABLEKS                       R6 R0 K9 ["state"]
       39 GETTABLEKS                       R6 R6 K11 ["Signals"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K4 [require]
       44 GETIMPORT                        R7 K1 [script]
       46 GETTABLEKS                       R7 R7 K2 ["Parent"]
       48 GETTABLEKS                       R7 R7 K12 ["createApi"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K4 [require]
       53 GETTABLEKS                       R8 R0 K9 ["state"]
       55 GETTABLEKS                       R8 R8 K13 ["callUserSpace"]
       57 CALL                             R7 1 1
       58 DUPCLOSURE                       R8 K14 [PROTO_1]
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R8
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R7
       64 RETURN                           R8 1
