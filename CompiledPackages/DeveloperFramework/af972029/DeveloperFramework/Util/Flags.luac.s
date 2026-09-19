PROTO_0:
        0 FASTCALL1                        TYPE R1 ; [+3]
        1 MOVE                             R5 R1
        2 GETIMPORT                        R4 K1 [type]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["boolean"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       11 LOADK                            R4 K3 ["You can only define a fast flag with a boolean value"]
       12 GETIMPORT                        R2 K5 [assert]
       14 CALL                             R2 2 0
       15 GETIMPORT                        R2 K7 [pcall]
       17 GETIMPORT                        R3 K9 [game]
       19 GETTABLEKS                       R3 R3 K10 ["GetFastFlag"]
       21 GETIMPORT                        R4 K9 [game]
       23 MOVE                             R5 R0
       24 CALL                             R2 3 2
       25 JUMPIFNOT                        R2 ; [+3]
       26 JUMPIFEQKNIL                     R3 ; [+2]
       28 RETURN                           R3 1
       29 GETIMPORT                        R4 K7 [pcall]
       31 GETIMPORT                        R5 K9 [game]
       33 GETTABLEKS                       R5 R5 K11 ["DefineFastFlag"]
       35 GETIMPORT                        R6 K9 [game]
       37 MOVE                             R7 R0
       38 MOVE                             R8 R1
       39 CALL                             R4 4 2
       40 JUMPIF                           R4 ; [+10]
       41 GETIMPORT                        R6 K13 [warn]
       43 LOADK                            R8 K14 ["An error occurred defining the fast flag: "]
       44 MOVE                             R9 R0
       45 CONCAT                           R7 R8 R9
       46 CALL                             R6 1 0
       47 GETIMPORT                        R6 K13 [warn]
       49 MOVE                             R7 R5
       50 CALL                             R6 1 0
       51 RETURN                           R1 1

PROTO_1:
        0 FASTCALL1                        TYPE R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [type]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["string"] ; [+6]
        7 GETIMPORT                        R2 K4 [error]
        9 LOADK                            R3 K5 ["Expected key to be a string."]
       10 LOADN                            R4 2
       11 CALL                             R2 2 0
       12 GETTABLEKS                       R2 R0 K6 ["shouldAssertOnMissingFlag"]
       14 JUMPIFNOT                        R2 ; [+14]
       15 GETTABLEKS                       R3 R0 K7 ["values"]
       17 GETTABLE                         R2 R3 R1
       18 JUMPIFNOTEQKNIL                  R2 ; [+10]
       20 GETIMPORT                        R2 K4 [error]
       22 GETIMPORT                        R3 K9 [string.format]
       24 LOADK                            R4 K10 ["`%s` was not defined as a feature name."]
       25 MOVE                             R5 R1
       26 CALL                             R3 2 1
       27 LOADN                            R4 2
       28 CALL                             R2 2 0
       29 RETURN                           R0 0

PROTO_2:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 MOVE                             R2 R1
        6 JUMPIF                           R2 ; [+2]
        7 NEWTABLE                         R2 0 0
        9 MOVE                             R1 R2
       10 GETTABLEKS                       R2 R1 K0 ["shouldAssertOnMissingFlag"]
       12 JUMPIFNOTEQKNIL                  R2 ; [+4]
       14 LOADB                            R2 1
       15 SETTABLEKS                       R2 R1 K0 ["shouldAssertOnMissingFlag"]
       17 GETTABLEKS                       R2 R1 K1 ["shouldFetchLiveValues"]
       19 JUMPIFNOTEQKNIL                  R2 ; [+4]
       21 LOADB                            R2 1
       22 SETTABLEKS                       R2 R1 K1 ["shouldFetchLiveValues"]
       24 GETTABLEKS                       R2 R1 K2 ["defaultValueIfMissing"]
       26 JUMPIFNOTEQKNIL                  R2 ; [+4]
       28 LOADB                            R2 0
       29 SETTABLEKS                       R2 R1 K2 ["defaultValueIfMissing"]
       31 GETTABLEKS                       R5 R1 K0 ["shouldAssertOnMissingFlag"]
       33 FASTCALL1                        TYPE R5 ; [+2]
       34 GETIMPORT                        R4 K4 [type]
       36 CALL                             R4 1 1
       37 JUMPIFEQKS                       R4 K5 ["boolean"] ; [+2]
       39 LOADB                            R3 0 +1
       40 LOADB                            R3 1
       41 FASTCALL2K                       ASSERT R3 K6 ; [+4]
       43 LOADK                            R4 K6 ["shouldAssertOnMissingFlag expected to be a boolean"]
       44 GETIMPORT                        R2 K8 [assert]
       46 CALL                             R2 2 0
       47 GETTABLEKS                       R5 R1 K1 ["shouldFetchLiveValues"]
       49 FASTCALL1                        TYPE R5 ; [+2]
       50 GETIMPORT                        R4 K4 [type]
       52 CALL                             R4 1 1
       53 JUMPIFEQKS                       R4 K5 ["boolean"] ; [+2]
       55 LOADB                            R3 0 +1
       56 LOADB                            R3 1
       57 FASTCALL2K                       ASSERT R3 K9 ; [+4]
       59 LOADK                            R4 K9 ["shouldFetchLiveValues expected to be a boolean"]
       60 GETIMPORT                        R2 K8 [assert]
       62 CALL                             R2 2 0
       63 GETTABLEKS                       R5 R1 K2 ["defaultValueIfMissing"]
       65 FASTCALL1                        TYPE R5 ; [+2]
       66 GETIMPORT                        R4 K4 [type]
       68 CALL                             R4 1 1
       69 JUMPIFEQKS                       R4 K5 ["boolean"] ; [+2]
       71 LOADB                            R3 0 +1
       72 LOADB                            R3 1
       73 FASTCALL2K                       ASSERT R3 K10 ; [+4]
       75 LOADK                            R4 K10 ["Default values for flags must be a boolean"]
       76 GETIMPORT                        R2 K8 [assert]
       78 CALL                             R2 2 0
       79 FASTCALL1                        TYPE R0 ; [+3]
       80 MOVE                             R5 R0
       81 GETIMPORT                        R4 K4 [type]
       83 CALL                             R4 1 1
       84 JUMPIFEQKS                       R4 K11 ["table"] ; [+2]
       86 LOADB                            R3 0 +1
       87 LOADB                            R3 1
       88 FASTCALL2K                       ASSERT R3 K12 ; [+4]
       90 LOADK                            R4 K12 ["Flags.new expects a table mapping keys to flag names."]
       91 GETIMPORT                        R2 K8 [assert]
       93 CALL                             R2 2 0
       94 LOADB                            R2 1
       95 GETIMPORT                        R4 K14 [next]
       97 MOVE                             R5 R0
       98 CALL                             R4 1 1
       99 FASTCALL1                        TYPE R4 ; [+2]
      100 GETIMPORT                        R3 K4 [type]
      102 CALL                             R3 1 1
      103 JUMPIFEQKS                       R3 K15 ["nil"] ; [+13]
      105 GETIMPORT                        R4 K14 [next]
      107 MOVE                             R5 R0
      108 CALL                             R4 1 1
      109 FASTCALL1                        TYPE R4 ; [+2]
      110 GETIMPORT                        R3 K4 [type]
      112 CALL                             R3 1 1
      113 JUMPIFEQKS                       R3 K16 ["string"] ; [+2]
      115 LOADB                            R2 0 +1
      116 LOADB                            R2 1
      117 FASTCALL2K                       ASSERT R2 K17 ; [+5]
      119 MOVE                             R4 R2
      120 LOADK                            R5 K17 ["Flags.new expects a map of string keys."]
      121 GETIMPORT                        R3 K8 [assert]
      123 CALL                             R3 2 0
      124 DUPTABLE                         R3 K20 [{"values", "localOverrides", "shouldAssertOnMissingFlag", "shouldFetchLiveValues", "defaultValueIfMissing"}]
      125 NEWTABLE                         R4 0 0
      127 SETTABLEKS                       R4 R3 K18 ["values"]
      129 NEWTABLE                         R4 0 0
      131 SETTABLEKS                       R4 R3 K19 ["localOverrides"]
      133 GETTABLEKS                       R4 R1 K0 ["shouldAssertOnMissingFlag"]
      135 SETTABLEKS                       R4 R3 K0 ["shouldAssertOnMissingFlag"]
      137 GETTABLEKS                       R4 R1 K1 ["shouldFetchLiveValues"]
      139 SETTABLEKS                       R4 R3 K1 ["shouldFetchLiveValues"]
      141 GETTABLEKS                       R4 R1 K2 ["defaultValueIfMissing"]
      143 SETTABLEKS                       R4 R3 K2 ["defaultValueIfMissing"]
      145 GETUPVAL                         R6 0
      146 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
      148 MOVE                             R5 R3
      149 GETIMPORT                        R4 K22 [setmetatable]
      151 CALL                             R4 2 0
      152 GETTABLEKS                       R4 R3 K1 ["shouldFetchLiveValues"]
      154 JUMPIFNOT                        R4 ; [+43]
      155 NEWTABLE                         R4 0 0
      157 GETIMPORT                        R5 K24 [pairs]
      159 MOVE                             R6 R0
      160 CALL                             R5 1 3
      161 FORGPREP_NEXT                    R5
      162 FASTCALL1                        TYPE R9 ; [+3]
      163 MOVE                             R11 R9
      164 GETIMPORT                        R10 K4 [type]
      166 CALL                             R10 1 1
      167 JUMPIFNOTEQKS                    R10 K11 ["table"] ; [+19]
      169 LOADB                            R10 1
      170 GETIMPORT                        R11 K26 [ipairs]
      172 MOVE                             R12 R9
      173 CALL                             R11 1 3
      174 FORGPREP_INEXT                   R11
      175 GETUPVAL                         R16 1
      176 MOVE                             R17 R15
      177 GETTABLEKS                       R18 R3 K2 ["defaultValueIfMissing"]
      179 CALL                             R16 2 1
      180 JUMPIF                           R16 ; [+2]
      181 LOADB                            R10 0
      182 JUMP                             ; [+2]
      183 FORGLOOP                         R11 2 [inext] ; [-9]
      185 SETTABLE                         R10 R4 R8
      186 JUMP                             ; [+6]
      187 GETUPVAL                         R10 1
      188 MOVE                             R11 R9
      189 GETTABLEKS                       R12 R3 K2 ["defaultValueIfMissing"]
      191 CALL                             R10 2 1
      192 SETTABLE                         R10 R4 R8
      193 FORGLOOP                         R5 2 ; [-32]
      195 SETTABLEKS                       R4 R3 K18 ["values"]
      197 RETURN                           R3 1
      198 NEWTABLE                         R4 0 0
      200 GETIMPORT                        R5 K24 [pairs]
      202 MOVE                             R6 R0
      203 CALL                             R5 1 3
      204 FORGPREP_NEXT                    R5
      205 GETTABLEKS                       R10 R3 K2 ["defaultValueIfMissing"]
      207 SETTABLE                         R10 R4 R8
      208 FORGLOOP                         R5 2 ; [-4]
      210 SETTABLEKS                       R4 R3 K18 ["values"]
      212 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 LOADNIL                          R2
        4 DUPTABLE                         R3 K5 [{["shouldAssertOnMissingFlag"] = False, ["shouldFetchLiveValues"] = False, ["defaultValueIfMissing"]}]
        5 JUMPIFEQKNIL                     R0 ; [+3]
        7 MOVE                             R4 R0
        8 JUMPIF                           R4 ; [+1]
        9 LOADB                            R4 0
       10 SETTABLEKS                       R4 R3 K4 ["defaultValueIfMissing"]
       12 CALL                             R1 2 1
       13 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 0
        4 GETTABLEKS                       R3 R0 K0 ["localOverrides"]
        6 GETTABLE                         R2 R3 R1
        7 JUMPIFEQKNIL                     R2 ; [+5]
        9 GETTABLEKS                       R3 R0 K0 ["localOverrides"]
       11 GETTABLE                         R2 R3 R1
       12 RETURN                           R2 1
       13 GETTABLEKS                       R3 R0 K1 ["values"]
       15 GETTABLE                         R2 R3 R1
       16 JUMPIFEQKNIL                     R2 ; [+5]
       18 GETTABLEKS                       R3 R0 K1 ["values"]
       20 GETTABLE                         R2 R3 R1
       21 RETURN                           R2 1
       22 GETTABLEKS                       R2 R0 K2 ["defaultValueIfMissing"]
       24 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 CALL                             R3 2 0
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K0 ["JoinDictionaries"]
        7 GETTABLEKS                       R4 R0 K1 ["localOverrides"]
        9 NEWTABLE                         R5 1 0
       11 SETTABLE                         R2 R5 R1
       12 CALL                             R3 2 1
       13 SETTABLEKS                       R3 R0 K1 ["localOverrides"]
       15 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R2 K1 [pairs]
        2 GETTABLEKS                       R3 R0 K2 ["values"]
        4 CALL                             R2 1 3
        5 FORGPREP_NEXT                    R2
        6 MOVE                             R9 R5
        7 MOVE                             R10 R1
        8 NAMECALL                         R7 R0 K3 ["setLocalOverride"]
       10 CALL                             R7 3 0
       11 FORGLOOP                         R2 2 ; [-6]
       13 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R5 R0 K0 ["localOverrides"]
        2 GETTABLE                         R4 R5 R1
        3 JUMPIFNOTEQKNIL                  R4 ; [+2]
        5 LOADB                            R3 0 +1
        6 LOADB                            R3 1
        7 GETIMPORT                        R4 K3 [string.format]
        9 LOADK                            R5 K4 ["'%s' was never set as a local override"]
       10 MOVE                             R6 R1
       11 CALL                             R4 2 -1
       12 FASTCALL                         ASSERT ; [+2]
       13 GETIMPORT                        R2 K6 [assert]
       15 CALL                             R2 -1 0
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K7 ["RemoveFromDictionary"]
       19 GETTABLEKS                       R3 R0 K0 ["localOverrides"]
       21 MOVE                             R4 R1
       22 CALL                             R2 2 1
       23 SETTABLEKS                       R2 R0 K0 ["localOverrides"]
       25 RETURN                           R0 0

PROTO_8:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["localOverrides"]
        4 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["Immutable"]
        9 CALL                             R0 1 1
       10 DUPCLOSURE                       R1 K6 [PROTO_0]
       11 DUPCLOSURE                       R2 K7 [PROTO_1]
       12 NEWTABLE                         R3 8 0
       14 SETTABLEKS                       R3 R3 K8 ["__index"]
       16 DUPCLOSURE                       R4 K9 [PROTO_2]
       17 CAPTURE                          VAL R3
       18 CAPTURE                          VAL R1
       19 SETTABLEKS                       R4 R3 K10 ["new"]
       21 DUPCLOSURE                       R4 K11 [PROTO_3]
       22 CAPTURE                          VAL R3
       23 SETTABLEKS                       R4 R3 K12 ["mock"]
       25 DUPCLOSURE                       R4 K13 [PROTO_4]
       26 CAPTURE                          VAL R2
       27 SETTABLEKS                       R4 R3 K14 ["get"]
       29 DUPCLOSURE                       R4 K15 [PROTO_5]
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R0
       32 SETTABLEKS                       R4 R3 K16 ["setLocalOverride"]
       34 DUPCLOSURE                       R4 K17 [PROTO_6]
       35 SETTABLEKS                       R4 R3 K18 ["setAllLocalOverrides"]
       37 DUPCLOSURE                       R4 K19 [PROTO_7]
       38 CAPTURE                          VAL R0
       39 SETTABLEKS                       R4 R3 K20 ["clearLocalOverride"]
       41 DUPCLOSURE                       R4 K21 [PROTO_8]
       42 SETTABLEKS                       R4 R3 K22 ["clearAllLocalOverrides"]
       44 RETURN                           R3 1
