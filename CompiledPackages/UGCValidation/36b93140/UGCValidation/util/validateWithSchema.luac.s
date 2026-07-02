PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [type]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+13]
        7 GETIMPORT                        R2 K4 [pairs]
        9 MOVE                             R3 R0
       10 CALL                             R2 1 3
       11 FORGPREP_NEXT                    R2
       12 JUMPIFNOTEQ                      R6 R1 ; [+3]
       14 LOADB                            R7 1
       15 RETURN                           R7 1
       16 FORGLOOP                         R2 2 ; [-5]
       18 JUMP                             ; [+12]
       19 FASTCALL1                        TYPE R0 ; [+3]
       20 MOVE                             R3 R0
       21 GETIMPORT                        R2 K1 [type]
       23 CALL                             R2 1 1
       24 JUMPIFNOTEQKS                    R2 K5 ["string"] ; [+6]
       26 JUMPIFEQ                         R0 R1 ; [+2]
       28 LOADB                            R2 0 +1
       29 LOADB                            R2 1
       30 RETURN                           R2 1
       31 LOADB                            R2 0
       32 RETURN                           R2 1

PROTO_1:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+7]
        7 GETIMPORT                        R1 K4 [table.concat]
        9 MOVE                             R2 R0
       10 LOADK                            R3 K5 [" or "]
       11 CALL                             R1 2 -1
       12 RETURN                           R1 -1
       13 FASTCALL1                        TYPE R0 ; [+3]
       14 MOVE                             R2 R0
       15 GETIMPORT                        R1 K1 [type]
       17 CALL                             R1 1 1
       18 JUMPIFNOTEQKS                    R1 K6 ["string"] ; [+2]
       20 RETURN                           R0 1
       21 LOADK                            R1 K7 ["*"]
       22 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R3 R1 K0 ["ClassName"]
        2 GETTABLEKS                       R4 R0 K0 ["ClassName"]
        4 JUMPIFNOTEQ                      R3 R4 ; [+42]
        6 GETTABLEKS                       R3 R0 K1 ["Name"]
        8 JUMPIFEQKNIL                     R3 ; [+40]
       10 GETTABLEKS                       R4 R0 K1 ["Name"]
       12 GETTABLEKS                       R5 R1 K1 ["Name"]
       14 FASTCALL1                        TYPE R4 ; [+3]
       15 MOVE                             R7 R4
       16 GETIMPORT                        R6 K3 [type]
       18 CALL                             R6 1 1
       19 JUMPIFNOTEQKS                    R6 K4 ["table"] ; [+13]
       21 GETIMPORT                        R6 K6 [pairs]
       23 MOVE                             R7 R4
       24 CALL                             R6 1 3
       25 FORGPREP_NEXT                    R6
       26 JUMPIFNOTEQ                      R10 R5 ; [+3]
       28 LOADB                            R3 1
       29 JUMP                             ; [+16]
       30 FORGLOOP                         R6 2 ; [-5]
       32 JUMP                             ; [+12]
       33 FASTCALL1                        TYPE R4 ; [+3]
       34 MOVE                             R7 R4
       35 GETIMPORT                        R6 K3 [type]
       37 CALL                             R6 1 1
       38 JUMPIFNOTEQKS                    R6 K7 ["string"] ; [+6]
       40 JUMPIFEQ                         R4 R5 ; [+2]
       42 LOADB                            R3 0 +1
       43 LOADB                            R3 1
       44 JUMP                             ; [+1]
       45 LOADB                            R3 0
       46 JUMPIF                           R3 ; [+2]
       47 DUPTABLE                         R3 K10 [{["success"] = False}]
       48 RETURN                           R3 1
       49 GETUPVAL                         R3 0
       50 CALL                             R3 0 1
       51 JUMPIFNOT                        R3 ; [+24]
       52 GETTABLEKS                       R3 R0 K11 ["_ignoreDescendants"]
       54 JUMPIFNOT                        R3 ; [+21]
       55 GETTABLEKS                       R5 R0 K12 ["_children"]
       57 NOT                              R4 R5
       58 FASTCALL2K                       ASSERT R4 K13 ; [+4]
       60 LOADK                            R5 K13 ["if _ignoreDescendants is true, there should be no descendants in the schema as they would be ignored anyway"]
       61 GETIMPORT                        R3 K15 [assert]
       63 CALL                             R3 2 0
       64 NAMECALL                         R3 R1 K16 ["GetDescendants"]
       66 CALL                             R3 1 3
       67 FORGPREP                         R3
       68 LOADB                            R8 1
       69 SETTABLE                         R8 R2 R7
       70 FORGLOOP                         R3 2 ; [-3]
       72 LOADB                            R3 1
       73 SETTABLE                         R3 R2 R1
       74 DUPTABLE                         R3 K18 [{["success"] = True}]
       75 RETURN                           R3 1
       76 GETTABLEKS                       R3 R0 K12 ["_children"]
       78 JUMPIFNOT                        R3 ; [+82]
       79 GETIMPORT                        R3 K6 [pairs]
       81 GETTABLEKS                       R4 R0 K12 ["_children"]
       83 CALL                             R3 1 3
       84 FORGPREP_NEXT                    R3
       85 LOADB                            R8 0
       86 LOADNIL                          R9
       87 GETIMPORT                        R10 K6 [pairs]
       89 NAMECALL                         R11 R1 K19 ["GetChildren"]
       91 CALL                             R11 1 -1
       92 CALL                             R10 -1 3
       93 FORGPREP_NEXT                    R10
       94 GETUPVAL                         R15 0
       95 CALL                             R15 0 1
       96 JUMPIFNOT                        R15 ; [+2]
       97 GETTABLE                         R15 R2 R14
       98 JUMPIF                           R15 ; [+14]
       99 GETUPVAL                         R15 1
      100 MOVE                             R16 R7
      101 MOVE                             R17 R14
      102 MOVE                             R18 R2
      103 CALL                             R15 3 1
      104 GETTABLEKS                       R16 R15 K8 ["success"]
      106 JUMPIFNOT                        R16 ; [+2]
      107 LOADB                            R8 1
      108 JUMP                             ; [+6]
      109 GETTABLEKS                       R16 R15 K20 ["message"]
      111 JUMPIFNOT                        R16 ; [+1]
      112 MOVE                             R9 R15
      113 FORGLOOP                         R10 2 ; [-20]
      115 JUMPIF                           R8 ; [+43]
      116 GETTABLEKS                       R10 R7 K21 ["_optional"]
      118 JUMPIF                           R10 ; [+40]
      119 JUMPIFNOT                        R9 ; [+1]
      120 RETURN                           R9 1
      121 DUPTABLE                         R10 K22 [{["success"] = False, ["message"]}]
      122 LOADK                            R12 K23 ["Could not find a "]
      123 GETTABLEKS                       R13 R7 K0 ["ClassName"]
      125 LOADK                            R14 K24 [" called "]
      126 GETTABLEKS                       R18 R7 K1 ["Name"]
      128 FASTCALL1                        TYPE R18 ; [+3]
      129 MOVE                             R20 R18
      130 GETIMPORT                        R19 K3 [type]
      132 CALL                             R19 1 1
      133 JUMPIFNOTEQKS                    R19 K4 ["table"] ; [+8]
      135 GETIMPORT                        R19 K26 [table.concat]
      137 MOVE                             R20 R18
      138 LOADK                            R21 K27 [" or "]
      139 CALL                             R19 2 1
      140 MOVE                             R15 R19
      141 JUMP                             ; [+10]
      142 FASTCALL1                        TYPE R18 ; [+3]
      143 MOVE                             R20 R18
      144 GETIMPORT                        R19 K3 [type]
      146 CALL                             R19 1 1
      147 JUMPIFNOTEQKS                    R19 K7 ["string"] ; [+3]
      149 MOVE                             R15 R18
      150 JUMP                             ; [+1]
      151 LOADK                            R15 K28 ["*"]
      152 LOADK                            R16 K29 [" inside "]
      153 GETTABLEKS                       R17 R1 K1 ["Name"]
      155 CONCAT                           R11 R12 R17
      156 SETTABLEKS                       R11 R10 K20 ["message"]
      158 RETURN                           R10 1
      159 FORGLOOP                         R3 2 ; [-75]
      161 LOADB                            R3 1
      162 SETTABLE                         R3 R2 R1
      163 DUPTABLE                         R3 K18 [{["success"] = True}]
      164 RETURN                           R3 1

PROTO_3:
        0 GETTABLEKS                       R3 R1 K0 ["ClassName"]
        2 GETTABLEKS                       R4 R0 K0 ["ClassName"]
        4 JUMPIFNOTEQ                      R3 R4 ; [+42]
        6 GETTABLEKS                       R3 R0 K1 ["Name"]
        8 JUMPIFEQKNIL                     R3 ; [+73]
       10 GETTABLEKS                       R4 R0 K1 ["Name"]
       12 GETTABLEKS                       R5 R1 K1 ["Name"]
       14 FASTCALL1                        TYPE R4 ; [+3]
       15 MOVE                             R7 R4
       16 GETIMPORT                        R6 K3 [type]
       18 CALL                             R6 1 1
       19 JUMPIFNOTEQKS                    R6 K4 ["table"] ; [+13]
       21 GETIMPORT                        R6 K6 [pairs]
       23 MOVE                             R7 R4
       24 CALL                             R6 1 3
       25 FORGPREP_NEXT                    R6
       26 JUMPIFNOTEQ                      R10 R5 ; [+3]
       28 LOADB                            R3 1
       29 JUMP                             ; [+16]
       30 FORGLOOP                         R6 2 ; [-5]
       32 JUMP                             ; [+12]
       33 FASTCALL1                        TYPE R4 ; [+3]
       34 MOVE                             R7 R4
       35 GETIMPORT                        R6 K3 [type]
       37 CALL                             R6 1 1
       38 JUMPIFNOTEQKS                    R6 K7 ["string"] ; [+6]
       40 JUMPIFEQ                         R4 R5 ; [+2]
       42 LOADB                            R3 0 +1
       43 LOADB                            R3 1
       44 JUMP                             ; [+1]
       45 LOADB                            R3 0
       46 JUMPIF                           R3 ; [+35]
       47 DUPTABLE                         R3 K11 [{["success"] = False, ["message"]}]
       48 LOADK                            R5 K12 ["Expected top-level instance to be a "]
       49 GETTABLEKS                       R6 R0 K0 ["ClassName"]
       51 LOADK                            R7 K13 [" named "]
       52 GETTABLEKS                       R9 R0 K1 ["Name"]
       54 FASTCALL1                        TYPE R9 ; [+3]
       55 MOVE                             R11 R9
       56 GETIMPORT                        R10 K3 [type]
       58 CALL                             R10 1 1
       59 JUMPIFNOTEQKS                    R10 K4 ["table"] ; [+8]
       61 GETIMPORT                        R10 K15 [table.concat]
       63 MOVE                             R11 R9
       64 LOADK                            R12 K16 [" or "]
       65 CALL                             R10 2 1
       66 MOVE                             R8 R10
       67 JUMP                             ; [+10]
       68 FASTCALL1                        TYPE R9 ; [+3]
       69 MOVE                             R11 R9
       70 GETIMPORT                        R10 K3 [type]
       72 CALL                             R10 1 1
       73 JUMPIFNOTEQKS                    R10 K7 ["string"] ; [+3]
       75 MOVE                             R8 R9
       76 JUMP                             ; [+1]
       77 LOADK                            R8 K17 ["*"]
       78 CONCAT                           R4 R5 R8
       79 SETTABLEKS                       R4 R3 K10 ["message"]
       81 RETURN                           R3 1
       82 NEWTABLE                         R3 0 0
       84 GETUPVAL                         R4 0
       85 MOVE                             R5 R0
       86 MOVE                             R6 R1
       87 MOVE                             R7 R3
       88 CALL                             R4 3 1
       89 GETTABLEKS                       R5 R4 K8 ["success"]
       91 JUMPIF                           R5 ; [+9]
       92 GETUPVAL                         R5 1
       93 CALL                             R5 0 1
       94 JUMPIFNOT                        R5 ; [+5]
       95 GETUPVAL                         R5 2
       96 CALL                             R5 0 1
       97 JUMPIFNOT                        R5 ; [+2]
       98 DUPTABLE                         R5 K19 [{["success"] = False, ["message"] = ""}]
       99 RETURN                           R5 1
      100 RETURN                           R4 1
      101 NEWTABLE                         R5 0 0
      103 GETIMPORT                        R6 K6 [pairs]
      105 NAMECALL                         R7 R1 K20 ["GetDescendants"]
      107 CALL                             R7 1 -1
      108 CALL                             R6 -1 3
      109 FORGPREP_NEXT                    R6
      110 GETTABLE                         R11 R3 R10
      111 JUMPIFNOTEQKNIL                  R11 ; [+7]
      113 LENGTH                           R12 R5
      114 ADDK                             R11 R12 K21 [1]
      115 NAMECALL                         R12 R10 K22 ["GetFullName"]
      117 CALL                             R12 1 1
      118 SETTABLE                         R12 R5 R11
      119 FORGLOOP                         R6 2 ; [-10]
      121 LENGTH                           R6 R5
      122 LOADN                            R7 0
      123 JUMPIFNOTLT                      R7 R6 ; [+20]
      125 GETUPVAL                         R6 1
      126 CALL                             R6 0 1
      127 JUMPIFNOT                        R6 ; [+5]
      128 GETUPVAL                         R6 2
      129 CALL                             R6 0 1
      130 JUMPIFNOT                        R6 ; [+2]
      131 DUPTABLE                         R6 K19 [{["success"] = False, ["message"] = ""}]
      132 RETURN                           R6 1
      133 DUPTABLE                         R6 K11 [{["success"] = False, ["message"]}]
      134 LOADK                            R8 K23 ["Unexpected Descendants:\n"]
      135 GETIMPORT                        R9 K15 [table.concat]
      137 MOVE                             R10 R5
      138 LOADK                            R11 K24 ["\n"]
      139 CALL                             R9 2 1
      140 CONCAT                           R7 R8 R9
      141 SETTABLEKS                       R7 R6 K10 ["message"]
      143 RETURN                           R6 1
      144 DUPTABLE                         R6 K26 [{["success"] = True}]
      145 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["flags"]
       11 GETTABLEKS                       R2 R2 K6 ["getFFlagUGCValidationEnableFolderStructure"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K5 ["flags"]
       18 GETTABLEKS                       R3 R3 K7 ["getFFlagUGCValidationCombineEntrypointResults"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K5 ["flags"]
       25 GETTABLEKS                       R4 R4 K8 ["getFFlagUGCValidationExtendSchemaToIgnoreDescendants"]
       27 CALL                             R3 1 1
       28 DUPCLOSURE                       R4 K9 [PROTO_0]
       29 DUPCLOSURE                       R5 K10 [PROTO_1]
       30 DUPCLOSURE                       R6 K11 [PROTO_2]
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R6
       33 DUPCLOSURE                       R7 K12 [PROTO_3]
       34 CAPTURE                          VAL R6
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R2
       37 RETURN                           R7 1
