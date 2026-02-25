PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 MOVE                             R2 R0
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETTABLE                         R9 R1 R6
        8 JUMPIFEQKNIL                     R9 ; [+2]
       10 LOADB                            R8 0 +1
       11 LOADB                            R8 1
       12 FASTCALL1                        ASSERT R8 ; [+2]
       13 GETIMPORT                        R7 K2 [assert]
       15 CALL                             R7 1 0
       16 GETTABLEKS                       R7 R6 K3 ["Destroying"]
       18 DUPCLOSURE                       R9 K4 [PROTO_0]
       19 NAMECALL                         R7 R7 K5 ["Connect"]
       21 CALL                             R7 2 1
       22 SETTABLE                         R7 R1 R6
       23 FORGLOOP                         R2 2 ; [-17]
       25 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 MOVE                             R1 R0
        4 LOADNIL                          R2
        5 LOADNIL                          R3
        6 FORGPREP                         R1
        7 NAMECALL                         R6 R5 K1 ["Disconnect"]
        9 CALL                             R6 1 0
       10 FORGLOOP                         R1 2 ; [-4]
       12 GETUPVAL                         R1 0
       13 NEWTABLE                         R2 0 0
       15 SETTABLEKS                       R2 R1 K0 ["current"]
       17 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 MOVE                             R1 R0
        4 LOADNIL                          R2
        5 LOADNIL                          R3
        6 FORGPREP                         R1
        7 NAMECALL                         R6 R5 K1 ["Disconnect"]
        9 CALL                             R6 1 0
       10 FORGLOOP                         R1 2 ; [-4]
       12 GETUPVAL                         R1 0
       13 NEWTABLE                         R2 0 0
       15 SETTABLEKS                       R2 R1 K0 ["current"]
       17 RETURN                           R0 0

PROTO_4:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 MOVE                             R2 R1
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 NAMECALL                         R7 R6 K1 ["Disconnect"]
        9 CALL                             R7 1 0
       10 FORGLOOP                         R2 2 ; [-4]
       12 GETUPVAL                         R2 0
       13 NEWTABLE                         R3 0 0
       15 SETTABLEKS                       R3 R2 K0 ["current"]
       17 GETUPVAL                         R1 1
       18 MOVE                             R2 R0
       19 CALL                             R1 1 0
       20 GETUPVAL                         R1 2
       21 GETUPVAL                         R2 3
       22 MOVE                             R3 R0
       23 CALL                             R2 1 -1
       24 CALL                             R1 -1 0
       25 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R2 R3 K0 ["current"]
        7 GETTABLE                         R3 R2 R0
        8 JUMPIFNOT                        R3 ; [+6]
        9 GETTABLE                         R3 R2 R0
       10 NAMECALL                         R3 R3 K1 ["Disconnect"]
       12 CALL                             R3 1 0
       13 LOADNIL                          R3
       14 SETTABLE                         R3 R2 R0
       15 GETUPVAL                         R3 3
       16 MOVE                             R4 R1
       17 CALL                             R3 1 0
       18 GETUPVAL                         R3 4
       19 LOADK                            R4 K2 ["Update Materials"]
       20 MOVE                             R5 R1
       21 CALL                             R3 2 0
       22 RETURN                           R0 0

PROTO_7:
        0 LENGTH                           R4 R0
        1 JUMPIFNOTEQKN                    R4 K0 [0] ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R4 0
        5 MOVE                             R5 R0
        6 CALL                             R4 1 0
        7 GETIMPORT                        R4 K3 [table.clone]
        9 GETUPVAL                         R5 1
       10 CALL                             R4 1 1
       11 MOVE                             R5 R0
       12 LOADNIL                          R6
       13 LOADNIL                          R7
       14 FORGPREP                         R5
       15 DUPTABLE                         R10 K8 [{"generationId", "sampleId", "hasBaseMaterial", "status"}]
       16 SETTABLEKS                       R3 R10 K4 ["generationId"]
       18 SUBK                             R11 R8 K9 [1]
       19 SETTABLEKS                       R11 R10 K5 ["sampleId"]
       21 LOADB                            R11 0
       22 SETTABLEKS                       R11 R10 K6 ["hasBaseMaterial"]
       24 LOADK                            R11 K10 ["None"]
       25 SETTABLEKS                       R11 R10 K7 ["status"]
       27 SETTABLE                         R10 R4 R9
       28 FORGLOOP                         R5 2 ; [-14]
       30 GETUPVAL                         R5 2
       31 MOVE                             R6 R0
       32 MOVE                             R7 R1
       33 MOVE                             R8 R2
       34 GETUPVAL                         R9 3
       35 CALL                             R5 4 1
       36 GETUPVAL                         R6 4
       37 MOVE                             R7 R5
       38 CALL                             R6 1 0
       39 GETUPVAL                         R6 5
       40 MOVE                             R7 R4
       41 CALL                             R6 1 0
       42 GETUPVAL                         R6 6
       43 LOADK                            R7 K11 ["Update Materials"]
       44 MOVE                             R8 R5
       45 CALL                             R6 2 0
       46 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 MOVE                             R1 R0
        4 LOADNIL                          R2
        5 LOADNIL                          R3
        6 FORGPREP                         R1
        7 NAMECALL                         R6 R5 K1 ["Disconnect"]
        9 CALL                             R6 1 0
       10 FORGLOOP                         R1 2 ; [-4]
       12 GETUPVAL                         R1 0
       13 NEWTABLE                         R2 0 0
       15 SETTABLEKS                       R2 R1 K0 ["current"]
       17 GETUPVAL                         R0 1
       18 NEWTABLE                         R1 0 0
       20 CALL                             R0 1 0
       21 GETUPVAL                         R0 2
       22 LOADK                            R1 K2 ["Update Materials"]
       23 NEWTABLE                         R2 0 0
       25 CALL                             R0 2 0
       26 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 FASTCALL1                        ASSERT R1 ; [+3]
        3 MOVE                             R3 R1
        4 GETIMPORT                        R2 K1 [assert]
        6 CALL                             R2 1 0
        7 GETTABLEKS                       R2 R1 K2 ["hasBaseMaterial"]
        9 RETURN                           R2 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 FASTCALL1                        ASSERT R1 ; [+3]
        3 MOVE                             R3 R1
        4 GETIMPORT                        R2 K1 [assert]
        6 CALL                             R2 1 0
        7 GETTABLEKS                       R2 R1 K2 ["hasBaseMaterial"]
        9 JUMPIF                           R2 ; [+17]
       10 GETIMPORT                        R2 K5 [table.clone]
       12 GETUPVAL                         R3 0
       13 CALL                             R2 1 1
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R3 R4 K6 ["join"]
       17 GETTABLE                         R4 R2 R0
       18 DUPTABLE                         R5 K7 [{"hasBaseMaterial"}]
       19 LOADB                            R6 1
       20 SETTABLEKS                       R6 R5 K2 ["hasBaseMaterial"]
       22 CALL                             R3 2 1
       23 SETTABLE                         R3 R2 R0
       24 GETUPVAL                         R3 2
       25 MOVE                             R4 R2
       26 CALL                             R3 1 0
       27 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 FASTCALL1                        ASSERT R1 ; [+3]
        3 MOVE                             R3 R1
        4 GETIMPORT                        R2 K1 [assert]
        6 CALL                             R2 1 0
        7 GETTABLEKS                       R2 R1 K2 ["status"]
        9 RETURN                           R2 1

PROTO_12:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 FASTCALL1                        ASSERT R2 ; [+3]
        3 MOVE                             R4 R2
        4 GETIMPORT                        R3 K1 [assert]
        6 CALL                             R3 1 0
        7 GETTABLEKS                       R3 R2 K2 ["status"]
        9 JUMPIFEQ                         R3 R1 ; [+17]
       11 GETIMPORT                        R3 K5 [table.clone]
       13 GETUPVAL                         R4 0
       14 CALL                             R3 1 1
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R4 R5 K6 ["join"]
       18 MOVE                             R5 R2
       19 DUPTABLE                         R6 K7 [{"status"}]
       20 SETTABLEKS                       R1 R6 K2 ["status"]
       22 CALL                             R4 2 1
       23 SETTABLE                         R4 R3 R0
       24 GETUPVAL                         R4 2
       25 MOVE                             R5 R3
       26 CALL                             R4 1 0
       27 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 FASTCALL2K                       ASSERT R1 K0 ; [+5]
        4 MOVE                             R3 R1
        5 LOADK                            R4 K0 ["Missing state for MaterialVariant"]
        6 GETIMPORT                        R2 K2 [assert]
        8 CALL                             R2 2 0
        9 GETTABLEKS                       R2 R1 K3 ["generationId"]
       11 GETTABLEKS                       R3 R1 K4 ["sampleId"]
       13 RETURN                           R2 2

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 NEWTABLE                         R2 0 0
        5 CALL                             R1 1 2
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K0 ["useState"]
        9 NEWTABLE                         R4 0 0
       11 CALL                             R3 1 2
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R5 R6 K1 ["useRef"]
       15 NEWTABLE                         R6 0 0
       17 CALL                             R5 1 1
       18 GETTABLEKS                       R8 R5 K2 ["current"]
       20 JUMPIFNOTEQKNIL                  R8 ; [+2]
       22 LOADB                            R7 0 +1
       23 LOADB                            R7 1
       24 GETUPVAL                         R8 1
       25 FASTCALL2                        ASSERT R7 R8 ; [+3]
       27 GETIMPORT                        R6 K4 [assert]
       29 CALL                             R6 2 0
       30 NEWCLOSURE                       R6 P0
       31 CAPTURE                          VAL R5
       32 NEWCLOSURE                       R7 P1
       33 CAPTURE                          VAL R5
       34 GETUPVAL                         R9 0
       35 GETTABLEKS                       R8 R9 K5 ["useEffect"]
       37 NEWCLOSURE                       R9 P2
       38 CAPTURE                          VAL R5
       39 NEWTABLE                         R10 0 0
       41 CALL                             R8 2 0
       42 GETUPVAL                         R8 2
       43 MOVE                             R9 R1
       44 NEWCLOSURE                       R10 P3
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R6
       48 CAPTURE                          UPVAL U3
       49 NEWTABLE                         R11 0 0
       51 CALL                             R8 3 1
       52 GETUPVAL                         R10 0
       53 GETTABLEKS                       R9 R10 K6 ["useCallback"]
       55 NEWCLOSURE                       R10 P4
       56 CAPTURE                          UPVAL U4
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R8
       61 NEWTABLE                         R11 0 2
       63 MOVE                             R12 R1
       64 MOVE                             R13 R8
       65 SETLIST                          R11 R12 2 [1]
       67 CALL                             R9 2 1
       68 GETUPVAL                         R11 0
       69 GETTABLEKS                       R10 R11 K6 ["useCallback"]
       71 NEWCLOSURE                       R11 P5
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R3
       74 CAPTURE                          UPVAL U5
       75 CAPTURE                          VAL R1
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R8
       79 NEWTABLE                         R12 0 3
       81 MOVE                             R13 R1
       82 MOVE                             R14 R3
       83 MOVE                             R15 R8
       84 SETLIST                          R12 R13 3 [1]
       86 CALL                             R10 2 1
       87 GETUPVAL                         R12 0
       88 GETTABLEKS                       R11 R12 K6 ["useCallback"]
       90 NEWCLOSURE                       R12 P6
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R2
       93 CAPTURE                          VAL R8
       94 NEWTABLE                         R13 0 2
       96 MOVE                             R14 R1
       97 MOVE                             R15 R8
       98 SETLIST                          R13 R14 2 [1]
      100 CALL                             R11 2 1
      101 GETUPVAL                         R13 0
      102 GETTABLEKS                       R12 R13 K6 ["useCallback"]
      104 NEWCLOSURE                       R13 P7
      105 CAPTURE                          VAL R3
      106 NEWTABLE                         R14 0 1
      108 MOVE                             R15 R3
      109 SETLIST                          R14 R15 1 [1]
      111 CALL                             R12 2 1
      112 GETUPVAL                         R14 0
      113 GETTABLEKS                       R13 R14 K6 ["useCallback"]
      115 NEWCLOSURE                       R14 P8
      116 CAPTURE                          VAL R3
      117 CAPTURE                          UPVAL U6
      118 CAPTURE                          VAL R4
      119 NEWTABLE                         R15 0 1
      121 MOVE                             R16 R3
      122 SETLIST                          R15 R16 1 [1]
      124 CALL                             R13 2 1
      125 GETUPVAL                         R15 0
      126 GETTABLEKS                       R14 R15 K6 ["useCallback"]
      128 NEWCLOSURE                       R15 P9
      129 CAPTURE                          VAL R3
      130 NEWTABLE                         R16 0 1
      132 MOVE                             R17 R3
      133 SETLIST                          R16 R17 1 [1]
      135 CALL                             R14 2 1
      136 GETUPVAL                         R16 0
      137 GETTABLEKS                       R15 R16 K6 ["useCallback"]
      139 NEWCLOSURE                       R16 P10
      140 CAPTURE                          VAL R3
      141 CAPTURE                          UPVAL U6
      142 CAPTURE                          VAL R4
      143 NEWTABLE                         R17 0 1
      145 MOVE                             R18 R3
      146 SETLIST                          R17 R18 1 [1]
      148 CALL                             R15 2 1
      149 GETUPVAL                         R17 0
      150 GETTABLEKS                       R16 R17 K6 ["useCallback"]
      152 NEWCLOSURE                       R17 P11
      153 CAPTURE                          VAL R3
      154 NEWTABLE                         R18 0 1
      156 MOVE                             R19 R3
      157 SETLIST                          R18 R19 1 [1]
      159 CALL                             R16 2 1
      160 DUPTABLE                         R17 K17 [{"promptGroups", "materialStates", "addMaterials", "removeMaterial", "removeAllMaterials", "hasBaseMaterial", "markHasBaseMaterial", "getMaterialStatus", "setMaterialStatus", "getMaterialIdentifiers"}]
      161 SETTABLEKS                       R1 R17 K7 ["promptGroups"]
      163 SETTABLEKS                       R3 R17 K8 ["materialStates"]
      165 SETTABLEKS                       R10 R17 K9 ["addMaterials"]
      167 SETTABLEKS                       R9 R17 K10 ["removeMaterial"]
      169 SETTABLEKS                       R11 R17 K11 ["removeAllMaterials"]
      171 SETTABLEKS                       R12 R17 K12 ["hasBaseMaterial"]
      173 SETTABLEKS                       R13 R17 K13 ["markHasBaseMaterial"]
      175 SETTABLEKS                       R14 R17 K14 ["getMaterialStatus"]
      177 SETTABLEKS                       R15 R17 K15 ["setMaterialStatus"]
      179 SETTABLEKS                       R16 R17 K16 ["getMaterialIdentifiers"]
      181 GETUPVAL                         R19 0
      182 GETTABLEKS                       R18 R19 K18 ["createElement"]
      184 GETUPVAL                         R20 7
      185 GETTABLEKS                       R19 R20 K19 ["Provider"]
      187 DUPTABLE                         R20 K21 [{"value"}]
      188 SETTABLEKS                       R17 R20 K20 ["value"]
      190 GETTABLEKS                       R21 R0 K22 ["children"]
      192 CALL                             R18 3 -1
      193 RETURN                           R18 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MaterialGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["LUAU_ANALYZE_ERROR"]
       30 GETTABLEKS                       R5 R3 K11 ["useHistory"]
       32 GETTABLEKS                       R7 R0 K12 ["Src"]
       34 GETTABLEKS                       R6 R7 K13 ["Util"]
       36 GETIMPORT                        R7 K5 [require]
       38 GETTABLEKS                       R8 R6 K14 ["GeneratedMaterialsContext"]
       40 CALL                             R7 1 1
       41 GETIMPORT                        R8 K5 [require]
       43 GETTABLEKS                       R9 R6 K15 ["addMaterials"]
       45 CALL                             R8 1 1
       46 GETIMPORT                        R9 K5 [require]
       48 GETTABLEKS                       R10 R6 K16 ["getAllMaterialVariants"]
       50 CALL                             R9 1 1
       51 GETIMPORT                        R10 K5 [require]
       53 GETTABLEKS                       R11 R6 K17 ["removeMaterial"]
       55 CALL                             R10 1 1
       56 GETIMPORT                        R11 K5 [require]
       58 GETTABLEKS                       R13 R0 K12 ["Src"]
       60 GETTABLEKS                       R12 R13 K18 ["Types"]
       62 CALL                             R11 1 1
       63 DUPCLOSURE                       R12 K19 [PROTO_14]
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R10
       69 CAPTURE                          VAL R8
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R7
       72 RETURN                           R12 1
