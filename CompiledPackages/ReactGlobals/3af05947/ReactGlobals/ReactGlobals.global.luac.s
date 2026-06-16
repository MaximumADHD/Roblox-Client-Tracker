PROTO_0:
        0 GETIMPORT                        R3 K1 [_G]
        2 GETTABLE                         R2 R3 R0
        3 JUMPIFEQKNIL                     R2 ; [+2]
        5 RETURN                           R2 1
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["SafeFlags"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["createGetFFlag"]
       14 LOADK                            R3 K7 ["ReactIsolatedGlobalsEnabled"]
       15 CALL                             R2 1 1
       16 CALL                             R2 0 1
       17 JUMPIF                           R2 ; [+3]
       18 GETIMPORT                        R3 K9 [_G]
       20 RETURN                           R3 1
       21 DUPCLOSURE                       R3 K10 [PROTO_0]
       22 DUPTABLE                         R4 K28 [{"__DEV__", "__PROFILE__", "__EXPERIMENTAL__", "__DEBUG__", "__YOLO__", "__DISABLE_ALL_WARNINGS_EXCEPT_PROP_VALIDATION__", "__REACT_DEVTOOLS_GLOBAL_HOOK__", "__REACT_DEVTOOLS_ATTACH__", "__REACT_DEVTOOLS_APPEND_COMPONENT_STACK__", "__REACT_DEVTOOLS_BREAK_ON_CONSOLE_ERRORS__", "__REACT_DEVTOOLS_COMPONENT_FILTERS__", "__LOCALSTORAGE__", "__SESSIONSTORAGE__", "__COMPAT_WARNINGS__", "__TESTEZ_RUNNING_TEST__", "__ROACT_17_MOCK_SCHEDULER__", "__ROACT_17_INLINE_ACT__"}]
       23 GETIMPORT                        R7 K9 [_G]
       25 GETTABLEKS                       R6 R7 K11 ["__DEV__"]
       27 JUMPIFEQKNIL                     R6 ; [+3]
       29 MOVE                             R5 R6
       30 JUMP                             ; [+1]
       31 LOADB                            R5 0
       32 SETTABLEKS                       R5 R4 K11 ["__DEV__"]
       34 GETIMPORT                        R7 K9 [_G]
       36 GETTABLEKS                       R6 R7 K12 ["__PROFILE__"]
       38 JUMPIFEQKNIL                     R6 ; [+3]
       40 MOVE                             R5 R6
       41 JUMP                             ; [+1]
       42 LOADB                            R5 0
       43 SETTABLEKS                       R5 R4 K12 ["__PROFILE__"]
       45 GETIMPORT                        R7 K9 [_G]
       47 GETTABLEKS                       R6 R7 K13 ["__EXPERIMENTAL__"]
       49 JUMPIFEQKNIL                     R6 ; [+3]
       51 MOVE                             R5 R6
       52 JUMP                             ; [+1]
       53 LOADB                            R5 0
       54 SETTABLEKS                       R5 R4 K13 ["__EXPERIMENTAL__"]
       56 GETIMPORT                        R7 K9 [_G]
       58 GETTABLEKS                       R6 R7 K14 ["__DEBUG__"]
       60 JUMPIFEQKNIL                     R6 ; [+3]
       62 MOVE                             R5 R6
       63 JUMP                             ; [+1]
       64 LOADB                            R5 0
       65 SETTABLEKS                       R5 R4 K14 ["__DEBUG__"]
       67 GETIMPORT                        R7 K9 [_G]
       69 GETTABLEKS                       R6 R7 K15 ["__YOLO__"]
       71 JUMPIFEQKNIL                     R6 ; [+3]
       73 MOVE                             R5 R6
       74 JUMP                             ; [+1]
       75 LOADB                            R5 0
       76 SETTABLEKS                       R5 R4 K15 ["__YOLO__"]
       78 GETIMPORT                        R7 K9 [_G]
       80 GETTABLEKS                       R6 R7 K16 ["__DISABLE_ALL_WARNINGS_EXCEPT_PROP_VALIDATION__"]
       82 JUMPIFEQKNIL                     R6 ; [+3]
       84 MOVE                             R5 R6
       85 JUMP                             ; [+1]
       86 LOADB                            R5 0
       87 SETTABLEKS                       R5 R4 K16 ["__DISABLE_ALL_WARNINGS_EXCEPT_PROP_VALIDATION__"]
       89 GETIMPORT                        R7 K9 [_G]
       91 GETTABLEKS                       R6 R7 K17 ["__REACT_DEVTOOLS_GLOBAL_HOOK__"]
       93 JUMPIFEQKNIL                     R6 ; [+3]
       95 MOVE                             R5 R6
       96 JUMP                             ; [+1]
       97 LOADNIL                          R5
       98 SETTABLEKS                       R5 R4 K17 ["__REACT_DEVTOOLS_GLOBAL_HOOK__"]
      100 GETIMPORT                        R7 K9 [_G]
      102 GETTABLEKS                       R6 R7 K18 ["__REACT_DEVTOOLS_ATTACH__"]
      104 JUMPIFEQKNIL                     R6 ; [+3]
      106 MOVE                             R5 R6
      107 JUMP                             ; [+1]
      108 LOADNIL                          R5
      109 SETTABLEKS                       R5 R4 K18 ["__REACT_DEVTOOLS_ATTACH__"]
      111 GETIMPORT                        R7 K9 [_G]
      113 GETTABLEKS                       R6 R7 K19 ["__REACT_DEVTOOLS_APPEND_COMPONENT_STACK__"]
      115 JUMPIFEQKNIL                     R6 ; [+3]
      117 MOVE                             R5 R6
      118 JUMP                             ; [+1]
      119 LOADB                            R5 0
      120 SETTABLEKS                       R5 R4 K19 ["__REACT_DEVTOOLS_APPEND_COMPONENT_STACK__"]
      122 GETIMPORT                        R7 K9 [_G]
      124 GETTABLEKS                       R6 R7 K20 ["__REACT_DEVTOOLS_BREAK_ON_CONSOLE_ERRORS__"]
      126 JUMPIFEQKNIL                     R6 ; [+3]
      128 MOVE                             R5 R6
      129 JUMP                             ; [+1]
      130 LOADB                            R5 0
      131 SETTABLEKS                       R5 R4 K20 ["__REACT_DEVTOOLS_BREAK_ON_CONSOLE_ERRORS__"]
      133 GETIMPORT                        R7 K9 [_G]
      135 GETTABLEKS                       R6 R7 K21 ["__REACT_DEVTOOLS_COMPONENT_FILTERS__"]
      137 JUMPIFEQKNIL                     R6 ; [+3]
      139 MOVE                             R5 R6
      140 JUMP                             ; [+1]
      141 LOADNIL                          R5
      142 SETTABLEKS                       R5 R4 K21 ["__REACT_DEVTOOLS_COMPONENT_FILTERS__"]
      144 GETIMPORT                        R7 K9 [_G]
      146 GETTABLEKS                       R6 R7 K22 ["__LOCALSTORAGE__"]
      148 JUMPIFEQKNIL                     R6 ; [+3]
      150 MOVE                             R5 R6
      151 JUMP                             ; [+1]
      152 LOADNIL                          R5
      153 SETTABLEKS                       R5 R4 K22 ["__LOCALSTORAGE__"]
      155 GETIMPORT                        R7 K9 [_G]
      157 GETTABLEKS                       R6 R7 K23 ["__SESSIONSTORAGE__"]
      159 JUMPIFEQKNIL                     R6 ; [+3]
      161 MOVE                             R5 R6
      162 JUMP                             ; [+1]
      163 LOADNIL                          R5
      164 SETTABLEKS                       R5 R4 K23 ["__SESSIONSTORAGE__"]
      166 GETIMPORT                        R7 K9 [_G]
      168 GETTABLEKS                       R6 R7 K24 ["__COMPAT_WARNINGS__"]
      170 JUMPIFEQKNIL                     R6 ; [+3]
      172 MOVE                             R5 R6
      173 JUMP                             ; [+1]
      174 LOADB                            R5 0
      175 SETTABLEKS                       R5 R4 K24 ["__COMPAT_WARNINGS__"]
      177 GETIMPORT                        R7 K9 [_G]
      179 GETTABLEKS                       R6 R7 K25 ["__TESTEZ_RUNNING_TEST__"]
      181 JUMPIFEQKNIL                     R6 ; [+3]
      183 MOVE                             R5 R6
      184 JUMP                             ; [+1]
      185 LOADB                            R5 0
      186 SETTABLEKS                       R5 R4 K25 ["__TESTEZ_RUNNING_TEST__"]
      188 GETIMPORT                        R7 K9 [_G]
      190 GETTABLEKS                       R6 R7 K26 ["__ROACT_17_MOCK_SCHEDULER__"]
      192 JUMPIFEQKNIL                     R6 ; [+3]
      194 MOVE                             R5 R6
      195 JUMP                             ; [+1]
      196 LOADB                            R5 0
      197 SETTABLEKS                       R5 R4 K26 ["__ROACT_17_MOCK_SCHEDULER__"]
      199 GETIMPORT                        R7 K9 [_G]
      201 GETTABLEKS                       R6 R7 K27 ["__ROACT_17_INLINE_ACT__"]
      203 JUMPIFEQKNIL                     R6 ; [+3]
      205 MOVE                             R5 R6
      206 JUMP                             ; [+1]
      207 LOADB                            R5 0
      208 SETTABLEKS                       R5 R4 K27 ["__ROACT_17_INLINE_ACT__"]
      210 RETURN                           R4 1
