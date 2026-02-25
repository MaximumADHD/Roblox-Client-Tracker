PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 0
        6 LOADB                            R1 0
        7 SETTABLEKS                       R1 R0 K0 ["current"]
        9 GETUPVAL                         R0 1
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R1 R2 K0 ["current"]
       13 JUMPIFEQ                         R0 R1 ; [+2]
       15 RETURN                           R0 0
       16 GETUPVAL                         R0 3
       17 GETUPVAL                         R2 4
       18 GETTABLEKS                       R1 R2 K0 ["current"]
       20 JUMPIFNOTEQ                      R0 R1 ; [+2]
       22 RETURN                           R0 0
       23 GETUPVAL                         R1 5
       24 GETTABLEKS                       R0 R1 K1 ["finishEditing"]
       26 GETUPVAL                         R1 3
       27 CALL                             R0 1 1
       28 JUMPIF                           R0 ; [+5]
       29 GETUPVAL                         R1 6
       30 GETUPVAL                         R3 4
       31 GETTABLEKS                       R2 R3 K0 ["current"]
       33 CALL                             R1 1 0
       34 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R2 2
        7 SETTABLEKS                       R2 R1 K0 ["current"]
        9 GETUPVAL                         R1 3
       10 GETUPVAL                         R2 4
       11 SETTABLEKS                       R2 R1 K0 ["current"]
       13 GETTABLEKS                       R1 R0 K1 ["getCursorPosition"]
       15 CALL                             R1 0 1
       16 GETUPVAL                         R3 2
       17 LENGTH                           R2 R3
       18 JUMPIFNOTLT                      R2 R1 ; [+11]
       20 GETTABLEKS                       R1 R0 K2 ["setSelectionStart"]
       22 LOADN                            R2 0
       23 CALL                             R1 1 0
       24 GETTABLEKS                       R1 R0 K3 ["setCursorPosition"]
       26 GETUPVAL                         R4 2
       27 LENGTH                           R3 R4
       28 ADDK                             R2 R3 K4 [1]
       29 CALL                             R1 1 0
       30 GETUPVAL                         R1 5
       31 LOADB                            R2 1
       32 SETTABLEKS                       R2 R1 K0 ["current"]
       34 GETUPVAL                         R2 6
       35 GETTABLEKS                       R1 R2 K5 ["beginEditingAsync"]
       37 CALL                             R1 0 0
       38 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useRef"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["useRef"]
        8 LOADNIL                          R3
        9 CALL                             R2 1 1
       10 GETTABLEKS                       R7 R0 K1 ["info"]
       12 GETTABLEKS                       R6 R7 K2 ["parts"]
       14 GETTABLEKS                       R5 R6 K3 ["value"]
       16 GETTABLEKS                       R4 R5 K4 ["multiple"]
       18 JUMPIFNOT                        R4 ; [+2]
       19 LOADK                            R3 K5 ["-"]
       20 JUMP                             ; [+8]
       21 GETTABLEKS                       R6 R0 K1 ["info"]
       23 GETTABLEKS                       R5 R6 K2 ["parts"]
       25 GETTABLEKS                       R4 R5 K3 ["value"]
       27 GETTABLEKS                       R3 R4 K3 ["value"]
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R4 R5 K6 ["useState"]
       32 MOVE                             R5 R3
       33 CALL                             R4 1 2
       34 GETUPVAL                         R7 0
       35 GETTABLEKS                       R6 R7 K0 ["useRef"]
       37 MOVE                             R7 R3
       38 CALL                             R6 1 1
       39 GETUPVAL                         R8 0
       40 GETTABLEKS                       R7 R8 K0 ["useRef"]
       42 MOVE                             R8 R3
       43 CALL                             R7 1 1
       44 GETUPVAL                         R9 0
       45 GETTABLEKS                       R8 R9 K0 ["useRef"]
       47 GETTABLEKS                       R9 R0 K1 ["info"]
       49 CALL                             R8 1 1
       50 GETTABLEKS                       R9 R8 K7 ["current"]
       52 GETTABLEKS                       R10 R0 K1 ["info"]
       54 JUMPIFEQ                         R9 R10 ; [+13]
       56 GETTABLEKS                       R9 R0 K1 ["info"]
       58 SETTABLEKS                       R9 R8 K7 ["current"]
       60 GETTABLEKS                       R9 R1 K7 ["current"]
       62 JUMPIF                           R9 ; [+5]
       63 JUMPIFEQ                         R3 R4 ; [+4]
       65 MOVE                             R9 R5
       66 MOVE                             R10 R3
       67 CALL                             R9 1 0
       68 GETUPVAL                         R10 0
       69 GETTABLEKS                       R9 R10 K8 ["useCallback"]
       71 NEWCLOSURE                       R10 P0
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R7
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R0
       78 CAPTURE                          VAL R5
       79 NEWTABLE                         R11 0 3
       81 MOVE                             R12 R4
       82 MOVE                             R13 R3
       83 GETTABLEKS                       R14 R0 K9 ["finishEditing"]
       85 SETLIST                          R11 R12 3 [1]
       87 CALL                             R9 2 1
       88 GETUPVAL                         R11 0
       89 GETTABLEKS                       R10 R11 K8 ["useCallback"]
       91 NEWCLOSURE                       R11 P1
       92 CAPTURE                          VAL R2
       93 CAPTURE                          VAL R6
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R7
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R0
       99 NEWTABLE                         R12 0 3
      101 MOVE                             R13 R4
      102 MOVE                             R14 R3
      103 GETTABLEKS                       R15 R0 K10 ["beginEditingAsync"]
      105 SETLIST                          R12 R13 3 [1]
      107 CALL                             R10 2 1
      108 GETUPVAL                         R12 0
      109 GETTABLEKS                       R11 R12 K8 ["useCallback"]
      111 NEWCLOSURE                       R12 P2
      112 CAPTURE                          VAL R5
      113 NEWTABLE                         R13 0 0
      115 CALL                             R11 2 1
      116 GETUPVAL                         R13 0
      117 GETTABLEKS                       R12 R13 K11 ["createElement"]
      119 GETUPVAL                         R14 1
      120 GETTABLEKS                       R13 R14 K12 ["TextInput"]
      122 DUPTABLE                         R14 K22 [{"textBoxRef", "text", "label", "isDisabled", "size", "width", "onChanged", "onFocusLost", "onFocusGained"}]
      123 SETTABLEKS                       R2 R14 K13 ["textBoxRef"]
      125 SETTABLEKS                       R4 R14 K14 ["text"]
      127 LOADK                            R15 K23 [""]
      128 SETTABLEKS                       R15 R14 K15 ["label"]
      130 GETTABLEKS                       R16 R0 K1 ["info"]
      132 GETTABLEKS                       R15 R16 K24 ["readonly"]
      134 SETTABLEKS                       R15 R14 K16 ["isDisabled"]
      136 GETUPVAL                         R18 1
      137 GETTABLEKS                       R17 R18 K25 ["Enums"]
      139 GETTABLEKS                       R16 R17 K26 ["InputSize"]
      141 GETTABLEKS                       R15 R16 K27 ["XSmall"]
      143 SETTABLEKS                       R15 R14 K17 ["size"]
      145 GETIMPORT                        R15 K30 [UDim.new]
      147 LOADN                            R16 1
      148 LOADN                            R17 0
      149 CALL                             R15 2 1
      150 SETTABLEKS                       R15 R14 K18 ["width"]
      152 SETTABLEKS                       R11 R14 K19 ["onChanged"]
      154 SETTABLEKS                       R9 R14 K20 ["onFocusLost"]
      156 SETTABLEKS                       R10 R14 K21 ["onFocusGained"]
      158 CALL                             R12 2 -1
      159 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["PropertyTypes"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R6 R0 K4 ["Parent"]
       23 GETTABLEKS                       R5 R6 K9 ["React"]
       25 CALL                             R4 1 1
       26 DUPCLOSURE                       R5 K10 [PROTO_3]
       27 CAPTURE                          VAL R4
       28 CAPTURE                          VAL R2
       29 RETURN                           R5 1
