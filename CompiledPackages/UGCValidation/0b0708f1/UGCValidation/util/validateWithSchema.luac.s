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
        8 JUMPIFEQKNIL                     R3 ; [+43]
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
       46 JUMPIF                           R3 ; [+5]
       47 DUPTABLE                         R3 K9 [{"success"}]
       48 LOADB                            R4 0
       49 SETTABLEKS                       R4 R3 K8 ["success"]
       51 RETURN                           R3 1
       52 GETUPVAL                         R3 0
       53 CALL                             R3 0 1
       54 JUMPIFNOT                        R3 ; [+27]
       55 GETTABLEKS                       R3 R0 K10 ["_ignoreDescendants"]
       57 JUMPIFNOT                        R3 ; [+24]
       58 GETTABLEKS                       R5 R0 K11 ["_children"]
       60 NOT                              R4 R5
       61 FASTCALL2K                       ASSERT R4 K12 ; [+4]
       63 LOADK                            R5 K12 ["if _ignoreDescendants is true, there should be no descendants in the schema as they would be ignored anyway"]
       64 GETIMPORT                        R3 K14 [assert]
       66 CALL                             R3 2 0
       67 NAMECALL                         R3 R1 K15 ["GetDescendants"]
       69 CALL                             R3 1 3
       70 FORGPREP                         R3
       71 LOADB                            R8 1
       72 SETTABLE                         R8 R2 R7
       73 FORGLOOP                         R3 2 ; [-3]
       75 LOADB                            R3 1
       76 SETTABLE                         R3 R2 R1
       77 DUPTABLE                         R3 K9 [{"success"}]
       78 LOADB                            R4 1
       79 SETTABLEKS                       R4 R3 K8 ["success"]
       81 RETURN                           R3 1
       82 GETTABLEKS                       R3 R0 K11 ["_children"]
       84 JUMPIFNOT                        R3 ; [+85]
       85 GETIMPORT                        R3 K6 [pairs]
       87 GETTABLEKS                       R4 R0 K11 ["_children"]
       89 CALL                             R3 1 3
       90 FORGPREP_NEXT                    R3
       91 LOADB                            R8 0
       92 LOADNIL                          R9
       93 GETIMPORT                        R10 K6 [pairs]
       95 NAMECALL                         R11 R1 K16 ["GetChildren"]
       97 CALL                             R11 1 -1
       98 CALL                             R10 -1 3
       99 FORGPREP_NEXT                    R10
      100 GETUPVAL                         R15 0
      101 CALL                             R15 0 1
      102 JUMPIFNOT                        R15 ; [+2]
      103 GETTABLE                         R15 R2 R14
      104 JUMPIF                           R15 ; [+14]
      105 GETUPVAL                         R15 1
      106 MOVE                             R16 R7
      107 MOVE                             R17 R14
      108 MOVE                             R18 R2
      109 CALL                             R15 3 1
      110 GETTABLEKS                       R16 R15 K8 ["success"]
      112 JUMPIFNOT                        R16 ; [+2]
      113 LOADB                            R8 1
      114 JUMP                             ; [+6]
      115 GETTABLEKS                       R16 R15 K17 ["message"]
      117 JUMPIFNOT                        R16 ; [+1]
      118 MOVE                             R9 R15
      119 FORGLOOP                         R10 2 ; [-20]
      121 JUMPIF                           R8 ; [+46]
      122 GETTABLEKS                       R10 R7 K18 ["_optional"]
      124 JUMPIF                           R10 ; [+43]
      125 JUMPIFNOT                        R9 ; [+1]
      126 RETURN                           R9 1
      127 DUPTABLE                         R10 K19 [{"success", "message"}]
      128 LOADB                            R11 0
      129 SETTABLEKS                       R11 R10 K8 ["success"]
      131 LOADK                            R12 K20 ["Could not find a "]
      132 GETTABLEKS                       R13 R7 K0 ["ClassName"]
      134 LOADK                            R14 K21 [" called "]
      135 GETTABLEKS                       R18 R7 K1 ["Name"]
      137 FASTCALL1                        TYPE R18 ; [+3]
      138 MOVE                             R20 R18
      139 GETIMPORT                        R19 K3 [type]
      141 CALL                             R19 1 1
      142 JUMPIFNOTEQKS                    R19 K4 ["table"] ; [+8]
      144 GETIMPORT                        R19 K23 [table.concat]
      146 MOVE                             R20 R18
      147 LOADK                            R21 K24 [" or "]
      148 CALL                             R19 2 1
      149 MOVE                             R15 R19
      150 JUMP                             ; [+10]
      151 FASTCALL1                        TYPE R18 ; [+3]
      152 MOVE                             R20 R18
      153 GETIMPORT                        R19 K3 [type]
      155 CALL                             R19 1 1
      156 JUMPIFNOTEQKS                    R19 K7 ["string"] ; [+3]
      158 MOVE                             R15 R18
      159 JUMP                             ; [+1]
      160 LOADK                            R15 K25 ["*"]
      161 LOADK                            R16 K26 [" inside "]
      162 GETTABLEKS                       R17 R1 K1 ["Name"]
      164 CONCAT                           R11 R12 R17
      165 SETTABLEKS                       R11 R10 K17 ["message"]
      167 RETURN                           R10 1
      168 FORGLOOP                         R3 2 ; [-78]
      170 LOADB                            R3 1
      171 SETTABLE                         R3 R2 R1
      172 DUPTABLE                         R3 K9 [{"success"}]
      173 LOADB                            R4 1
      174 SETTABLEKS                       R4 R3 K8 ["success"]
      176 RETURN                           R3 1

PROTO_3:
        0 GETTABLEKS                       R3 R1 K0 ["ClassName"]
        2 GETTABLEKS                       R4 R0 K0 ["ClassName"]
        4 JUMPIFNOTEQ                      R3 R4 ; [+42]
        6 GETTABLEKS                       R3 R0 K1 ["Name"]
        8 JUMPIFEQKNIL                     R3 ; [+76]
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
       46 JUMPIF                           R3 ; [+38]
       47 DUPTABLE                         R3 K10 [{"success", "message"}]
       48 LOADB                            R4 0
       49 SETTABLEKS                       R4 R3 K8 ["success"]
       51 LOADK                            R5 K11 ["Expected top-level instance to be a "]
       52 GETTABLEKS                       R6 R0 K0 ["ClassName"]
       54 LOADK                            R7 K12 [" named "]
       55 GETTABLEKS                       R9 R0 K1 ["Name"]
       57 FASTCALL1                        TYPE R9 ; [+3]
       58 MOVE                             R11 R9
       59 GETIMPORT                        R10 K3 [type]
       61 CALL                             R10 1 1
       62 JUMPIFNOTEQKS                    R10 K4 ["table"] ; [+8]
       64 GETIMPORT                        R10 K14 [table.concat]
       66 MOVE                             R11 R9
       67 LOADK                            R12 K15 [" or "]
       68 CALL                             R10 2 1
       69 MOVE                             R8 R10
       70 JUMP                             ; [+10]
       71 FASTCALL1                        TYPE R9 ; [+3]
       72 MOVE                             R11 R9
       73 GETIMPORT                        R10 K3 [type]
       75 CALL                             R10 1 1
       76 JUMPIFNOTEQKS                    R10 K7 ["string"] ; [+3]
       78 MOVE                             R8 R9
       79 JUMP                             ; [+1]
       80 LOADK                            R8 K16 ["*"]
       81 CONCAT                           R4 R5 R8
       82 SETTABLEKS                       R4 R3 K9 ["message"]
       84 RETURN                           R3 1
       85 NEWTABLE                         R3 0 0
       87 GETUPVAL                         R4 0
       88 MOVE                             R5 R0
       89 MOVE                             R6 R1
       90 MOVE                             R7 R3
       91 CALL                             R4 3 1
       92 GETTABLEKS                       R5 R4 K8 ["success"]
       94 JUMPIF                           R5 ; [+15]
       95 GETUPVAL                         R5 1
       96 CALL                             R5 0 1
       97 JUMPIFNOT                        R5 ; [+11]
       98 GETUPVAL                         R5 2
       99 CALL                             R5 0 1
      100 JUMPIFNOT                        R5 ; [+8]
      101 DUPTABLE                         R5 K10 [{"success", "message"}]
      102 LOADB                            R6 0
      103 SETTABLEKS                       R6 R5 K8 ["success"]
      105 LOADK                            R6 K17 [""]
      106 SETTABLEKS                       R6 R5 K9 ["message"]
      108 RETURN                           R5 1
      109 RETURN                           R4 1
      110 NEWTABLE                         R5 0 0
      112 GETIMPORT                        R6 K6 [pairs]
      114 NAMECALL                         R7 R1 K18 ["GetDescendants"]
      116 CALL                             R7 1 -1
      117 CALL                             R6 -1 3
      118 FORGPREP_NEXT                    R6
      119 GETTABLE                         R11 R3 R10
      120 JUMPIFNOTEQKNIL                  R11 ; [+7]
      122 LENGTH                           R12 R5
      123 ADDK                             R11 R12 K19 [1]
      124 NAMECALL                         R12 R10 K20 ["GetFullName"]
      126 CALL                             R12 1 1
      127 SETTABLE                         R12 R5 R11
      128 FORGLOOP                         R6 2 ; [-10]
      130 LENGTH                           R6 R5
      131 LOADN                            R7 0
      132 JUMPIFNOTLT                      R7 R6 ; [+29]
      134 GETUPVAL                         R6 1
      135 CALL                             R6 0 1
      136 JUMPIFNOT                        R6 ; [+11]
      137 GETUPVAL                         R6 2
      138 CALL                             R6 0 1
      139 JUMPIFNOT                        R6 ; [+8]
      140 DUPTABLE                         R6 K10 [{"success", "message"}]
      141 LOADB                            R7 0
      142 SETTABLEKS                       R7 R6 K8 ["success"]
      144 LOADK                            R7 K17 [""]
      145 SETTABLEKS                       R7 R6 K9 ["message"]
      147 RETURN                           R6 1
      148 DUPTABLE                         R6 K10 [{"success", "message"}]
      149 LOADB                            R7 0
      150 SETTABLEKS                       R7 R6 K8 ["success"]
      152 LOADK                            R8 K21 ["Unexpected Descendants:\n"]
      153 GETIMPORT                        R9 K14 [table.concat]
      155 MOVE                             R10 R5
      156 LOADK                            R11 K22 ["\n"]
      157 CALL                             R9 2 1
      158 CONCAT                           R7 R8 R9
      159 SETTABLEKS                       R7 R6 K9 ["message"]
      161 RETURN                           R6 1
      162 DUPTABLE                         R6 K23 [{"success"}]
      163 LOADB                            R7 1
      164 SETTABLEKS                       R7 R6 K8 ["success"]
      166 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["flags"]
       11 GETTABLEKS                       R2 R3 K6 ["getFFlagUGCValidationEnableFolderStructure"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R4 R0 K5 ["flags"]
       18 GETTABLEKS                       R3 R4 K7 ["getFFlagUGCValidationCombineEntrypointResults"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R5 R0 K5 ["flags"]
       25 GETTABLEKS                       R4 R5 K8 ["getFFlagUGCValidationExtendSchemaToIgnoreDescendants"]
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
