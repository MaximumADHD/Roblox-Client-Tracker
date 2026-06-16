PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R0 K2 [{"inputEnabled", "reasonDisabled"}]
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["inputEnabled"]
        4 LOADNIL                          R1
        5 SETTABLEKS                       R1 R0 K1 ["reasonDisabled"]
        7 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R0 R1 R2
        5 JUMPIF                           R0 ; [+7]
        6 DUPTABLE                         R0 K3 [{"inputEnabled", "reasonDisabled"}]
        7 LOADB                            R1 1
        8 SETTABLEKS                       R1 R0 K1 ["inputEnabled"]
       10 LOADNIL                          R1
       11 SETTABLEKS                       R1 R0 K2 ["reasonDisabled"]
       13 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R0 R1 R2
        5 JUMPIFNOT                        R0 ; [+4]
        6 GETUPVAL                         R1 2
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 2
       11 DUPTABLE                         R2 K3 [{"inputEnabled", "reasonDisabled"}]
       12 LOADB                            R3 1
       13 SETTABLEKS                       R3 R2 K1 ["inputEnabled"]
       15 LOADNIL                          R3
       16 SETTABLEKS                       R3 R2 K2 ["reasonDisabled"]
       18 CALL                             R1 1 0
       19 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R1 K1 [{"reasonDisabled"}]
        1 SETTABLEKS                       R0 R1 K0 ["reasonDisabled"]
        3 DUPTABLE                         R2 K3 [{"inputEnabled", "reasonDisabled"}]
        4 LOADB                            R3 0
        5 SETTABLEKS                       R3 R2 K2 ["inputEnabled"]
        7 SETTABLEKS                       R1 R2 K0 ["reasonDisabled"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K4 ["current"]
       12 GETUPVAL                         R4 1
       13 SETTABLE                         R2 R3 R4
       14 GETUPVAL                         R3 2
       15 GETIMPORT                        R4 K7 [table.clone]
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K4 ["current"]
       20 CALL                             R4 1 -1
       21 CALL                             R3 -1 0
       22 GETUPVAL                         R3 1
       23 GETUPVAL                         R4 3
       24 GETTABLEKS                       R4 R4 K4 ["current"]
       26 JUMPIFNOTEQ                      R3 R4 ; [+4]
       28 GETUPVAL                         R3 4
       29 MOVE                             R4 R2
       30 CALL                             R3 1 0
       31 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 LOADNIL                          R2
        5 SETTABLE                         R2 R0 R1
        6 GETUPVAL                         R0 2
        7 GETIMPORT                        R1 K3 [table.clone]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K0 ["current"]
       12 CALL                             R1 1 -1
       13 CALL                             R0 -1 0
       14 GETUPVAL                         R0 1
       15 GETUPVAL                         R1 3
       16 GETTABLEKS                       R1 R1 K0 ["current"]
       18 JUMPIFNOTEQ                      R0 R1 ; [+10]
       20 GETUPVAL                         R0 4
       21 DUPTABLE                         R1 K6 [{"inputEnabled", "reasonDisabled"}]
       22 LOADB                            R2 1
       23 SETTABLEKS                       R2 R1 K4 ["inputEnabled"]
       25 LOADNIL                          R2
       26 SETTABLEKS                       R2 R1 K5 ["reasonDisabled"]
       28 CALL                             R0 1 0
       29 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R1 K1 [{"reasonDisabled"}]
        1 SETTABLEKS                       R0 R1 K0 ["reasonDisabled"]
        3 GETUPVAL                         R2 0
        4 DUPTABLE                         R3 K3 [{"inputEnabled", "reasonDisabled"}]
        5 LOADB                            R4 0
        6 SETTABLEKS                       R4 R3 K2 ["inputEnabled"]
        8 SETTABLEKS                       R1 R3 K0 ["reasonDisabled"]
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K2 [{"inputEnabled", "reasonDisabled"}]
        2 LOADB                            R2 1
        3 SETTABLEKS                       R2 R1 K0 ["inputEnabled"]
        5 LOADNIL                          R2
        6 SETTABLEKS                       R2 R1 K1 ["reasonDisabled"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["LLMProviderTypes"]
        4 GETTABLEKS                       R1 R1 K1 ["Studio"]
        6 JUMPIFEQ                         R0 R1 ; [+31]
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R0 R0 K2 ["reasonDisabled"]
       11 JUMPIFNOT                        R0 ; [+26]
       12 LOADB                            R0 1
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R1 R1 K2 ["reasonDisabled"]
       16 GETTABLEKS                       R1 R1 K2 ["reasonDisabled"]
       18 GETUPVAL                         R2 3
       19 GETTABLEKS                       R2 R2 K3 ["QuotaExceeded"]
       21 JUMPIFEQ                         R1 R2 ; [+13]
       23 GETUPVAL                         R1 2
       24 GETTABLEKS                       R1 R1 K2 ["reasonDisabled"]
       26 GETTABLEKS                       R1 R1 K2 ["reasonDisabled"]
       28 GETUPVAL                         R2 3
       29 GETTABLEKS                       R2 R2 K4 ["TooManyRequest"]
       31 JUMPIFEQ                         R1 R2 ; [+2]
       33 LOADB                            R0 0 +1
       34 LOADB                            R0 1
       35 JUMPIFNOT                        R0 ; [+2]
       36 GETUPVAL                         R1 4
       37 CALL                             R1 0 0
       38 RETURN                           R0 0

PROTO_11:
        0 LOADNIL                          R0
        1 LOADNIL                          R1
        2 GETUPVAL                         R2 0
        3 JUMPIFNOT                        R2 ; [+19]
        4 LOADB                            R0 0
        5 DUPTABLE                         R2 K3 [{"reasonDisabled", "externalReasonText", "iconType"}]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K4 ["External"]
        9 SETTABLEKS                       R3 R2 K0 ["reasonDisabled"]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K5 ["overrideText"]
       14 SETTABLEKS                       R3 R2 K1 ["externalReasonText"]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K2 ["iconType"]
       19 SETTABLEKS                       R3 R2 K2 ["iconType"]
       21 MOVE                             R1 R2
       22 JUMP                             ; [+6]
       23 GETUPVAL                         R2 2
       24 GETTABLEKS                       R0 R2 K6 ["inputEnabled"]
       26 GETUPVAL                         R2 2
       27 GETTABLEKS                       R1 R2 K0 ["reasonDisabled"]
       29 DUPTABLE                         R2 K10 [{"inputEnabled", "reasonDisabled", "markInputDisabled", "clearInputDisabled", "allThreadInputStates"}]
       30 SETTABLEKS                       R0 R2 K6 ["inputEnabled"]
       32 SETTABLEKS                       R1 R2 K0 ["reasonDisabled"]
       34 GETUPVAL                         R3 3
       35 SETTABLEKS                       R3 R2 K7 ["markInputDisabled"]
       37 GETUPVAL                         R3 4
       38 SETTABLEKS                       R3 R2 K8 ["clearInputDisabled"]
       40 GETUPVAL                         R3 5
       41 SETTABLEKS                       R3 R2 K9 ["allThreadInputStates"]
       43 RETURN                           R2 1

PROTO_12:
        0 LOADNIL                          R1
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 GETUPVAL                         R5 0
        5 CALL                             R5 0 1
        6 JUMPIFNOT                        R5 ; [+98]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R5 R5 K0 ["useContext"]
       10 GETUPVAL                         R6 2
       11 GETTABLEKS                       R6 R6 K1 ["Context"]
       13 CALL                             R5 1 1
       14 GETTABLEKS                       R6 R5 K2 ["threadId"]
       16 GETUPVAL                         R7 1
       17 GETTABLEKS                       R7 R7 K3 ["useRef"]
       19 NEWTABLE                         R8 0 0
       21 CALL                             R7 1 1
       22 GETUPVAL                         R8 1
       23 GETTABLEKS                       R8 R8 K3 ["useRef"]
       25 MOVE                             R9 R6
       26 CALL                             R8 1 1
       27 LOADNIL                          R9
       28 GETUPVAL                         R10 1
       29 GETTABLEKS                       R10 R10 K4 ["useState"]
       31 NEWCLOSURE                       R11 P0
       32 CAPTURE                          VAL R7
       33 CAPTURE                          VAL R6
       34 CALL                             R10 1 2
       35 MOVE                             R1 R10
       36 MOVE                             R9 R11
       37 LOADNIL                          R10
       38 GETUPVAL                         R11 1
       39 GETTABLEKS                       R11 R11 K4 ["useState"]
       41 NEWTABLE                         R12 0 0
       43 CALL                             R11 1 2
       44 MOVE                             R2 R11
       45 MOVE                             R10 R12
       46 GETUPVAL                         R11 1
       47 GETTABLEKS                       R11 R11 K5 ["useEffect"]
       49 NEWCLOSURE                       R12 P1
       50 CAPTURE                          VAL R8
       51 CAPTURE                          VAL R6
       52 NEWTABLE                         R13 0 1
       54 MOVE                             R14 R6
       55 SETLIST                          R13 R14 1 [1]
       57 CALL                             R11 2 0
       58 GETUPVAL                         R11 1
       59 GETTABLEKS                       R11 R11 K5 ["useEffect"]
       61 NEWCLOSURE                       R12 P2
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R6
       64 CAPTURE                          REF R9
       65 NEWTABLE                         R13 0 1
       67 MOVE                             R14 R6
       68 SETLIST                          R13 R14 1 [1]
       70 CALL                             R11 2 0
       71 GETUPVAL                         R11 1
       72 GETTABLEKS                       R11 R11 K6 ["useCallback"]
       74 NEWCLOSURE                       R12 P3
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R6
       77 CAPTURE                          REF R10
       78 CAPTURE                          VAL R8
       79 CAPTURE                          REF R9
       80 NEWTABLE                         R13 0 1
       82 MOVE                             R14 R6
       83 SETLIST                          R13 R14 1 [1]
       85 CALL                             R11 2 1
       86 MOVE                             R3 R11
       87 GETUPVAL                         R11 1
       88 GETTABLEKS                       R11 R11 K6 ["useCallback"]
       90 NEWCLOSURE                       R12 P4
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R6
       93 CAPTURE                          REF R10
       94 CAPTURE                          VAL R8
       95 CAPTURE                          REF R9
       96 NEWTABLE                         R13 0 1
       98 MOVE                             R14 R6
       99 SETLIST                          R13 R14 1 [1]
      101 CALL                             R11 2 1
      102 MOVE                             R4 R11
      103 CLOSEUPVALS                      R9
      104 JUMP                             ; [+39]
      105 LOADNIL                          R5
      106 GETUPVAL                         R6 1
      107 GETTABLEKS                       R6 R6 K4 ["useState"]
      109 DUPTABLE                         R7 K9 [{"inputEnabled", "reasonDisabled"}]
      110 LOADB                            R8 1
      111 SETTABLEKS                       R8 R7 K7 ["inputEnabled"]
      113 LOADNIL                          R8
      114 SETTABLEKS                       R8 R7 K8 ["reasonDisabled"]
      116 CALL                             R6 1 2
      117 MOVE                             R1 R6
      118 MOVE                             R5 R7
      119 GETUPVAL                         R6 1
      120 GETTABLEKS                       R6 R6 K6 ["useCallback"]
      122 NEWCLOSURE                       R7 P5
      123 CAPTURE                          REF R5
      124 NEWTABLE                         R8 0 1
      126 MOVE                             R9 R5
      127 SETLIST                          R8 R9 1 [1]
      129 CALL                             R6 2 1
      130 MOVE                             R3 R6
      131 GETUPVAL                         R6 1
      132 GETTABLEKS                       R6 R6 K6 ["useCallback"]
      134 NEWCLOSURE                       R7 P6
      135 CAPTURE                          REF R5
      136 NEWTABLE                         R8 0 1
      138 MOVE                             R9 R5
      139 SETLIST                          R8 R9 1 [1]
      141 CALL                             R6 2 1
      142 MOVE                             R4 R6
      143 CLOSEUPVALS                      R5
      144 GETUPVAL                         R5 3
      145 CALL                             R5 0 1
      146 GETUPVAL                         R6 1
      147 GETTABLEKS                       R6 R6 K5 ["useEffect"]
      149 NEWCLOSURE                       R7 P7
      150 CAPTURE                          VAL R5
      151 CAPTURE                          UPVAL U4
      152 CAPTURE                          REF R1
      153 CAPTURE                          UPVAL U5
      154 CAPTURE                          REF R4
      155 NEWTABLE                         R8 0 2
      157 GETUPVAL                         R10 0
      158 CALL                             R10 0 1
      159 JUMPIFNOT                        R10 ; [+2]
      160 MOVE                             R9 R1
      161 JUMP                             ; [+1]
      162 LOADNIL                          R9
      163 MOVE                             R10 R5
      164 SETLIST                          R8 R9 2 [1]
      166 CALL                             R6 2 0
      167 GETTABLEKS                       R6 R0 K10 ["override"]
      169 GETUPVAL                         R7 1
      170 GETTABLEKS                       R7 R7 K11 ["useMemo"]
      172 NEWCLOSURE                       R8 P8
      173 CAPTURE                          VAL R6
      174 CAPTURE                          UPVAL U5
      175 CAPTURE                          REF R1
      176 CAPTURE                          REF R3
      177 CAPTURE                          REF R4
      178 CAPTURE                          REF R2
      179 NEWTABLE                         R9 0 5
      181 MOVE                             R10 R1
      182 MOVE                             R11 R2
      183 MOVE                             R12 R3
      184 MOVE                             R13 R4
      185 MOVE                             R14 R6
      186 SETLIST                          R9 R10 5 [1]
      188 CALL                             R7 2 1
      189 GETUPVAL                         R8 6
      190 GETUPVAL                         R9 7
      191 GETTABLEKS                       R9 R9 K12 ["Provider"]
      193 DUPTABLE                         R10 K14 [{"value"}]
      194 SETTABLEKS                       R7 R10 K13 ["value"]
      196 GETTABLEKS                       R11 R0 K15 ["children"]
      198 CALL                             R8 3 -1
      199 CLOSEUPVALS                      R1
      200 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["InputStateTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R3 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Components"]
       27 GETTABLEKS                       R4 R4 K7 ["Contexts"]
       29 GETTABLEKS                       R4 R4 K11 ["ThreadIdContext"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K12 ["Types"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K13 ["Hooks"]
       41 GETTABLEKS                       R6 R6 K14 ["useLLMProvider"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K15 ["Flags"]
       48 GETTABLEKS                       R7 R7 K16 ["FFlagAssistantMultipleChatPersistence"]
       50 CALL                             R6 1 1
       51 GETTABLEKS                       R7 R2 K17 ["createElement"]
       53 GETTABLEKS                       R8 R1 K18 ["InputDisabledReasons"]
       55 GETTABLEKS                       R9 R1 K19 ["InputIconTypes"]
       57 DUPTABLE                         R10 K25 [{"inputEnabled", "reasonDisabled", "markInputDisabled", "clearInputDisabled", "allThreadInputStates"}]
       58 LOADB                            R11 1
       59 SETTABLEKS                       R11 R10 K20 ["inputEnabled"]
       61 LOADNIL                          R11
       62 SETTABLEKS                       R11 R10 K21 ["reasonDisabled"]
       64 DUPCLOSURE                       R11 K26 [PROTO_0]
       65 SETTABLEKS                       R11 R10 K22 ["markInputDisabled"]
       67 DUPCLOSURE                       R11 K27 [PROTO_1]
       68 SETTABLEKS                       R11 R10 K23 ["clearInputDisabled"]
       70 NEWTABLE                         R11 0 0
       72 SETTABLEKS                       R11 R10 K24 ["allThreadInputStates"]
       74 DUPCLOSURE                       R11 K28 [PROTO_2]
       75 GETTABLEKS                       R12 R2 K29 ["createContext"]
       77 MOVE                             R13 R10
       78 CALL                             R12 1 1
       79 DUPCLOSURE                       R13 K30 [PROTO_12]
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R5
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R8
       86 CAPTURE                          VAL R7
       87 CAPTURE                          VAL R12
       88 DUPTABLE                         R14 K33 [{"Context", "Provider", "InputDisabledReasons", "InputIconTypes"}]
       89 SETTABLEKS                       R12 R14 K31 ["Context"]
       91 SETTABLEKS                       R13 R14 K32 ["Provider"]
       93 SETTABLEKS                       R8 R14 K18 ["InputDisabledReasons"]
       95 SETTABLEKS                       R9 R14 K19 ["InputIconTypes"]
       97 RETURN                           R14 1
