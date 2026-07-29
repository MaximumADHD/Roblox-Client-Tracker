PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["Color3"] ; [+7]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K3 ["color3ToHex"]
       10 MOVE                             R2 R0
       11 CALL                             R1 1 -1
       12 RETURN                           R1 -1
       13 FASTCALL1                        TYPE R0 ; [+3]
       14 MOVE                             R2 R0
       15 GETIMPORT                        R1 K5 [type]
       17 CALL                             R1 1 1
       18 JUMPIFEQKS                       R1 K6 ["string"] ; [+15]
       20 FASTCALL1                        TYPE R0 ; [+3]
       21 MOVE                             R2 R0
       22 GETIMPORT                        R1 K5 [type]
       24 CALL                             R1 1 1
       25 JUMPIFEQKS                       R1 K7 ["number"] ; [+8]
       27 FASTCALL1                        TYPE R0 ; [+3]
       28 MOVE                             R2 R0
       29 GETIMPORT                        R1 K5 [type]
       31 CALL                             R1 1 1
       32 JUMPIFNOTEQKS                    R1 K8 ["boolean"] ; [+2]
       34 RETURN                           R0 1
       35 LOADNIL                          R1
       36 RETURN                           R1 1

PROTO_1:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 NEWTABLE                         R1 0 0
        5 GETTABLEKS                       R2 R0 K0 ["controls"]
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 FORGPREP                         R2
       10 LOADNIL                          R7
       11 GETTABLEKS                       R8 R6 K1 ["options"]
       13 JUMPIFNOT                        R8 ; [+66]
       14 NEWTABLE                         R7 0 0
       16 GETTABLEKS                       R8 R6 K1 ["options"]
       18 LOADNIL                          R9
       19 LOADNIL                          R10
       20 FORGPREP                         R8
       21 DUPTABLE                         R15 K5 [{"id", "label", "value"}]
       22 GETTABLEKS                       R16 R12 K2 ["id"]
       24 SETTABLEKS                       R16 R15 K2 ["id"]
       26 GETTABLEKS                       R16 R12 K3 ["label"]
       28 SETTABLEKS                       R16 R15 K3 ["label"]
       30 GETTABLEKS                       R17 R12 K4 ["value"]
       32 FASTCALL1                        TYPEOF R17 ; [+3]
       33 MOVE                             R19 R17
       34 GETIMPORT                        R18 K7 [typeof]
       36 CALL                             R18 1 1
       37 JUMPIFNOTEQKS                    R18 K8 ["Color3"] ; [+8]
       39 GETUPVAL                         R18 0
       40 GETTABLEKS                       R18 R18 K9 ["color3ToHex"]
       42 MOVE                             R19 R17
       43 CALL                             R18 1 1
       44 MOVE                             R16 R18
       45 JUMP                             ; [+24]
       46 FASTCALL1                        TYPE R17 ; [+3]
       47 MOVE                             R19 R17
       48 GETIMPORT                        R18 K11 [type]
       50 CALL                             R18 1 1
       51 JUMPIFEQKS                       R18 K12 ["string"] ; [+15]
       53 FASTCALL1                        TYPE R17 ; [+3]
       54 MOVE                             R19 R17
       55 GETIMPORT                        R18 K11 [type]
       57 CALL                             R18 1 1
       58 JUMPIFEQKS                       R18 K13 ["number"] ; [+8]
       60 FASTCALL1                        TYPE R17 ; [+3]
       61 MOVE                             R19 R17
       62 GETIMPORT                        R18 K11 [type]
       64 CALL                             R18 1 1
       65 JUMPIFNOTEQKS                    R18 K14 ["boolean"] ; [+3]
       67 MOVE                             R16 R17
       68 JUMP                             ; [+1]
       69 LOADNIL                          R16
       70 SETTABLEKS                       R16 R15 K4 ["value"]
       72 FASTCALL2                        TABLE_INSERT R7 R15 ; [+4]
       74 MOVE                             R14 R7
       75 GETIMPORT                        R13 K17 [table.insert]
       77 CALL                             R13 2 0
       78 FORGLOOP                         R8 2 ; [-58]
       80 DUPTABLE                         R10 K22 [{"id", "label", "kind", "default", "editable", "valueType", "options"}]
       81 GETTABLEKS                       R11 R6 K2 ["id"]
       83 SETTABLEKS                       R11 R10 K2 ["id"]
       85 GETTABLEKS                       R11 R6 K3 ["label"]
       87 SETTABLEKS                       R11 R10 K3 ["label"]
       89 GETTABLEKS                       R11 R6 K18 ["kind"]
       91 SETTABLEKS                       R11 R10 K18 ["kind"]
       93 GETTABLEKS                       R12 R6 K19 ["default"]
       95 FASTCALL1                        TYPEOF R12 ; [+3]
       96 MOVE                             R14 R12
       97 GETIMPORT                        R13 K7 [typeof]
       99 CALL                             R13 1 1
      100 JUMPIFNOTEQKS                    R13 K8 ["Color3"] ; [+8]
      102 GETUPVAL                         R13 0
      103 GETTABLEKS                       R13 R13 K9 ["color3ToHex"]
      105 MOVE                             R14 R12
      106 CALL                             R13 1 1
      107 MOVE                             R11 R13
      108 JUMP                             ; [+24]
      109 FASTCALL1                        TYPE R12 ; [+3]
      110 MOVE                             R14 R12
      111 GETIMPORT                        R13 K11 [type]
      113 CALL                             R13 1 1
      114 JUMPIFEQKS                       R13 K12 ["string"] ; [+15]
      116 FASTCALL1                        TYPE R12 ; [+3]
      117 MOVE                             R14 R12
      118 GETIMPORT                        R13 K11 [type]
      120 CALL                             R13 1 1
      121 JUMPIFEQKS                       R13 K13 ["number"] ; [+8]
      123 FASTCALL1                        TYPE R12 ; [+3]
      124 MOVE                             R14 R12
      125 GETIMPORT                        R13 K11 [type]
      127 CALL                             R13 1 1
      128 JUMPIFNOTEQKS                    R13 K14 ["boolean"] ; [+3]
      130 MOVE                             R11 R12
      131 JUMP                             ; [+1]
      132 LOADNIL                          R11
      133 SETTABLEKS                       R11 R10 K19 ["default"]
      135 GETTABLEKS                       R11 R6 K20 ["editable"]
      137 SETTABLEKS                       R11 R10 K20 ["editable"]
      139 GETTABLEKS                       R11 R6 K21 ["valueType"]
      141 SETTABLEKS                       R11 R10 K21 ["valueType"]
      143 SETTABLEKS                       R7 R10 K1 ["options"]
      145 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      147 MOVE                             R9 R1
      148 GETIMPORT                        R8 K17 [table.insert]
      150 CALL                             R8 2 0
      151 FORGLOOP                         R2 2 ; [-142]
      153 DUPTABLE                         R2 K24 [{"controls", "warnings"}]
      154 SETTABLEKS                       R1 R2 K0 ["controls"]
      156 GETTABLEKS                       R3 R0 K23 ["warnings"]
      158 SETTABLEKS                       R3 R2 K23 ["warnings"]
      160 RETURN                           R2 1

PROTO_2:
        0 NEWTABLE                         R2 0 0
        2 JUMPIF                           R0 ; [+1]
        3 RETURN                           R2 1
        4 GETTABLEKS                       R3 R0 K0 ["controls"]
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 FORGPREP                         R3
        9 GETTABLEKS                       R8 R7 K1 ["kind"]
       11 JUMPIFEQKS                       R8 K2 ["passthrough"] ; [+47]
       13 GETTABLEKS                       R10 R7 K3 ["id"]
       15 GETTABLE                         R9 R1 R10
       16 FASTCALL1                        TYPEOF R9 ; [+3]
       17 MOVE                             R11 R9
       18 GETIMPORT                        R10 K5 [typeof]
       20 CALL                             R10 1 1
       21 JUMPIFNOTEQKS                    R10 K6 ["Color3"] ; [+8]
       23 GETUPVAL                         R10 0
       24 GETTABLEKS                       R10 R10 K7 ["color3ToHex"]
       26 MOVE                             R11 R9
       27 CALL                             R10 1 1
       28 MOVE                             R8 R10
       29 JUMP                             ; [+24]
       30 FASTCALL1                        TYPE R9 ; [+3]
       31 MOVE                             R11 R9
       32 GETIMPORT                        R10 K9 [type]
       34 CALL                             R10 1 1
       35 JUMPIFEQKS                       R10 K10 ["string"] ; [+15]
       37 FASTCALL1                        TYPE R9 ; [+3]
       38 MOVE                             R11 R9
       39 GETIMPORT                        R10 K9 [type]
       41 CALL                             R10 1 1
       42 JUMPIFEQKS                       R10 K11 ["number"] ; [+8]
       44 FASTCALL1                        TYPE R9 ; [+3]
       45 MOVE                             R11 R9
       46 GETIMPORT                        R10 K9 [type]
       48 CALL                             R10 1 1
       49 JUMPIFNOTEQKS                    R10 K12 ["boolean"] ; [+3]
       51 MOVE                             R8 R9
       52 JUMP                             ; [+1]
       53 LOADNIL                          R8
       54 JUMPIFEQKNIL                     R8 ; [+4]
       56 GETTABLEKS                       R9 R7 K3 ["id"]
       58 SETTABLE                         R8 R2 R9
       59 FORGLOOP                         R3 2 ; [-51]
       61 RETURN                           R2 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["kind"]
        2 JUMPIFNOTEQKS                    R2 K1 ["color3"] ; [+14]
        4 FASTCALL1                        TYPE R1 ; [+3]
        5 MOVE                             R3 R1
        6 GETIMPORT                        R2 K3 [type]
        8 CALL                             R2 1 1
        9 JUMPIFNOTEQKS                    R2 K4 ["string"] ; [+7]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K5 ["hexToColor3"]
       14 MOVE                             R3 R1
       15 CALL                             R2 1 -1
       16 RETURN                           R2 -1
       17 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["options"]
        2 JUMPIF                           R2 ; [+2]
        3 NEWTABLE                         R2 0 0
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 GETTABLEKS                       R7 R6 K1 ["value"]
       10 JUMPIFNOTEQ                      R7 R1 ; [+2]
       12 RETURN                           R6 1
       13 FORGLOOP                         R2 2 ; [-6]
       15 LOADNIL                          R2
       16 RETURN                           R2 1

PROTO_5:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+3]
        7 LOADK                            R1 K3 ["<table>"]
        8 RETURN                           R1 1
        9 FASTCALL1                        TYPEOF R0 ; [+3]
       10 MOVE                             R2 R0
       11 GETIMPORT                        R1 K5 [typeof]
       13 CALL                             R1 1 1
       14 JUMPIFNOTEQKS                    R1 K6 ["Instance"] ; [+5]
       16 NAMECALL                         R1 R0 K7 ["GetFullName"]
       18 CALL                             R1 1 -1
       19 RETURN                           R1 -1
       20 FASTCALL1                        TOSTRING R0 ; [+3]
       21 MOVE                             R2 R0
       22 GETIMPORT                        R1 K9 [tostring]
       24 CALL                             R1 1 1
       25 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["ColorHex"]
        9 CALL                             R0 1 1
       10 NEWTABLE                         R1 8 0
       12 DUPCLOSURE                       R2 K6 [PROTO_0]
       13 CAPTURE                          VAL R0
       14 DUPCLOSURE                       R3 K7 [PROTO_1]
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R3 R1 K8 ["serializeSchema"]
       18 DUPCLOSURE                       R3 K9 [PROTO_2]
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R3 R1 K10 ["serializeValues"]
       22 DUPCLOSURE                       R3 K11 [PROTO_3]
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R3 R1 K12 ["coerceIncomingValue"]
       26 DUPCLOSURE                       R3 K13 [PROTO_4]
       27 SETTABLEKS                       R3 R1 K14 ["findChoiceOptionByValue"]
       29 DUPCLOSURE                       R3 K15 [PROTO_5]
       30 SETTABLEKS                       R3 R1 K16 ["formatPassthrough"]
       32 RETURN                           R1 1
