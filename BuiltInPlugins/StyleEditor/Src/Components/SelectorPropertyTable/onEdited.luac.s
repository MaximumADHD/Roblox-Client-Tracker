PROTO_0:
        0 DUPTABLE                         R1 K1 [{"Schema"}]
        1 GETUPVAL                         R2 0
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K2 ["SelectorSchema"]
        5 DUPTABLE                         R4 K4 [{"Editing"}]
        6 LOADB                            R5 0
        7 SETTABLEKS                       R5 R4 K3 ["Editing"]
        9 CALL                             R2 2 1
       10 SETTABLEKS                       R2 R1 K0 ["Schema"]
       12 GETUPVAL                         R2 2
       13 MOVE                             R4 R0
       14 MOVE                             R5 R1
       15 GETUPVAL                         R7 3
       16 GETTABLEKS                       R6 R7 K5 ["path"]
       18 LOADN                            R7 1
       19 NAMECALL                         R2 R2 K6 ["updateCell"]
       21 CALL                             R2 5 -1
       22 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["tableItems"]
        3 GETTABLEKS                       R4 R0 K1 ["path"]
        5 NAMECALL                         R1 R1 K2 ["getChild"]
        7 CALL                             R1 3 1
        8 JUMPIF                           R1 ; [+1]
        9 RETURN                           R0 0
       10 GETTABLEKS                       R3 R1 K3 ["Name"]
       12 GETTABLEKS                       R2 R3 K4 ["FullSpan"]
       14 JUMPIFNOT                        R2 ; [+46]
       15 GETTABLEKS                       R2 R1 K5 ["Instance"]
       17 JUMPIF                           R2 ; [+6]
       18 GETIMPORT                        R2 K7 [warn]
       20 LOADK                            R3 K8 ["Table row without valid StyleRule reference:"]
       21 MOVE                             R4 R1
       22 CALL                             R2 2 0
       23 RETURN                           R0 0
       24 GETTABLEKS                       R4 R1 K5 ["Instance"]
       26 JUMPIFNOTEQKNIL                  R4 ; [+2]
       28 LOADB                            R3 0 +1
       29 LOADB                            R3 1
       30 FASTCALL2K                       ASSERT R3 K9 ; [+4]
       32 LOADK                            R4 K9 ["expecting valid instance"]
       33 GETIMPORT                        R2 K11 [assert]
       35 CALL                             R2 2 0
       36 GETTABLEKS                       R2 R0 K12 ["newValue"]
       38 GETTABLEKS                       R3 R0 K13 ["dispatch"]
       40 GETUPVAL                         R4 1
       41 GETTABLEKS                       R5 R1 K5 ["Instance"]
       43 MOVE                             R6 R2
       44 CALL                             R4 2 -1
       45 CALL                             R3 -1 0
       46 GETTABLEKS                       R4 R1 K3 ["Name"]
       48 GETTABLEKS                       R3 R4 K14 ["Value"]
       50 JUMPIFNOTEQ                      R2 R3 ; [+9]
       52 GETTABLEKS                       R3 R0 K15 ["setState"]
       54 NEWCLOSURE                       R4 P0
       55 CAPTURE                          UPVAL U2
       56 CAPTURE                          UPVAL U3
       57 CAPTURE                          UPVAL U0
       58 CAPTURE                          VAL R0
       59 CALL                             R3 1 0
       60 RETURN                           R0 0
       61 GETTABLEKS                       R3 R1 K3 ["Name"]
       63 GETTABLEKS                       R2 R3 K14 ["Value"]
       65 GETUPVAL                         R3 0
       66 GETTABLEKS                       R5 R0 K0 ["tableItems"]
       68 MOVE                             R6 R1
       69 NAMECALL                         R3 R3 K16 ["getParent"]
       71 CALL                             R3 3 1
       72 GETTABLEKS                       R4 R3 K5 ["Instance"]
       74 GETTABLEKS                       R6 R1 K17 ["SetParentValue"]
       76 FASTCALL1                        TYPEOF R6 ; [+2]
       77 GETIMPORT                        R5 K19 [typeof]
       79 CALL                             R5 1 1
       80 JUMPIFNOTEQKS                    R5 K20 ["function"] ; [+21]
       82 GETTABLEKS                       R5 R1 K17 ["SetParentValue"]
       84 GETTABLEKS                       R6 R0 K12 ["newValue"]
       86 CALL                             R5 1 1
       87 SETTABLEKS                       R5 R0 K12 ["newValue"]
       89 GETTABLEKS                       R5 R3 K3 ["Name"]
       91 GETTABLEKS                       R2 R5 K14 ["Value"]
       93 GETUPVAL                         R5 0
       94 GETTABLEKS                       R7 R0 K0 ["tableItems"]
       96 MOVE                             R8 R3
       97 NAMECALL                         R5 R5 K16 ["getParent"]
       99 CALL                             R5 3 1
      100 GETTABLEKS                       R4 R5 K5 ["Instance"]
      102 JUMPIF                           R4 ; [+6]
      103 GETIMPORT                        R5 K7 [warn]
      105 LOADK                            R6 K8 ["Table row without valid StyleRule reference:"]
      106 MOVE                             R7 R3
      107 CALL                             R5 2 0
      108 RETURN                           R0 0
      109 GETTABLEKS                       R5 R0 K12 ["newValue"]
      111 JUMPIFNOTEQKNIL                  R5 ; [+2]
      113 RETURN                           R0 0
      114 LOADB                            R5 0
      115 GETUPVAL                         R6 4
      116 JUMPIFNOT                        R6 ; [+77]
      117 GETIMPORT                        R6 K22 [tick]
      119 CALL                             R6 0 1
      120 GETTABLEKS                       R8 R1 K14 ["Value"]
      122 JUMPIFNOT                        R8 ; [+7]
      123 GETTABLEKS                       R9 R1 K14 ["Value"]
      125 GETTABLEKS                       R8 R9 K23 ["Schema"]
      127 GETTABLEKS                       R7 R8 K24 ["Type"]
      129 JUMP                             ; [+1]
      130 LOADNIL                          R7
      131 GETTABLEKS                       R9 R0 K25 ["lastEdit"]
      133 GETTABLEKS                       R8 R9 K26 ["instance"]
      135 JUMPIFNOT                        R8 ; [+40]
      136 GETTABLEKS                       R9 R0 K25 ["lastEdit"]
      138 GETTABLEKS                       R8 R9 K26 ["instance"]
      140 JUMPIFNOTEQ                      R8 R4 ; [+35]
      142 GETTABLEKS                       R9 R0 K25 ["lastEdit"]
      144 GETTABLEKS                       R8 R9 K27 ["propertyName"]
      146 JUMPIFNOTEQ                      R8 R2 ; [+29]
      148 GETTABLEKS                       R10 R0 K25 ["lastEdit"]
      150 GETTABLEKS                       R9 R10 K28 ["propertyValue"]
      152 FASTCALL1                        TYPEOF R9 ; [+2]
      153 GETIMPORT                        R8 K19 [typeof]
      155 CALL                             R8 1 1
      156 GETTABLEKS                       R10 R0 K12 ["newValue"]
      158 FASTCALL1                        TYPEOF R10 ; [+2]
      159 GETIMPORT                        R9 K19 [typeof]
      161 CALL                             R9 1 1
      162 JUMPIFNOTEQ                      R8 R9 ; [+13]
      164 GETTABLEKS                       R10 R0 K25 ["lastEdit"]
      166 GETTABLEKS                       R9 R10 K30 ["timeSec"]
      168 ADDK                             R8 R9 K29 [4]
      169 JUMPIFNOTLE                      R6 R8 ; [+6]
      171 GETUPVAL                         R9 5
      172 GETTABLE                         R8 R9 R7
      173 JUMPIFNOTEQKB                    R8 TRUE ; [+2]
      175 LOADB                            R5 1
      176 GETTABLEKS                       R8 R0 K25 ["lastEdit"]
      178 SETTABLEKS                       R4 R8 K26 ["instance"]
      180 GETTABLEKS                       R8 R0 K25 ["lastEdit"]
      182 SETTABLEKS                       R2 R8 K27 ["propertyName"]
      184 GETTABLEKS                       R8 R0 K25 ["lastEdit"]
      186 GETTABLEKS                       R9 R0 K12 ["newValue"]
      188 SETTABLEKS                       R9 R8 K28 ["propertyValue"]
      190 GETTABLEKS                       R8 R0 K25 ["lastEdit"]
      192 SETTABLEKS                       R6 R8 K30 ["timeSec"]
      194 GETTABLEKS                       R6 R0 K31 ["columnIndex"]
      196 GETUPVAL                         R8 6
      197 GETTABLEKS                       R7 R8 K32 ["NAME_COLUMN_INDEX"]
      199 JUMPIFNOTEQ                      R6 R7 ; [+11]
      201 GETTABLEKS                       R6 R0 K13 ["dispatch"]
      203 GETUPVAL                         R7 7
      204 MOVE                             R8 R4
      205 MOVE                             R9 R2
      206 GETTABLEKS                       R10 R0 K12 ["newValue"]
      208 CALL                             R7 3 -1
      209 CALL                             R6 -1 0
      210 RETURN                           R0 0
      211 GETTABLEKS                       R6 R0 K31 ["columnIndex"]
      213 GETUPVAL                         R8 6
      214 GETTABLEKS                       R7 R8 K33 ["VALUE_COLUMN_INDEX"]
      216 JUMPIFNOTEQ                      R6 R7 ; [+11]
      218 GETTABLEKS                       R6 R0 K13 ["dispatch"]
      220 GETUPVAL                         R7 8
      221 MOVE                             R8 R4
      222 MOVE                             R9 R2
      223 GETTABLEKS                       R10 R0 K12 ["newValue"]
      225 MOVE                             R11 R5
      226 CALL                             R7 4 -1
      227 CALL                             R6 -1 0
      228 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R4 R0 K5 ["Src"]
       15 GETTABLEKS                       R3 R4 K6 ["Util"]
       17 GETTABLEKS                       R2 R3 K7 ["StyleSchema"]
       19 CALL                             R1 1 1
       20 GETTABLEKS                       R3 R0 K5 ["Src"]
       22 GETTABLEKS                       R2 R3 K8 ["Thunks"]
       24 GETIMPORT                        R3 K4 [require]
       26 GETTABLEKS                       R5 R2 K9 ["Change"]
       28 GETTABLEKS                       R4 R5 K10 ["SetStyleRuleSelector"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K4 [require]
       33 GETTABLEKS                       R6 R2 K9 ["Change"]
       35 GETTABLEKS                       R5 R6 K11 ["SetStyleRuleProperty"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K4 [require]
       40 GETTABLEKS                       R7 R2 K9 ["Change"]
       42 GETTABLEKS                       R6 R7 K12 ["RenameStyleRuleProperty"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K4 [require]
       47 GETTABLEKS                       R9 R0 K5 ["Src"]
       49 GETTABLEKS                       R8 R9 K13 ["Flags"]
       51 GETTABLEKS                       R7 R8 K14 ["getFFlagStyleEditorNumberSequenceUpdate"]
       53 CALL                             R6 1 1
       54 CALL                             R6 0 1
       55 GETIMPORT                        R7 K4 [require]
       57 GETTABLEKS                       R9 R0 K15 ["Packages"]
       59 GETTABLEKS                       R8 R9 K16 ["Dash"]
       61 CALL                             R7 1 1
       62 GETTABLEKS                       R8 R7 K17 ["join"]
       64 GETIMPORT                        R9 K4 [require]
       66 GETIMPORT                        R12 K1 [script]
       68 GETTABLEKS                       R11 R12 K2 ["Parent"]
       70 GETTABLEKS                       R10 R11 K18 ["Tree"]
       72 CALL                             R9 1 1
       73 GETTABLEKS                       R10 R9 K19 ["EditTree"]
       75 DUPTABLE                         R11 K24 [{"Slider", "Color", "ColorSequence", "NumberSequence"}]
       76 LOADB                            R12 1
       77 SETTABLEKS                       R12 R11 K20 ["Slider"]
       79 LOADB                            R12 1
       80 SETTABLEKS                       R12 R11 K21 ["Color"]
       82 LOADB                            R12 1
       83 SETTABLEKS                       R12 R11 K22 ["ColorSequence"]
       85 LOADB                            R12 1
       86 SETTABLEKS                       R12 R11 K23 ["NumberSequence"]
       88 DUPCLOSURE                       R12 K25 [PROTO_1]
       89 CAPTURE                          VAL R10
       90 CAPTURE                          VAL R3
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R1
       93 CAPTURE                          VAL R6
       94 CAPTURE                          VAL R11
       95 CAPTURE                          VAL R9
       96 CAPTURE                          VAL R5
       97 CAPTURE                          VAL R4
       98 RETURN                           R12 1
